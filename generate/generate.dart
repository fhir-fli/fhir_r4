// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';

import 'consts.dart';
import 'fhir_generate_extension.dart';
import 'file_io.dart';
import 'resource_utils.dart';
import 'writable_class.dart';
import 'write_enums.dart';

final Map<String, String> _nameMap = <String, String>{};
final Map<String, Map<String, dynamic>> _codesAndVS =
    <String, Map<String, dynamic>>{};
final Set<String> _valueSets = <String>{};

Future<void> main() async {
  await extract();
  _codesAndVS.addAll(codesAndValueSets(valueSetPath));
  _nameMap.addAll(populateNameMap(fhirSchemaPath));
  _classesFromStructureDefinitions();
  exportFiles();
  writeEnums(_valueSets, _codesAndVS, _nameMap);
  generateResourceUtils();
  deleteDirectories();
}

void _classesFromStructureDefinitions() {
  final List<String> structureDefinitionBundles = <String>[
    resourceProfilesPath,
    typeProfilesPath,
  ];

  structureDefinitionBundles.forEach(_generateFromBundle);
}

void _generateFromBundle(String file) {
  final String bundleString = File(file).readAsStringSync();
  final Map<String, dynamic> bundle =
      jsonDecode(bundleString) as Map<String, dynamic>;

  for (final dynamic entry in bundle['entry'] as List<dynamic>) {
    if (_isValidStructureDefinition(entry)) {
      _generateFromSd(
          (entry as Map<String, dynamic>)['resource'] as Map<String, dynamic>);
    }
  }
}

void _generateFromSd(Map<String, dynamic> sd) {
  final String className = sd['name'] as String;
  if (!className.shouldGenerate) {
    return;
  }
  final Map<String, WritableClass> classes =
      _buildWritableClasses(sd, className);
  final StringBuffer buffer = _generateClassBuffer(classes);

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

    if ((element['path'] as String).toLowerCase().contains('binary')) {
      print(element['path']);
    }

    // Handle ValueSets if binding is present
    if (element['binding'] != null &&
        (element['binding'] as Map<String, dynamic>)['valueSet'] != null) {
      final String fullUrl =
          (element['binding'] as Map<String, dynamic>)['valueSet'] as String;
      final String valueSetUrl = fullUrl.splitOffVersion;
      if (_codesAndVS.keys.contains(valueSetUrl)) {
        _valueSets.add(valueSetUrl);
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
      // Generate a base class name
      final String baseClassName =
          path.split('.').first + path.split('.').last.capitalize;

      // Check for duplicate class names and add a number if necessary
      String newClassName = baseClassName;
      int classCount = 1;

      // Keep checking for existing class names, including those with numbers
      while (classes.values
          .any((WritableClass c) => c.className == newClassName)) {
        // Increment class name with a number to avoid duplication
        newClassName = baseClassName + classCount.toString();
        classCount++;
      }

      // Create the new class
      classes[path] = WritableClass(
        className: newClassName == 'EvidenceVariable'
            ? 'Evidencevariable'
            : newClassName,
        classPath: path,
        comment: element['definition'] as String? ?? '',
        isBackboneElement: true,
      );
    } else if ((className.isDataType ||
            className.isBackboneType ||
            className.isQuantity) &&
        elementDefinition['type'] is List<dynamic> &&
        (elementDefinition['type'] as List<dynamic>).length == 1 &&
        ((elementDefinition['type'] as List<dynamic>).first
                as Map<String, dynamic>)['code'] ==
            'Element') {
      // Generate a base class name
      final String baseClassName =
          path.split('.').first + path.split('.').last.capitalize;

      // Check for duplicate class names and add a number if necessary
      String newClassName = baseClassName;
      int classCount = 1;

      // Keep checking for existing class names, including those with numbers
      while (classes.values
          .any((WritableClass c) => c.className == newClassName)) {
        // Increment class name with a number to avoid duplication
        newClassName = baseClassName + classCount.toString();
        classCount++;
      }

      // Create the new class for Element
      classes[path] = WritableClass(
        className: newClassName,
        classPath: path,
        comment: element['definition'] as String? ?? '',
        isElement: true,
      );
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
          throw Exception(
              'No type found for $path ${elementDefinition['contentReference']}');
        }
        classes[classPath]!.addField(Field(
          name: fieldName,
          type: referenceFieldType,
          comment: element['definition'] as String? ?? '',
          path: path,
          isRequired: isRequired,
          isList: isList,
        ));
      }
    } else if (types.length != 1) {
      for (final dynamic type in types) {
        final String actualType =
            (type as Map<String, dynamic>)['code'] as String;
        classes[classPath]!.addField(Field(
          name: fieldName.replaceAll('[x]', actualType.capitalize),
          type: actualType,
          comment: element['definition'] as String? ?? '',
          path: path,
          isRequired: isRequired,
          isList: isList,
        ));
      }
    } else {
      String fieldType =
          (types.first as Map<String, dynamic>)['code'] as String;
      if (fieldType == 'BackboneElement') {
        fieldType = path.split('.').first + path.split('.').last.capitalize;
      }
      classes[classPath]!.addField(Field(
        name: fieldName,
        type: fieldType,
        comment: element['definition'] as String? ?? '',
        path: path,
        isRequired: isRequired,
        isList: isList,
      ));
    }
  }

  return classes;
}

