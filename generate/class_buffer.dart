// ignore_for_file: lines_longer_than_80_chars, missing_whitespace_between_adjacent_strings

import 'consts.dart';
import 'fhir_generate_extension.dart';
import 'utility.dart';
import 'writable_class.dart';

StringBuffer generateClassBuffer(
  Map<String, WritableClass> classes,
  StringBuffer fhirFieldMapBuffer,
) {
  final buffer = StringBuffer()
    ..writeln("import 'dart:convert';")
    ..writeln("import 'package:$fhirVersion/$fhirVersion.dart';")
    // ..writeln("import 'package:isar/isar.dart';")
    ..writeln("import 'package:yaml/yaml.dart';");

  for (final writableClass in classes.values) {
    _writeClassHeader(buffer, writableClass, fhirFieldMapBuffer);
    _writeConstructor(buffer, writableClass);
    _writeFromJson(buffer, writableClass);
    _writeFromYamlFactory(buffer, writableClass);
    _writeFromJsonStringFactory(buffer, writableClass);
    _writeFields(buffer, writableClass, fhirFieldMapBuffer);
    _writeToJson(buffer, writableClass);
    _writeClassFooter(buffer, writableClass);
  }

  return buffer;
}

void _writeClassHeader(
  StringBuffer buffer,
  WritableClass writableClass,
  StringBuffer fhirFieldMapBuffer,
) {
  final writableName = writableClass.className;

  final formattedComment = formatComment(writableClass.comment);
  buffer.writeln('/// [${writableName.fhirToDartTypes}]\n$formattedComment');
  // ..writeln('@Collection()');

  // buffer.writeln('@JsonCodable()');
  // buffer.writeln('@Data()');
  // buffer.writeln('@JsonSerializable()');
  // buffer.writeln('@Entity()');

  final extendsClause = writableClass.extendsClause;
  buffer.writeln('class ${writableName.fhirToDartTypes} $extendsClause {');

  // Add to the fhirFieldMapBuffer
  fhirFieldMapBuffer.writeln("'$writableName': <String, FhirField>{");
}

void _writeFields(
  StringBuffer buffer,
  WritableClass writableClass,
  StringBuffer fhirFieldMapBuffer,
) {
  final writableName = writableClass.className;
  // buffer
  // ..writeln('  @Id()')
  // .writeln('  Id dbId = Isar.autoIncrement;\n');

  // Close constructor
  if (writableName.isResource && writableClass.isResource) {
    buffer
      ..writeln('@override')
      ..writeln("String get fhirType => '${writableName.fhirToDartTypes}';\n");
  } else if (writableName == 'Quantity') {
    buffer
      ..writeln('@override')
      ..writeln("String get fhirType => 'Quantity';\n");
  } else {
    buffer
      ..writeln('@override')
      ..writeln("String get fhirType => '${writableName.fhirToDartTypes}';\n");
  }

  for (final field in writableClass.fields) {
    // Add field details to fhirFieldMapBuffer
    final isList = field.isList;
    final fieldType = field.type.fhirToDartTypes;
    fhirFieldMapBuffer
        .writeln("'${field.name}': const FhirField($isList, '$fieldType'),");
    if (field.needsElement && field.name != 'id') {
      fhirFieldMapBuffer
          .writeln("'_${field.name}': const FhirField($isList, 'Element'),");
    }
    // Handle fields that are not super fields
    if (!field.isSuper) {
      final fieldDeclaration = field.isList
          ? 'List<${field.type.fhirToDartTypes}>${field.isRequired ? '' : '?'}'
          : '${field.type.fhirToDartTypes}${field.isRequired ? '' : '?'}';

      // Format field comment
      final formattedComment = formatComment(field.comment);

      buffer.writeln(
        '/// [${field.name.fhirFieldToDartName}] \n$formattedComment',
      );

      // Add @JsonKey annotation with the original field name
      var originalFieldName = field.path.split('.').last;
      originalFieldName = originalFieldName.contains('[x]')
          ? field.name.fhirFieldToDartName
          : originalFieldName;
      // buffer.writeln("@JsonKey(name: '$originalFieldName')");
      buffer.writeln(
        '  final $fieldDeclaration ${field.name.fhirFieldToDartName};',
      );

      // Handle associated Element fields with '_primitiveFieldName'
      if (field.needsElement && field.name != 'id') {
        // final String elementFieldName = '_$originalFieldName';
        // buffer.writeln("@JsonKey(name: '$elementFieldName')");
        buffer
          ..writeln(' /// Extensions for [${field.name}]')
          ..writeln(
            field.isList
                ? '  final List<Element>? ${field.name}Element;'
                : '  final Element? ${field.name}Element;',
          );
      }
    }
  }

  // Close the class definition in fhirFieldMapBuffer
  fhirFieldMapBuffer.writeln('},');
}

