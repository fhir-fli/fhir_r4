// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';

import 'class_buffer.dart';
import 'consts.dart';
import 'fhir_generate_extension.dart';
import 'file_io.dart';
import 'object_box.dart';
// import 'isar.dart';
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
  // prepareObjectBox();
  // prepareIsar();
  _codesAndVS.addAll(codesAndValueSets(valueSetPath, examplesPath));
  _nameMap.addAll(populateNameMap(fhirSchemaPath));
  _classesFromStructureDefinitions();
  // exportFiles();
  writeEnums(_valueSets, _codesAndVS, _nameMap);
  generateResourceUtils();
  parseSearchParameters();
  // exportObjectBoxFiles();
  // exportIsarFiles();
  deleteDirectories();
  // _moveTests();
}

// void _moveTests() {
//   final testDirectory = Directory(testPath);
//   if (!testDirectory.existsSync()) {
//     testDirectory.createSync(recursive: true);
//   }
//   for (final moveTest in moveTests) {
//     final file = File('$testPath/$moveTest');
//     file.copySync(file.path.replaceAll('/examples/', '/quarantined/'));
//     file.deleteSync();
//   }
//   final files =
//       Directory(testPath).listSync().whereType<File>().toList();
//   for (final file in files) {
//     if (file.path.contains('StructureDefinition')) {
//       final fileString = file.readAsStringSync();
//       final fileMap =
//           jsonDecode(fileString) as Map<String, dynamic>;
//       if ((fileMap['type'] as String?)?.contains('.') ?? false) {
//         file.copySync(file.path.replaceAll('/examples', '/quarantined'));
//         file.deleteSync();
//       }
//     } else if (file.path.toLowerCase().contains('codesystem')) {
//       final fileString = file.readAsStringSync();
//       final fileMap =
//           jsonDecode(fileString) as Map<String, dynamic>;
//       final concepts = fileMap['concept'] as List<dynamic>?;
//       var move = false;
//       for (final dynamic concept in concepts ?? <dynamic>[]) {
//         final properties =
//             (concept as Map<String, dynamic>)['property'] as List<dynamic>?;
//         for (final dynamic property in properties ?? <dynamic>[]) {
//           if ((property as Map<String, dynamic>)['type'] == null) {
//             move = true;
//           }
//         }
//       }

//       if (move) {
//         file.copySync(file.path.replaceAll('/examples', '/quarantined'));
//         file.deleteSync();
//       }
//     }
//   }
//   for (final file in filesToQuarantine) {
//     final fileToQuarantine = File('$testPath/$file');
//     if (fileToQuarantine.existsSync()) {
//       fileToQuarantine.copySync(
//           fileToQuarantine.path.replaceAll('/examples', '/quarantined'),);
//       fileToQuarantine.deleteSync();
//     }
//   }
// }

void _classesFromStructureDefinitions() {
  final definitionBundles = _getStructureDefinitionBundles();
  final fieldMapBuffer = StringBuffer();

  for (final file in definitionBundles) {
    _processBundle(file, fieldMapBuffer);
  }

  _writeFhirFieldMap(fieldMapBuffer);
}

List<String> _getStructureDefinitionBundles() {
  return <String>[resourceProfilesPath, typeProfilesPath];
}

void _processBundle(String file, StringBuffer fieldMapBuffer) {
  final content = File(file).readAsStringSync();
  final bundle = jsonDecode(content) as Map<String, dynamic>;

  for (final dynamic entry in bundle['entry'] as List<dynamic>) {
    if (_isValidStructureDefinition(entry)) {
      _generateFromSd(
        (entry as Map<String, dynamic>)['resource'] as Map<String, dynamic>,
        fieldMapBuffer,
      );
    }
  }
}

void _writeFhirFieldMap(StringBuffer fhirFieldMapBuffer) {
  // Add the opening lines for fhirFieldMap
  final finalBuffer = StringBuffer()
    ..writeln('''
// ignore_for_file: require_trailing_commas

/// FHIR Field
class FhirField {
  /// Constructor
  // ignore: avoid_positional_boolean_parameters
  const FhirField(this.isList, this.type);

  /// Whether the field is a list
  final bool isList;

  /// The type of the field
  final String type;
}

/// Field map for FHIR structures
final Map<String, Map<String, FhirField>> fhirFieldMap =
    <String, Map<String, FhirField>>{''')

    // Add the content from the buffer passed during processing
    ..writeln(fhirFieldMapBuffer.toString())

    // Close the map
    ..writeln('};');

  // Write the result to a file (e.g., fhir_field_map.dart)
  File('$fhirDirectory/utils/fhir_field_map.dart')
      .writeAsStringSync(finalBuffer.toString());
}

