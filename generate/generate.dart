// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';

import 'consts.dart';
import 'fhir_generate_extension.dart';
import 'file_io.dart';
import 'parse_search_parameters.dart';
import 'resource_utils.dart';
import 'utility.dart';
import 'writable_class.dart';
import 'write_enums.dart';

final Map<String, String> _nameMap = <String, String>{};
final Map<String, Map<String, dynamic>> _codesAndVS =
    <String, Map<String, dynamic>>{};
final Set<String> _valueSets = <String>{};

Future<void> main() async {
  await extract();
  _codesAndVS.addAll(codesAndValueSets(valueSetPath, examplesPath));
  _nameMap.addAll(populateNameMap(fhirSchemaPath));
  _classesFromStructureDefinitions();
  exportFiles();
  writeEnums(_valueSets, _codesAndVS, _nameMap);
  generateResourceUtils();
  parseSearchParameters();
  deleteDirectories();
  _copyFiles();
}

void _copyFiles() {
  final Directory source = Directory('copy_files');
  if (source.existsSync()) {
    final List<FileSystemEntity> files = source.listSync(recursive: true);
    for (final FileSystemEntity file in files) {
      if (file is File) {
        final String fileName = file.path.split('copy_files').last;
        file.copySync('$fhirDirectory$fileName');
      }
    }
  }
}

void _classesFromStructureDefinitions() {
  final List<String> definitionBundles = _getStructureDefinitionBundles();
  final StringBuffer fieldMapBuffer = StringBuffer();

  for (final String file in definitionBundles) {
    _processBundle(file, fieldMapBuffer);
  }

  _writeFhirFieldMap(fieldMapBuffer);
}

List<String> _getStructureDefinitionBundles() {
  return <String>[resourceProfilesPath, typeProfilesPath];
}

void _processBundle(String file, StringBuffer fieldMapBuffer) {
  final String content = File(file).readAsStringSync();
  final Map<String, dynamic> bundle =
      jsonDecode(content) as Map<String, dynamic>;

  for (final dynamic entry in bundle['entry'] as List<dynamic>) {
    if (_isValidStructureDefinition(entry)) {
      _generateFromSd(
          (entry as Map<String, dynamic>)['resource'] as Map<String, dynamic>,
          fieldMapBuffer);
    }
  }
}

void _writeFhirFieldMap(StringBuffer fhirFieldMapBuffer) {
  // Add the opening lines for fhirFieldMap
  final StringBuffer finalBuffer = StringBuffer();
  finalBuffer.writeln('class FhirField {');
  finalBuffer.writeln('  const FhirField(this.isList, this.type);');
  finalBuffer.writeln('  final bool isList;');
  finalBuffer.writeln('  final String type;');
  finalBuffer.writeln('}\n');

  finalBuffer.writeln('/// Field map for FHIR structures');
  finalBuffer.writeln(
      'final Map<String, Map<String, FhirField>> fhirFieldMap = <String, Map<String, FhirField>>{');

  // Add the content from the buffer passed during processing
  finalBuffer.writeln(fhirFieldMapBuffer.toString());

  // Close the map
  finalBuffer.writeln('};');

  // Write the result to a file (e.g., fhir_field_map.dart)
  File('$fhirDirectory/utils/fhir_field_map.dart')
      .writeAsStringSync(finalBuffer.toString());
}

void _generateFromSd(Map<String, dynamic> sd, StringBuffer fhirFieldMapBuffer) {
  final String className = sd['name'] as String;
  if (!className.shouldGenerate) {
    return;
  }
  final Map<String, WritableClass> classes =
      _buildWritableClasses(sd, className);
  final StringBuffer buffer = _generateClassBuffer(classes, fhirFieldMapBuffer);

  writeToFile(buffer, className, _nameMap);
}