void _writeConstructor(StringBuffer buffer, WritableClass writableClass) {
  final writableName = writableClass.className;

  buffer
    ..writeln('/// Primary constructor for [${writableName.fhirToDartTypes}]')
    ..writeln('\n  ${writableName.fhirToDartTypes}({');
  for (final field in writableClass.fields) {
    if (field.name != writableName) {
      buffer.writeln('    ${field.isRequired ? 'required ' : ''}'
          '${field.isSuper ? 'super' : 'this'}.${field.name.fhirFieldToDartName},');
      if (field.needsElement && field.name != 'id') {
        buffer
          ..writeln(' /// Extensions for [${field.name}]')
          ..writeln(
            '    ${field.isSuper ? 'super' : 'this'}.${field.name}Element,',
          );
      }
    }
  }

  // Add FhirBase-specific fields
  buffer
    ..writeln('    super.userData,')
    ..writeln('    super.formatCommentsPre,')
    ..writeln('    super.formatCommentsPost,')
    ..writeln('    super.annotations,')
    ..writeln('    super.children,')
    ..writeln('    super.namedChildren,');

  // Close constructor
  if (writableName.isResource && writableClass.isResource) {
    buffer
      ..writeln('  }) : super(')
      ..writeln(
        '        resourceType: R4ResourceType.${writableName.fhirToDartTypes},',
      )
      ..writeln('      );\n');
  } else {
    buffer.writeln('  });\n');
  }
}

void _writeToJson(StringBuffer buffer, WritableClass writableClass) {
  buffer
    ..writeln('@override')
    ..writeln('Map<String, dynamic> toJson() {')
    ..writeln('  final json = <String, dynamic>{};');

  if (writableClass.isResource) {
    buffer.writeln("  json['resourceType'] = resourceType.toJson();");
  }

  for (final field in writableClass.fields) {
    final fieldName = field.name.fhirFieldToDartName;
    final jsonFieldName = fieldName.endsWith('_')
        ? fieldName.substring(0, fieldName.length - 1)
        : fieldName;
    final elementFieldName = '_$fieldName';
    final jsonElementFieldName = elementFieldName.endsWith('_')
        ? elementFieldName.substring(0, elementFieldName.length - 1)
        : elementFieldName;
    final fieldType = field.type.fhirToDartTypes;

    if (field.isList) {
      buffer.writeln(
        field.isRequired
            ? field.type.isPrimitiveType
                ? "    json['$jsonFieldName'] = $fieldName.map("
                    '($fieldType v) => v.toJson()).toList();'
                : "    json['$jsonFieldName'] = $fieldName.map<dynamic>("
                    '($fieldType v) => v.toJson()).toList();'
            : '  if ($fieldName != null && $fieldName!.isNotEmpty) {'
                "    json['$jsonFieldName'] = $fieldName!.map("
                '($fieldType v) => v.toJson()).toList();'
                '  }',
      );

      if (field.type.isPrimitiveType && field.needsElement) {
        buffer
          ..writeln(
            field.isRequired
                ? '   if (${jsonFieldName}Element != null && '
                    '${jsonFieldName}Element!.isNotEmpty) {'
                : '  if (${jsonFieldName}Element != null && '
                    '${jsonFieldName}Element!.isNotEmpty) {',
          )
          ..writeln(
            "    json['$jsonElementFieldName'] = ${jsonFieldName}Element!.map("
            '(Element v) => v.toJson()).toList();'
            '  }',
          );
      }
    } else {
      buffer.writeln(
        field.isRequired
            ? "    json['$jsonFieldName'] = $fieldName.toJson();"
            : field.type.isPrimitiveType
                ? '  if ($fieldName?.value != null) {'
                    "    json['$jsonFieldName'] = $fieldName!.toJson();"
                    '  }'
                : '  if ($fieldName != null) {'
                    "    json['$jsonFieldName'] = $fieldName!.toJson();"
                    '  }',
      );

      if (field.type.isPrimitiveType && field.needsElement) {
        buffer
          ..writeln(
            field.isRequired
                ? '    if(${jsonFieldName}Element != null){'
                : '  if (${jsonFieldName}Element != null) {',
          )
          ..writeln(
            "    json['$jsonElementFieldName'] = "
            '${jsonFieldName}Element!.toJson();'
            '  }',
          );
      }
    }
  }

  buffer
    ..writeln('  return json;')
    ..writeln('}');
}