void _generateFromSd(Map<String, dynamic> sd, StringBuffer fhirFieldMapBuffer) {
  final className = sd['name'] as String;
  if (!className.shouldGenerate) {
    return;
  }
  final classes = _buildWritableClasses(sd, className);
  // generateObjectBoxClasses(classes);
  // generateIsarClasses(classes);
  final buffer = generateClassBuffer(classes, fhirFieldMapBuffer);

  writeToFile(buffer, className, _nameMap);
}

Map<String, WritableClass> _buildWritableClasses(
  Map<String, dynamic> sd,
  String className,
) {
  final classes = <String, WritableClass>{};

  final elements =
      (sd['snapshot'] as Map<String, dynamic>)['element'] as List<dynamic>;

  final rootElement = elements.firstWhereOrNull(
    (dynamic element) => (element as Map<String, dynamic>)['path'] == className,
  ) as Map<String, dynamic>?;

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
    final element = elementDefinition as Map<String, dynamic>;
    String? enumName;

    // Handle ValueSets if binding is present
    if (element['binding'] != null &&
        (element['binding'] as Map<String, dynamic>)['valueSet'] != null) {
      final fullUrl =
          (element['binding'] as Map<String, dynamic>)['valueSet'] as String;
      final valueSetUrl = fullUrl.splitOffVersion;
      if (_codesAndVS.keys.contains(valueSetUrl)) {
        _valueSets.add(valueSetUrl);
        final newEnumName = getEnumNameFromValueSet(
          valueSetUrl,
          _codesAndVS[valueSetUrl]!,
          _nameMap,
        );
        if (!badValueSets.contains(newEnumName)) {
          enumName = newEnumName;
        }
      } else {
        print('Error: $valueSetUrl');
      }
    }

    final path = elementDefinition['path'] as String;
    final classPath = path.findLongestMatch(classes.keys.toList());

    if (className.isResource &&
        elementDefinition['type'] is List<dynamic> &&
        (elementDefinition['type'] as List<dynamic>).length == 1 &&
        ((elementDefinition['type'] as List<dynamic>).first
                as Map<String, dynamic>)['code'] ==
            'BackboneElement') {
      _generateBackboneOrElementTypeClass(
        classes,
        path,
        className,
        element,
        true,
      );
    } else if ((className.isDataType ||
            className.isBackboneType ||
            className.isQuantity) &&
        elementDefinition['type'] is List<dynamic> &&
        (elementDefinition['type'] as List<dynamic>).length == 1 &&
        ((elementDefinition['type'] as List<dynamic>).first
                as Map<String, dynamic>)['code'] ==
            'Element') {
      _generateBackboneOrElementTypeClass(
        classes,
        path,
        className,
        element,
        false,
      );
    }

    final types = elementDefinition['type'] as List<dynamic>?;
    final fieldName = path.split('.').last;
    final isRequired =
        (int.tryParse(elementDefinition['min']?.toString() ?? '') ?? 0) >= 1 ||
            elementDefinition['min'] == '+';
    final isList = elementDefinition['max'] == '*';

    if (types == null) {
      if (elementDefinition['path'] != className) {
        String? referenceFieldType;
        final contentReference =
            (elementDefinition['contentReference'] as String?)
                ?.replaceFirst('#', '');
        for (final writableClass in classes.values) {
          referenceFieldType = writableClass.fields
              .firstWhereOrNull((Field field) => field.path == contentReference)
              ?.type;
          if (referenceFieldType != null) {
            break;
          }
        }

        if (referenceFieldType == null) {
          print(
            'Warning: No type found for $path '
            '${elementDefinition['contentReference']}',
          );
          continue; // Skip adding this field if type not found.
        }
        final newTypeString = referenceFieldType.isPrimitiveType
            ? enumName ?? referenceFieldType
            : referenceFieldType;
        classes[classPath]!.addField(
          Field(
            name: fieldName,
            type: newTypeString,
            comment: element['definition'] as String? ?? '',
            needsElement: referenceFieldType.isPrimitiveType,
            isEnum: newTypeString == enumName,
            path: path,
            isRequired: isRequired,
            isList: isList,
          ),
        );
      }
    } else if (types.length != 1) {
      for (final dynamic type in types) {
        final actualType = (type as Map<String, dynamic>)['code'] as String;
        final newTypeString =
            actualType.isPrimitiveType ? enumName ?? actualType : actualType;
        classes[classPath]!.addField(
          Field(
            name: fieldName.replaceAll('[x]', actualType.capitalize),
            type: newTypeString,
            comment: element['definition'] as String? ?? '',
            needsElement: actualType.isPrimitiveType,
            isEnum: newTypeString == enumName,
            path: path,
            isRequired: !fieldName.contains('[x]') && isRequired,
            isList: isList,
          ),
        );
      }
    } else {
      var fieldType = (types.first as Map<String, dynamic>)['code'] as String;
      if ((className.isResource && fieldType == 'BackboneElement') ||
          ((className.isBackboneType ||
                  className.isDataType ||
                  className.isQuantity) &&
              fieldType == 'Element')) {
        fieldType = path.split('.').first + path.split('.').last.capitalize;
      }
      final newTypeString =
          fieldType.isPrimitiveType ? enumName ?? fieldType : fieldType;
      classes[classPath]!.addField(
        Field(
          name: fieldName,
          type: newTypeString,
          comment: element['definition'] as String? ?? '',
          needsElement: fieldType.isPrimitiveType,
          isEnum: newTypeString == enumName,
          path: path,
          isRequired: isRequired,
          isList: isList,
        ),
      );
    }
  }

  return classes;
}