Map<String, WritableClass> _buildWritableClasses(
    Map<String, dynamic> sd, String className) {
  final Map<String, WritableClass> classes = <String, WritableClass>{};

  final List<dynamic> elements =
      (sd['snapshot'] as Map<String, dynamic>)['element'] as List<dynamic>;

  final Map<String, dynamic>? rootElement = elements.firstWhereOrNull(
          (dynamic element) =>
              (element as Map<String, dynamic>)['path'] == className)
      as Map<String, dynamic>?;

  classes[className] = WritableClass(
    classPath: className,
    className: className,
    comment: rootElement?['definition'] as String? ?? '',
    isResource: className.isResource,
    isDomainResource: className.isDomainResource,
    isDataType: className.isDataType,
    isQuantity: className.isQuantity,
    isBackboneType: className.isBackboneType,
  );

  for (final dynamic elementDefinition in elements) {
    final Map<String, dynamic> element =
        elementDefinition as Map<String, dynamic>;
    String? enumName;

    // Handle ValueSets if binding is present
    if (element['binding'] != null &&
        (element['binding'] as Map<String, dynamic>)['valueSet'] != null) {
      final String fullUrl =
          (element['binding'] as Map<String, dynamic>)['valueSet'] as String;
      final String valueSetUrl = fullUrl.splitOffVersion;
      if (_codesAndVS.keys.contains(valueSetUrl)) {
        _valueSets.add(valueSetUrl);
        final String newEnumName = getEnumNameFromValueSet(
            valueSetUrl, _codesAndVS[valueSetUrl]!, _nameMap);
        if (!badValueSets.contains(newEnumName)) {
          enumName = newEnumName;
        }
      } else {
        print('Error: $valueSetUrl');
      }
    }

    final String path = elementDefinition['path'] as String;
    final String classPath = path.findLongestMatch(classes.keys.toList());

    if (className.isResource &&
        elementDefinition['type'] is List<dynamic> &&
        (elementDefinition['type'] as List<dynamic>).length == 1 &&
        ((elementDefinition['type'] as List<dynamic>).first
                as Map<String, dynamic>)['code'] ==
            'BackboneElement') {
      _generateBackboneOrElementTypeClass(
          classes, path, className, element, true);
    } else if ((className.isDataType ||
            className.isBackboneType ||
            className.isQuantity) &&
        elementDefinition['type'] is List<dynamic> &&
        (elementDefinition['type'] as List<dynamic>).length == 1 &&
        ((elementDefinition['type'] as List<dynamic>).first
                as Map<String, dynamic>)['code'] ==
            'Element') {
      _generateBackboneOrElementTypeClass(
          classes, path, className, element, false);
    }

    final List<dynamic>? types = elementDefinition['type'] as List<dynamic>?;
    final String fieldName = path.split('.').last;
    final bool isRequired =
        (int.tryParse(elementDefinition['min']?.toString() ?? '') ?? 0) >= 1 ||
            elementDefinition['min'] == '+';
    final bool isList = elementDefinition['max'] == '*';

    if (types == null) {
      if (elementDefinition['path'] != className) {
        String? referenceFieldType;
        final String? contentReference =
            (elementDefinition['contentReference'] as String?)
                ?.replaceFirst('#', '');
        for (final WritableClass writableClass in classes.values) {
          referenceFieldType = writableClass.fields
              .firstWhereOrNull((Field field) => field.path == contentReference)
              ?.type;
          if (referenceFieldType != null) {
            break;
          }
        }

        if (referenceFieldType == null) {
          print(
              'Warning: No type found for $path ${elementDefinition['contentReference']}');
          continue; // Skip adding this field if type not found.
        }
        final String newTypeString = referenceFieldType.isPrimitiveType
            ? enumName ?? referenceFieldType
            : referenceFieldType;
        classes[classPath]!.addField(Field(
          name: fieldName,
          type: newTypeString,
          comment: element['definition'] as String? ?? '',
          needsElement: referenceFieldType.isPrimitiveType,
          isEnum: newTypeString == enumName,
          path: path,
          isRequired: isRequired,
          isList: isList,
        ));
      }
    } else if (types.length != 1) {
      for (final dynamic type in types) {
        final String actualType =
            (type as Map<String, dynamic>)['code'] as String;
        final String newTypeString =
            actualType.isPrimitiveType ? enumName ?? actualType : actualType;
        classes[classPath]!.addField(Field(
          name: fieldName.replaceAll('[x]', actualType.capitalize),
          type: newTypeString,
          comment: element['definition'] as String? ?? '',
          needsElement: actualType.isPrimitiveType,
          isEnum: newTypeString == enumName,
          path: path,
          isRequired: !fieldName.contains('[x]') && isRequired,
          isList: isList,
        ));
      }
    } else {
      String fieldType =
          (types.first as Map<String, dynamic>)['code'] as String;
      if ((className.isResource && fieldType == 'BackboneElement') ||
          ((className.isBackboneType ||
                  className.isDataType ||
                  className.isQuantity) &&
              fieldType == 'Element')) {
        fieldType = path.split('.').first + path.split('.').last.capitalize;
      }
      final String newTypeString =
          fieldType.isPrimitiveType ? enumName ?? fieldType : fieldType;
      classes[classPath]!.addField(Field(
        name: fieldName,
        type: newTypeString,
        comment: element['definition'] as String? ?? '',
        needsElement: fieldType.isPrimitiveType,
        isEnum: newTypeString == enumName,
        path: path,
        isRequired: isRequired,
        isList: isList,
      ));
    }
  }

  return classes;
}