void _writeFromJson(StringBuffer buffer, WritableClass writableClass) {
  final writableName = writableClass.className;

  buffer
    ..writeln(
      '  /// Factory constructor that accepts [Map<String, dynamic>] as an '
      'argument',
    )
    ..writeln('factory ${writableName.fhirToDartTypes}.fromJson(')
    ..writeln('    Map<String, dynamic> json) {')
    ..writeln('  return ${writableName.fhirToDartTypes}(');

  for (final field in writableClass.fields) {
    final fieldName = field.name.fhirFieldToDartName;
    final jsonFieldName = fieldName.endsWith('_')
        ? fieldName.substring(0, fieldName.length - 1)
        : fieldName;
    final elementFieldName = '_$fieldName';
    final jsonElementFieldName = elementFieldName.endsWith('_')
        ? elementFieldName.substring(0, elementFieldName.length - 1)
        : elementFieldName;

    if (field.isList) {
      buffer.writeln(
        field.isRequired
            ? "    $fieldName: (json['$jsonFieldName'] as List<dynamic>)"
                '.map<${field.type.fhirToDartTypes}>((dynamic v) => '
                '${field.type.fhirToDartTypes}.fromJson(v as '
                "${field.type.isPrimitiveType || field.isEnum ? 'dynamic' : 'Map<String, dynamic>'})).toList(),"
            : "    $fieldName: json['$jsonFieldName'] != null ? "
                "(json['$jsonFieldName'] as List<dynamic>).map<${field.type.fhirToDartTypes}>((dynamic v) => "
                "${field.type.fhirToDartTypes}.fromJson(v as ${field.type.isPrimitiveType || field.isEnum ? 'dynamic' : 'Map<String, dynamic>,'}),).toList() : null,",
      );

      if ((field.type.isPrimitiveType || field.isEnum) &&
          field.needsElement &&
          fieldName != 'id') {
        buffer.writeln(
          "    ${jsonFieldName}Element: json['$jsonElementFieldName'] != null ? "
          "(json['$jsonElementFieldName'] as List<dynamic>).map<Element>((dynamic v) => "
          'Element.fromJson(v as Map<String, dynamic>),).toList() : null,',
        );
      }
    } else {
      buffer.writeln(
        field.isRequired
            ? (field.type.isPrimitiveType ||
                    field.type == 'http://hl7.org/fhirpath/System.String' ||
                    field.isEnum)
                ? '    $fieldName: ${field.type.fhirToDartTypes}.fromJson('
                    "json['$jsonFieldName']),"
                : '    $fieldName: ${field.type.fhirToDartTypes}.fromJson('
                    "json['$jsonFieldName'] as Map<String, dynamic>,),"
            : (field.type.isPrimitiveType ||
                    field.type == 'http://hl7.org/fhirpath/System.String' ||
                    field.isEnum)
                ? "    $fieldName: json['$jsonFieldName'] != null ? "
                    '${field.type.fhirToDartTypes}.fromJson('
                    "json['$jsonFieldName']) : null,"
                : "    $fieldName: json['$jsonFieldName'] != null ? "
                    '${field.type.fhirToDartTypes}.fromJson('
                    "json['$jsonFieldName'] as Map<String, dynamic>,) : null,",
      );

      if ((field.type.isPrimitiveType || field.isEnum) &&
          field.needsElement &&
          fieldName != 'id') {
        buffer.writeln(
          "    ${jsonFieldName}Element: json['$jsonElementFieldName'] != null ? "
          "Element.fromJson(json['$jsonElementFieldName'] as Map<String, dynamic>,) : null,",
        );
      }
    }
  }

  buffer
    ..writeln('  );')
    ..writeln('}');
}