void _generateBackboneOrElementTypeClass(
  Map<String, WritableClass> classes,
  String path,
  String className,
  Map<String, dynamic> element,
  bool isBackboneElement,
) {
  // Generate a base class name
  final baseClassName = path.split('.').first + path.split('.').last.capitalize;

  // Check for duplicate class names and add a number if necessary
  var newClassName = baseClassName;
  var classCount = 1;

  // Keep checking for existing class names, including those with numbers
  while (classes.values.any((WritableClass c) => c.className == newClassName)) {
    // Increment class name with a number to avoid duplication
    newClassName = baseClassName + classCount.toString();
    classCount++;
  }

  // Create the new class for BackboneElement or Element
  classes[path] = WritableClass(
    className: newClassName == 'EvidenceVariable'
        ? 'EvidenceModelCharacteristicVariable'
        : newClassName,
    classPath: path,
    comment: element['definition'] as String? ?? '',
    isBackboneElement: isBackboneElement,
    isElement: !isBackboneElement,
  );
}

Map<String, Map<String, dynamic>> codesAndValueSets(
  String valueSetPath,
  String examplesPath,
) {
  final codesAndVS = <String, Map<String, dynamic>>{};

  final codesString = File(valueSetPath).readAsStringSync();
  final bundle = jsonDecode(codesString) as Map<String, dynamic>;

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

  final files = Directory(examplesPath)
      .listSync(recursive: true)
      .whereType<File>()
      .where(
        (File file) =>
            file.path.endsWith('.json') &&
            (file.path.toLowerCase().contains('valueset') ||
                file.path.toLowerCase().contains('codesystem')),
      )
      .toList();
  for (final file in files) {
    final examplesString = file.readAsStringSync();
    final entry = jsonDecode(examplesString) as Map<String, dynamic>;
    if ((entry['resourceType'] == 'ValueSet' ||
            entry['resourceType'] == 'CodeSystem') &&
        !codesAndVS.containsKey(entry['url'] as String)) {
      codesAndVS[entry['url'] as String] = entry;
    }
  }

  final ndfiles = Directory(ndJsonExamplesPath)
      .listSync(recursive: true)
      .whereType<File>()
      .where(
        (File file) =>
            file.path.endsWith('.ndjson') &&
            (file.path.toLowerCase().contains('valueset') ||
                file.path.toLowerCase().contains('codesystem')),
      )
      .toList();
  for (final file in ndfiles) {
    final examplesString = file.readAsStringSync();
    final entries = examplesString.split('\n');
    for (final entryString in entries) {
      final entry = jsonDecode(entryString) as Map<String, dynamic>;
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

bool _isValidStructureDefinition(dynamic entry) {
  return entry is Map<String, dynamic> &&
      entry['resource'] != null &&
      entry['resource'] is Map<String, dynamic> &&
      (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
          'StructureDefinition';
}