void _generateBackboneOrElementTypeClass(
    Map<String, WritableClass> classes,
    String path,
    String className,
    Map<String, dynamic> element,
    bool isBackboneElement) {
  // Generate a base class name
  final String baseClassName =
      path.split('.').first + path.split('.').last.capitalize;

  // Check for duplicate class names and add a number if necessary
  String newClassName = baseClassName;
  int classCount = 1;

  // Keep checking for existing class names, including those with numbers
  while (classes.values.any((WritableClass c) => c.className == newClassName)) {
    // Increment class name with a number to avoid duplication
    newClassName = baseClassName + classCount.toString();
    classCount++;
  }

  // Create the new class for BackboneElement or Element
  classes[path] = WritableClass(
    className:
        newClassName == 'EvidenceVariable' ? 'Evidencevariable' : newClassName,
    classPath: path,
    comment: element['definition'] as String? ?? '',
    isBackboneElement: isBackboneElement,
    isElement: !isBackboneElement,
  );
}

StringBuffer _generateClassBuffer(
    Map<String, WritableClass> classes, StringBuffer fhirFieldMapBuffer) {
  final StringBuffer buffer = StringBuffer();

  buffer.writeln("import 'dart:convert';");
  // buffer.writeln("import 'package:json_annotation/json_annotation.dart';");
  buffer.writeln("import 'package:objectbox/objectbox.dart';");
  buffer.writeln("import 'package:yaml/yaml.dart';");
  buffer.writeln("\nimport '../../../$fhirVersion.dart';\n");

  for (final WritableClass writableClass in classes.values) {
    _writeClassHeader(buffer, writableClass, fhirFieldMapBuffer);
    _writeConstructor(buffer, writableClass);
    _writeFields(buffer, writableClass, fhirFieldMapBuffer);
    _writeToJson(buffer, writableClass);
    _writeFromJson(buffer, writableClass);
    _writeClassFooter(buffer, writableClass);
  }

  return buffer;
}

