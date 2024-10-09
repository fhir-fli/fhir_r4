import 'consts.dart';
import 'fhir_generate_extension.dart';
import 'utility.dart';
import 'writable_class.dart';

StringBuffer generateClassBuffer(
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
              "    ${jsonFieldName}Element: json['$jsonElementFieldName'] != null ? (json['$jsonElementFieldName'] as List<dynamic>).map<Element>((dynamic v) => Element.fromJson(v as Map<String, dynamic>)).toList() : null,");
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