StringBuffer _generateClassBuffer(Map<String, WritableClass> classes) {
  final StringBuffer buffer = StringBuffer();

  buffer.writeln("import 'dart:convert';");
  // buffer.writeln("import 'package:dataclass/dataclass.dart';");
  // buffer.writeln("import 'package:json/json.dart';");
  buffer.writeln("import 'package:json_annotation/json_annotation.dart';");
  buffer.writeln("import 'package:objectbox/objectbox.dart';");
  buffer.writeln("import 'package:yaml/yaml.dart';");
  buffer.writeln("\nimport '../../../$fhirVersion.dart';\n");

  final String? writeFileName =
      classes.values.first.className.fileNameFromClassName(_nameMap);

  buffer.writeln("part '${writeFileName?.properFileName}.g.dart';\n");

  for (final WritableClass writableClass in classes.values) {
    _writeClassHeader(buffer, writableClass);
    _writeConstructor(buffer, writableClass);
    _writeFields(buffer, writableClass);
    _writeClassFooter(buffer, writableClass);
  }

  return buffer;
}

void _writeClassHeader(StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;

  final String formattedComment = formatComment(writableClass.comment);
  buffer.writeln('/// [${writableName.fhirToDartTypes}] $formattedComment');

  // buffer.writeln('@JsonCodable()');
  // buffer.writeln('@Data()');
  buffer.writeln('@JsonSerializable()');
  // buffer.writeln('@Entity()');

  final String extendsClause = writableClass.extendsClause;
  buffer.writeln('class ${writableName.fhirToDartTypes} $extendsClause {');
}

void _writeFields(StringBuffer buffer, WritableClass writableClass) {
  buffer.writeln('  @Id()');
  buffer.writeln('@JsonKey(ignore: true)');
  buffer.writeln('  int dbId = 0;');

  for (final Field field in writableClass.fields) {
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
      buffer.writeln("@JsonKey(name: '$originalFieldName')");
      buffer.writeln(
          '  final $fieldDeclaration ${field.name.fhirFieldToDartName};');

      // Handle associated Element fields with '_primitiveFieldName'
      if (field.type.isPrimitiveType && field.name != 'id') {
        final String elementFieldName = '_$originalFieldName';
        buffer.writeln("@JsonKey(name: '$elementFieldName')");
        buffer.writeln(field.isList
            ? '  final List<Element>? ${field.name}Element;'
            : '  final Element? ${field.name}Element;');
      }
    }
  }
}

