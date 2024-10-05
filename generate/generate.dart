import 'dart:convert';
import 'dart:io';

import 'extract.dart';
import 'types.dart';

Future<void> main() async {
  await extract();
  await _classesFromStructureDefinitions();
}

final Map<String, String> _nameMap = <String, String>{};

Future<void> _classesFromStructureDefinitions() async {
  final List<String> structureDefinitionBundles = <String>[
    './profiles-resources.json',
    './profiles-types.json',
  ];
  final String fileString = File('fhir.schema.json').readAsStringSync();
  final Map<String, dynamic> jsonSchema =
      jsonDecode(fileString) as Map<String, dynamic>;
  (jsonSchema['definitions'] as Map<String, dynamic>)
      .forEach((String key, dynamic value) {
    _nameMap[key.toLowerCase().replaceAll('_', '')] = key;
  });
  for (final String file in structureDefinitionBundles) {
    await _generateFromBundle(file);
  }
}

Future<void> _generateFromBundle(String file) async {
  final String bundleString = File(file).readAsStringSync();
  final Map<String, dynamic> bundle =
      jsonDecode(bundleString) as Map<String, dynamic>;
  for (final dynamic entry in bundle['entry'] as List<dynamic>) {
    if (_isValidStructureDefinition(entry)) {
      await _generateFromSd(
          (entry as Map<String, dynamic>)['resource'] as Map<String, dynamic>);
    }
  }
}

bool _isValidStructureDefinition(dynamic entry) {
  return entry is Map<String, dynamic> &&
      entry['resource'] != null &&
      entry['resource'] is Map<String, dynamic> &&
      (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
          'StructureDefinition';
}

Future<void> _generateFromSd(Map<String, dynamic> sd) async {
  final String className = sd['name'] as String;
  if (!shouldGenerate(className)) {
    return;
  }

  final StringBuffer buffer = StringBuffer();
  final StringBuffer constructorBuffer = StringBuffer();

  // Write class header
  buffer.writeln("import 'package:data_class/data_class.dart';");
  buffer.writeln("import 'package:json/json.dart';");
  buffer.writeln("\nimport '../../../fhir_r4.dart';\n");
  buffer.writeln('@Data()');
  buffer.writeln('@JsonCodable()');
  final String extendsClause = isDataType(className)
      ? 'extends DataType'
      : isQuantity(className)
          ? 'extends Quantity'
          : isBackboneType(className)
              ? 'extends BackboneElement'
              : isResourceType(className)
                  ? 'extends DomainResource'
                  : '';
  if (extendsClause.isEmpty) {
    // ignore: avoid_print
    print('No extends clause for $className');
  }
  buffer.writeln('class $className $extendsClause {');

  // Prepare constructor
  constructorBuffer.writeln('\n  $className({');

  // Process elements
  final List<Map<String, dynamic>> elements =
      ((sd['snapshot'] as Map<String, dynamic>)['element'] as List<dynamic>)
          .map((dynamic item) => item as Map<String, dynamic>)
          .toList();

  // Generate fields and constructor
  for (final Map<String, dynamic> element in elements) {
    _processElement(element, buffer, constructorBuffer, className);
  }

  // Close constructor and class
  constructorBuffer.writeln('  });');
  buffer.writeln(constructorBuffer.toString());
  buffer.writeln('}\n');

  String? writeFileName = _fileNameFromClassName(className);
  if (writeFileName == null) {
    // ignore: avoid_print
    print('Not writing: $className');
    return;
  }
  writeFileName = writeFileName[0].toLowerCase() + writeFileName.substring(1);
  // Write class to file
  final String filePath = '../lib/src/fhir/generated/$writeFileName.dart';
  File(filePath).writeAsStringSync(buffer.toString());
}

String? _fileNameFromClassName(String className) =>
    _nameMap[className.toLowerCase()];

void _processElement(Map<String, dynamic> element, StringBuffer buffer,
    StringBuffer constructorBuffer, String className) {
  final String path = element['path'] as String;
  String fieldName = path.split('.').last;
  final String fieldType = fhirToDartTypes(_getElementType(element));
  final bool isRequired = (element['min'] as int) > 0;

  // Write field
  final String nullableMark = isRequired ? '' : '?';
  if (fieldName != className) {
    final bool isSuper = isSuperField(fieldName, className);
    fieldName = fhirFieldToDartName(fieldName);
    if (!isSuper) {
      buffer.writeln('  final $fieldType$nullableMark $fieldName;');
    }
    // Add to constructor
    constructorBuffer.writeln('    ${isRequired ? "required " : ""}'
        '${isSuper ? "super" : "this"}'
        '.$fieldName,');
  }
}

String _getElementType(Map<String, dynamic> element) {
  final List<dynamic>? types = element['type'] as List<dynamic>?;
  if (types != null && types.isNotEmpty) {
    return (types.first as Map<String, dynamic>)['code'] as String;
  }
  return 'dynamic';
}