Map<String, Map<String, dynamic>> codesAndValueSets(
  String valueSetPath,
  String examplesPath,
) {
  final Map<String, Map<String, dynamic>> codesAndVS =
      <String, Map<String, dynamic>>{};

  final String codesString = File(valueSetPath).readAsStringSync();
  final Map<String, dynamic> bundle =
      jsonDecode(codesString) as Map<String, dynamic>;

  for (final dynamic entry in bundle['entry'] as List<dynamic>) {
    if ((entry as Map<String, dynamic>)['resource'] != null &&
        entry['resource'] is Map<String, dynamic> &&
        ((entry['resource'] as Map<String, dynamic>)['resourceType'] ==
                'ValueSet' ||
            (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
                'CodeSystem')) {
      codesAndVS[(entry['resource'] as Map<String, dynamic>)['url'] as String] =
          entry['resource'] as Map<String, dynamic>;
      codesAndVS[(entry['fullUrl'] as String).splitOffVersion] =
          entry['resource'] as Map<String, dynamic>;
    }
  }

  final List<File> files = Directory(examplesPath)
      .listSync(recursive: true)
      .whereType<File>()
      .where((File file) =>
          file.path.endsWith('.json') &&
          (file.path.toLowerCase().contains('valueset') ||
              file.path.toLowerCase().contains('codesystem')))
      .toList();
  for (final File file in files) {
    final String examplesString = file.readAsStringSync();
    final Map<String, dynamic> entry =
        jsonDecode(examplesString) as Map<String, dynamic>;
    if ((entry['resourceType'] == 'ValueSet' ||
            entry['resourceType'] == 'CodeSystem') &&
        !codesAndVS.containsKey(entry['url'] as String)) {
      codesAndVS[entry['url'] as String] = entry;
    }
  }

  final List<File> ndfiles = Directory(ndJsonExamplesPath)
      .listSync(recursive: true)
      .whereType<File>()
      .where((File file) =>
          file.path.endsWith('.ndjson') &&
          (file.path.toLowerCase().contains('valueset') ||
              file.path.toLowerCase().contains('codesystem')))
      .toList();
  for (final File file in ndfiles) {
    final String examplesString = file.readAsStringSync();
    final List<String> entries = examplesString.split('\n');
    for (final String entryString in entries) {
      final Map<String, dynamic> entry =
          jsonDecode(entryString) as Map<String, dynamic>;
      if ((entry['resourceType'] == 'ValueSet' ||
              entry['resourceType'] == 'CodeSystem') &&
          (entry['url'] is String) &&
          !codesAndVS.containsKey(entry['url'] as String)) {
        codesAndVS[entry['url'] as String] = entry;
      }
    }
  }

  return codesAndVS;
}

void _writeClassHeader(StringBuffer buffer, WritableClass writableClass,
    StringBuffer fhirFieldMapBuffer) {
  final String writableName = writableClass.className;

  final String formattedComment = formatComment(writableClass.comment);
  buffer.writeln('/// [${writableName.fhirToDartTypes}] $formattedComment');

  // buffer.writeln('@JsonCodable()');
  // buffer.writeln('@Data()');
  // buffer.writeln('@JsonSerializable()');
  // buffer.writeln('@Entity()');

  final String extendsClause = writableClass.extendsClause;
  buffer.writeln('class ${writableName.fhirToDartTypes} $extendsClause {');

  // Add to the fhirFieldMapBuffer
  fhirFieldMapBuffer.writeln("'$writableName': <String, FhirField>{");
}

void _writeFields(StringBuffer buffer, WritableClass writableClass,
    StringBuffer fhirFieldMapBuffer) {
  buffer.writeln('  @Id()');
  // buffer.writeln('@JsonKey(ignore: true)');
  buffer.writeln('  int dbId = 0;');

  for (final Field field in writableClass.fields) {
    // Add field details to fhirFieldMapBuffer
    final bool isList = field.isList;
    final String fieldType = field.type.fhirToDartTypes;
    fhirFieldMapBuffer
        .writeln("'${field.name}': const FhirField($isList, '$fieldType'),");
    if (field.needsElement && field.name != 'id') {
      fhirFieldMapBuffer
          .writeln("'_${field.name}': const FhirField($isList, 'Element'),");
    }
    // Handle fields that are not super fields
    if (!field.isSuper) {
      final String fieldDeclaration = field.isList
          ? 'List<${field.type.fhirToDartTypes}>${field.isRequired ? '' : '?'}'
          : '${field.type.fhirToDartTypes}${field.isRequired ? '' : '?'}';

      // Format field comment
      final String formattedComment = formatComment(field.comment);

      buffer
          .writeln('/// [${field.name.fhirFieldToDartName}] $formattedComment');

      // Add @JsonKey annotation with the original field name
      String originalFieldName = field.path.split('.').last;
      originalFieldName = originalFieldName.contains('[x]')
          ? field.name.fhirFieldToDartName
          : originalFieldName;
      // buffer.writeln("@JsonKey(name: '$originalFieldName')");
      buffer.writeln(
          '  final $fieldDeclaration ${field.name.fhirFieldToDartName};');

      // Handle associated Element fields with '_primitiveFieldName'
      if (field.needsElement && field.name != 'id') {
        // final String elementFieldName = '_$originalFieldName';
        // buffer.writeln("@JsonKey(name: '$elementFieldName')");
        buffer.writeln(field.isList
            ? '  final List<Element>? ${field.name}Element;'
            : '  final Element? ${field.name}Element;');
      }
    }
  }

  // Close the class definition in fhirFieldMapBuffer
  fhirFieldMapBuffer.writeln('},');
}

void _writeConstructor(StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;

  buffer.writeln('\n  ${writableName.fhirToDartTypes}({');
  for (final Field field in writableClass.fields) {
    if (field.name != writableName) {
      buffer.writeln('    ${field.isRequired ? 'required ' : ''}'
          '${field.isSuper ? 'super' : 'this'}.${field.name.fhirFieldToDartName},');
      if (field.needsElement && field.name != 'id') {
        buffer.writeln(
            '${field.isSuper ? 'super' : 'this'}.${field.name}Element,');
      }
    }
  }

  // Add FhirBase-specific fields
  buffer.writeln('    super.userData,');
  buffer.writeln('    super.formatCommentsPre,');
  buffer.writeln('    super.formatCommentsPost,');
  buffer.writeln('    super.annotations,');
  buffer.writeln('    super.children,');
  buffer.writeln('    super.namedChildren,');

  // Close constructor
  if (writableName.isResource && writableClass.isResource) {
    buffer.writeln(
        '  }) : super(resourceType: R4ResourceType.${writableName.fhirToDartTypes});\n');
    buffer.writeln('@override');
    buffer.writeln(
        "      String get fhirType => '${writableName.fhirToDartTypes}';\n");
  } else if (writableName == 'Quantity') {
    buffer.writeln('});\n');
    buffer.writeln('@override');
    buffer.writeln("String get fhirType => 'Quantity';\n");
  } else {
    buffer.writeln('  });\n');
    buffer.writeln('@override');
    buffer.writeln(
        "  String get fhirType => '${writableName.fhirToDartTypes}';\n");
  }
}

void _writeToJson(StringBuffer buffer, WritableClass writableClass) {
  buffer.writeln('@override');
  buffer.writeln('Map<String, dynamic> toJson() {');
  buffer.writeln('  final Map<String, dynamic> json = <String, dynamic>{};');
  if (writableClass.isResource) {
    buffer.writeln("  json['resourceType'] = resourceType.toJson();");
  }

  for (final Field field in writableClass.fields) {
    final String fieldName = field.name.fhirFieldToDartName;
    final String jsonFieldName = fieldName.endsWith('_')
        ? fieldName.substring(0, fieldName.length - 1)
        : fieldName;
    final String elementFieldName = '_$fieldName';
    final String jsonElementFieldName = elementFieldName.endsWith('_')
        ? elementFieldName.substring(0, elementFieldName.length - 1)
        : elementFieldName;
    final String fieldType = field.type.fhirToDartTypes;

    if (field.isList) {
      // Handle lists
      if (field.isRequired) {
        if (field.type.isPrimitiveType) {
          buffer.writeln(
              "    json['$jsonFieldName'] = $fieldName.map(($fieldType v) => v.toJson()).toList();");
        } else {
          buffer.writeln(
              "    json['$jsonFieldName'] = $fieldName.map<dynamic>(($fieldType v) => v.toJson()).toList();");
        }

        // Add Element field for list of primitives
        if (field.type.isPrimitiveType && field.needsElement) {
          buffer.writeln(
              '   if (${jsonFieldName}Element != null && ${jsonFieldName}Element!.isNotEmpty) {');
          buffer.writeln(
              "    json['$jsonElementFieldName'] = ${jsonFieldName}Element!.map((Element v) => v.toJson()).toList();}");
        }
      } else {
        buffer.writeln('  if ($fieldName != null && $fieldName!.isNotEmpty) {');
        if (field.type.isPrimitiveType) {
          buffer.writeln(
              "    json['$jsonFieldName'] = $fieldName!.map(($fieldType v) => v.toJson()).toList();");
        } else {
          buffer.writeln(
              "    json['$jsonFieldName'] = $fieldName!.map<dynamic>(($fieldType v) => v.toJson()).toList();");
        }
        buffer.writeln('  }');

        // Add Element field for optional list of primitives
        if (field.type.isPrimitiveType && field.needsElement) {
          buffer.writeln(
              '  if (${jsonFieldName}Element != null && ${jsonFieldName}Element!.isNotEmpty) {');
          buffer.writeln(
              "    json['$jsonElementFieldName'] = ${jsonFieldName}Element!.map((Element v) => v.toJson()).toList();}");
        }
      }
    } else {
      // Handle single non-list fields
      if (field.isRequired) {
        buffer.writeln("    json['$jsonFieldName'] = $fieldName.toJson();");

        // Add Element field for primitive fields
        if (field.type.isPrimitiveType && field.needsElement) {
          buffer.writeln('    if(${jsonFieldName}Element != null){');
          buffer.writeln(
              "    json['$jsonElementFieldName'] = ${jsonFieldName}Element!.toJson();}");
        }
      } else {
        if (field.type.isPrimitiveType) {
          buffer.writeln('  if ($fieldName?.value != null) {');
          buffer.writeln("    json['$jsonFieldName'] = $fieldName!.toJson();");
        } else {
          buffer.writeln('  if ($fieldName != null) {');
          buffer.writeln("    json['$jsonFieldName'] = $fieldName!.toJson();");
        }
        buffer.writeln('  }');

        // Add Element field for optional primitive fields
        if (field.type.isPrimitiveType && field.needsElement) {
          buffer.writeln('  if (${jsonFieldName}Element != null) {');
          buffer.writeln(
              "    json['$jsonElementFieldName'] = ${jsonFieldName}Element!.toJson();");
          buffer.writeln('  }');
        }
      }
    }
  }

  buffer.writeln('  return json;');
  buffer.writeln('}');
}

void _writeFromJson(StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;

  buffer.writeln(
      'factory ${writableName.fhirToDartTypes}.fromJson(Map<String, dynamic> json) {');
  buffer.writeln('  return ${writableName.fhirToDartTypes}(');

  for (final Field field in writableClass.fields) {
    final String fieldName = field.name.fhirFieldToDartName;
    final String jsonFieldName = fieldName.endsWith('_')
        ? fieldName.substring(0, fieldName.length - 1)
        : fieldName;
    final String elementFieldName = '_$fieldName';
    final String jsonElementFieldName = elementFieldName.endsWith('_')
        ? elementFieldName.substring(0, elementFieldName.length - 1)
        : elementFieldName;

    if (field.isList) {
      // Handle lists with proper casting and types
      if (field.isRequired) {
        buffer.writeln(
            "    $fieldName: (json['$jsonFieldName'] as List<dynamic>).map<${field.type.fhirToDartTypes}>((dynamic v) => ${field.type.fhirToDartTypes}.fromJson(v as ${field.type.isPrimitiveType || field.isEnum ? "dynamic" : "Map<String, dynamic>"})).toList(),");

        // Add Element field for list of primitives
        if ((field.type.isPrimitiveType || field.isEnum) &&
            field.needsElement &&
            fieldName != 'id') {
          buffer.writeln(
              "    ${jsonFieldName}Element: (json['$jsonElementFieldName'] as List<dynamic>).map<Element>((dynamic v) => Element.fromJson(v as Map<String, dynamic>)).toList(),");
        }
      } else {
        buffer.writeln(
            "    $fieldName: json['$jsonFieldName'] != null ? (json['$jsonFieldName'] as List<dynamic>).map<${field.type.fhirToDartTypes}>((dynamic v) => ${field.type.fhirToDartTypes}.fromJson(v as ${field.type.isPrimitiveType || field.isEnum ? "dynamic" : "Map<String, dynamic>"})).toList() : null,");

        // Add Element field for optional list of primitives
        if ((field.type.isPrimitiveType || field.isEnum) &&
            field.needsElement &&
            fieldName != 'id') {
          buffer.writeln(
              "    ${jsonFieldName}Element: json['$jsonElementFieldName'] != null ? (json['$jsonElementFieldName'] as List<dynamic>).map<Element>((dynamic v) => Element.fromJson(v as Map<String, dynamic>)).toList() : null,");
        }
      }
    } else {
      // Handle non-list fields
      if (field.isRequired) {
        if (field.type.isPrimitiveType ||
            field.type == 'http://hl7.org/fhirpath/System.String' ||
            field.isEnum) {
          buffer.writeln(
              "    $fieldName: ${field.type.fhirToDartTypes}.fromJson(json['$jsonFieldName']),");
        } else {
          if (fieldName == 'div') {
            print('fieldName: $fieldName');
            print(field.isList);
            print(field.isRequired);
            print(field.type);
            print(field.needsElement);
            print(field.isEnum);
            print(field.path);
          }
          buffer.writeln(
              "    $fieldName: ${field.type.fhirToDartTypes}.fromJson(json['$jsonFieldName'] as Map<String, dynamic>),");
        }

        // Add Element field for primitive fields
        if ((field.type.isPrimitiveType || field.isEnum) &&
            field.needsElement &&
            fieldName != 'id') {
          buffer.writeln(
              "    ${jsonFieldName}Element: json['$jsonElementFieldName'] != null ? Element.fromJson(json['$jsonElementFieldName'] as Map<String, dynamic>) : null,");
        }
      } else {
        if (field.type.isPrimitiveType ||
            field.type == 'http://hl7.org/fhirpath/System.String' ||
            field.isEnum) {
          buffer.writeln(
              "    $fieldName: json['$jsonFieldName'] != null ? ${field.type.fhirToDartTypes}.fromJson(json['$jsonFieldName']) : null,");
        } else {
          buffer.writeln(
              "    $fieldName: json['$jsonFieldName'] != null ? ${field.type.fhirToDartTypes}.fromJson(json['$jsonFieldName'] as Map<String, dynamic>) : null,");
        }

        // Add Element field for optional primitive fields
        if ((field.type.isPrimitiveType || field.isEnum) &&
            field.needsElement &&
            fieldName != 'id') {
          buffer.writeln(
              "    ${jsonFieldName}Element: json['$jsonElementFieldName'] != null ? Element.fromJson(json['$jsonElementFieldName'] as Map<String, dynamic>) : null,");
        }
      }
    }
  }

  buffer.writeln('  );');
  buffer.writeln('}');
}

void _writeClassFooter(StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;

  // Include fromJson constructor for JsonSerializable
  // buffer.writeln('''
  // factory ${writableName.fhirToDartTypes}.fromJson(Map<String, dynamic> json) =>
  //     _\$${writableName.fhirToDartTypes}FromJson(json);
  // ''');

  // Include toJson method for JsonSerializable
  // buffer.writeln('@override');
  // buffer.writeln('''
  // Map<String, dynamic> toJson() => _\$${writableName.fhirToDartTypes}ToJson(this);
  // ''');

  buffer.writeln('@override');
  buffer.writeln(
      '${writableName.fhirToDartTypes} clone() => throw UnimplementedError();');

  _writeCopyFunction(buffer, writableClass);

  // Add fromYaml factory
  _writeFromYamlFactory(buffer, writableClass);

  // Add fromJsonString factory
  _writeFromJsonStringFactory(buffer, writableClass);

  buffer.writeln('}\n');
}

void _writeFromYamlFactory(StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;

  buffer.writeln('''
  factory ${writableName.fhirToDartTypes}.fromYaml(dynamic yaml) => yaml is String
      ? ${writableName.fhirToDartTypes}.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ${writableName.fhirToDartTypes}.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              '${writableName.fhirToDartTypes} cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');
  ''');
}

void _writeFromJsonStringFactory(
    StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;

  buffer.writeln('''
  factory ${writableName.fhirToDartTypes}.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ${writableName.fhirToDartTypes}.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed \$json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
  ''');
}

void _writeCopyFunction(StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;

  // Define the copy method
  buffer.writeln('@override');
  buffer.writeln('${writableName.fhirToDartTypes} copyWith({');

  // Add each field as an optional parameter
  for (final Field field in writableClass.fields) {
    final String fieldDeclaration = field.isList
        ? 'List<${field.type.fhirToDartTypes}>?'
        : '${field.type.fhirToDartTypes}?';

    buffer.writeln('    $fieldDeclaration ${field.name.fhirFieldToDartName},');
    if (field.needsElement && field.name != 'id') {
      buffer.writeln(
          '    ${field.isList ? 'List<Element>?' : 'Element?'} ${field.name}Element,');
    }
  }

  // Add FhirBase-specific fields
  buffer.writeln('    Map<String, Object?>? userData,');
  buffer.writeln('    List<String>? formatCommentsPre,');
  buffer.writeln('    List<String>? formatCommentsPost,');
  buffer.writeln('    List<dynamic>? annotations,');
  buffer.writeln('    List<FhirBase>? children,');
  buffer.writeln('    Map<String, FhirBase>? namedChildren,');

  buffer.writeln('  }) {');
  buffer.writeln('    return ${writableName.fhirToDartTypes}(');

  // Assign each field in the constructor
  for (final Field field in writableClass.fields) {
    buffer.writeln('      ${field.name.fhirFieldToDartName}:'
        ' ${field.name.fhirFieldToDartName} ?? this.${field.name.fhirFieldToDartName},');
    if (field.needsElement && field.name != 'id') {
      buffer.writeln(
          '      ${field.name}Element: ${field.name}Element ?? this.${field.name}Element,');
    }
  }

  // Assign FhirBase fields
  buffer.writeln('      userData: userData ?? this.userData,');
  buffer.writeln(
      '      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,');
  buffer.writeln(
      '      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,');
  buffer.writeln('      annotations: annotations ?? this.annotations,');
  buffer.writeln('      children: children ?? this.children,');
  buffer.writeln('      namedChildren: namedChildren ?? this.namedChildren,');

  buffer.writeln('    );');
  buffer.writeln('  }');
}

bool _isValidStructureDefinition(dynamic entry) {
  return entry is Map<String, dynamic> &&
      entry['resource'] != null &&
      entry['resource'] is Map<String, dynamic> &&
      (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
          'StructureDefinition';
}