void _writeClassFooter(StringBuffer buffer, WritableClass writableClass) {
  final writableName = writableClass.className;

  buffer
    ..writeln('@override')
    ..writeln(
      '${writableName.fhirToDartTypes} clone() => throw UnimplementedError();',
    );

  _writeCopyFunction(buffer, writableClass);

  buffer.writeln('}\n');
}

void _writeFromYamlFactory(StringBuffer buffer, WritableClass writableClass) {
  final writableName = writableClass.className;

  buffer.writeln('''
  /// Deserialize [${writableName.fhirToDartTypes}] from a [String] or [YamlMap] object
  factory ${writableName.fhirToDartTypes}.fromYaml(dynamic yaml) => yaml is String
      ? ${writableName.fhirToDartTypes}.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,)
      : yaml is YamlMap
          ? ${writableName.fhirToDartTypes}.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,)
          : throw ArgumentError(
              '${writableName.fhirToDartTypes} cannot be constructed from input ''provided, it is neither a yaml string nor a yaml map.');
  ''');
}

void _writeFromJsonStringFactory(
  StringBuffer buffer,
  WritableClass writableClass,
) {
  final writableName = writableClass.className;

  buffer.writeln('''
  /// Factory constructor for [${writableName.fhirToDartTypes}] that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
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
  final writableName = writableClass.className;

  buffer
    ..writeln('@override')
    ..writeln('${writableName.fhirToDartTypes} copyWith({');

  // Add each field as an optional parameter
  for (final field in writableClass.fields) {
    final fieldDeclaration = field.isList
        ? 'List<${field.type.fhirToDartTypes}>?'
        : '${field.type.fhirToDartTypes}?';

    buffer
      ..writeln('    $fieldDeclaration ${field.name.fhirFieldToDartName},')
      ..writelnIf(
        condition: field.needsElement && field.name != 'id',
        content: '    ${field.isList ? 'List<Element>?' : 'Element?'} '
            '${field.name}Element,',
      );
  }

  // Add FhirBase-specific fields
  buffer
    ..writeln('    Map<String, Object?>? userData,')
    ..writeln('    List<String>? formatCommentsPre,')
    ..writeln('    List<String>? formatCommentsPost,')
    ..writeln('    List<dynamic>? annotations,')
    ..writeln('    List<FhirBase>? children,')
    ..writeln('    Map<String, FhirBase>? namedChildren,')
    ..writeln('  }) {')
    ..writeln('    return ${writableName.fhirToDartTypes}(');

  // Assign each field in the constructor
  for (final field in writableClass.fields) {
    buffer
      ..writeln('      ${field.name.fhirFieldToDartName}:'
          ' ${field.name.fhirFieldToDartName} ?? this.${field.name.fhirFieldToDartName},')
      ..writelnIf(
        condition: field.needsElement && field.name != 'id',
        content:
            '      ${field.name}Element: ${field.name}Element ?? this.${field.name}Element,',
      );
  }

  // Assign FhirBase fields
  buffer
    ..writeln('      userData: userData ?? this.userData,')
    ..writeln(
      '      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,',
    )
    ..writeln(
      '      formatCommentsPost: formatCommentsPost ?? '
      'this.formatCommentsPost,',
    )
    ..writeln('      annotations: annotations ?? this.annotations,')
    ..writeln('      children: children ?? this.children,')
    ..writeln('      namedChildren: namedChildren ?? this.namedChildren,')
    ..writeln('    );')
    ..writeln('  }');
}

extension StringBufferX on StringBuffer {
  void writelnIf({required bool condition, required String content}) {
    if (condition) {
      writeln(content);
    }
  }
}