void _writeConstructor(StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;

  buffer.writeln('\n  ${writableName.fhirToDartTypes}({');
  for (final Field field in writableClass.fields) {
    if (field.name != writableName) {
      buffer.writeln('    ${field.isRequired ? 'required ' : ''}'
          '${field.isSuper ? 'super' : 'this'}.${field.name.fhirFieldToDartName},');
      if (field.type.isPrimitiveType && field.name != 'id') {
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
        '  }) : super(resourceType: R4ResourceType.${writableName.fhirToDartTypes},');
    buffer.writeln("      fhirType: '${writableName.fhirToDartTypes}');");
  } else if (writableName == 'Quantity') {
    buffer.writeln(" super.fhirType = 'Quantity' });");
  } else {
    buffer
        .writeln("  }) : super(fhirType: '${writableName.fhirToDartTypes}');");
  }
}

void _writeClassFooter(StringBuffer buffer, WritableClass writableClass) {
  final String writableName = writableClass.className;

  // Include fromJson constructor for JsonSerializable
  buffer.writeln('''
  factory ${writableName.fhirToDartTypes}.fromJson(Map<String, dynamic> json) =>
      _\$${writableName.fhirToDartTypes}FromJson(json);
  ''');

  // Include toJson method for JsonSerializable
  buffer.writeln('@override');
  buffer.writeln('''
  Map<String, dynamic> toJson() => _\$${writableName.fhirToDartTypes}ToJson(this);
  ''');

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
    if (field.type.isPrimitiveType && field.name != 'id') {
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
    if (field.type.isPrimitiveType && field.name != 'id') {
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

void writeToFile(
    StringBuffer buffer, String className, Map<String, String> nameMap) {
  String? writeFileName = className.fileNameFromClassName(nameMap);
  if (writeFileName == null) {
    print('Not writing: $className');
    return;
  }

  writeFileName = writeFileName.properFileName;
  final String filePath =
      '$fhirDirectory${className.isResource ? "resource_types" : "data_types"}/$writeFileName.dart';
  File(filePath).writeAsStringSync(buffer.toString());
}

Map<String, Map<String, dynamic>> codesAndValueSets(String valueSetPath) {
  final Map<String, Map<String, dynamic>> codesAndVS =
      <String, Map<String, dynamic>>{};

  final String codesString = File(valueSetPath).readAsStringSync();
  final Map<String, dynamic> bundle =
      jsonDecode(codesString) as Map<String, dynamic>;

  for (final dynamic entry in (bundle['entry'] as List<dynamic>)) {
    if ((entry as Map<String, dynamic>)['resource'] != null &&
            entry['resource'] is Map<String, dynamic> &&
            (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
                'ValueSet' ||
        (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
            'CodeSystem') {
      codesAndVS[(entry['resource'] as Map<String, dynamic>)['url'] as String] =
          entry['resource'] as Map<String, dynamic>;
      codesAndVS[(entry['fullUrl'] as String).splitOffVersion] =
          entry['resource'] as Map<String, dynamic>;
    }
  }
  return codesAndVS;
}

Map<String, String> populateNameMap(String fhirSchemaPath) {
  final Map<String, String> nameMap = <String, String>{};
  final String fileString = File(fhirSchemaPath).readAsStringSync();
  final Map<String, dynamic> jsonSchema =
      jsonDecode(fileString) as Map<String, dynamic>;

  final Map<String, dynamic> definitions =
      jsonSchema['definitions'] as Map<String, dynamic>;
  definitions.forEach((String key, dynamic value) {
    nameMap[key.toLowerCase().replaceAll('_', '')] = key;
  });
  return nameMap;
}

String formatComment(String comment) {
  // Clean up existing comment prefixes
  comment = comment.replaceAll(RegExp(r'^///\s*'), '').trim();

  // Split into lines, handle line length limits, and add '///' prefix
  final List<String> commentLines = comment.split('\n').expand((String line) {
    final List<String> words = line.split(RegExp(r'\s+'));
    final List<String> formattedLines = <String>[];
    String currentLine = '/// ';

    for (final String word in words) {
      if (currentLine.length + word.length + 1 > 80) {
        formattedLines.add(currentLine.trim());
        currentLine = '/// $word ';
      } else {
        currentLine += '$word ';
      }
    }
    formattedLines.add(currentLine.trim());
    return formattedLines;
  }).toList();

  return commentLines.join('\n');
}
