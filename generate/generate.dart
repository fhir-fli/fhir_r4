// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';

import 'class_buffer.dart';
import 'consts.dart';
import 'fhir_generate_extension.dart';
import 'file_io.dart';
import 'object_box.dart';
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

  // Generate resource and data classes from StructureDefinitions
  _classesFromStructureDefinitions();

  exportFiles();
  writeEnums(_valueSets, _codesAndVS, _nameMap);
  generateResourceUtils();
  parseSearchParameters();
  deleteDirectories();
  _moveTests();
}

void _moveTests() {
  final Directory testDirectory = Directory(testPath);
  if (!testDirectory.existsSync()) {
    testDirectory.createSync(recursive: true);
  }
  for (final String moveTest in moveTests) {
    final File file = File('$testPath/$moveTest');
    file.copySync(file.path.replaceAll('/examples/', '/quarantined/'));
    file.deleteSync();
  }
  final List<File> files =
      Directory(testPath).listSync().whereType<File>().toList();
  for (final File file in files) {
    if (file.path.contains('StructureDefinition')) {
      final String fileString = file.readAsStringSync();
      final Map<String, dynamic> fileMap =
          jsonDecode(fileString) as Map<String, dynamic>;
      if ((fileMap['type'] as String?)?.contains('.') ?? false) {
        file.copySync(file.path.replaceAll('/examples', '/quarantined'));
        file.deleteSync();
      }
    } else if (file.path.toLowerCase().contains('codesystem')) {
      final String fileString = file.readAsStringSync();
      final Map<String, dynamic> fileMap =
          jsonDecode(fileString) as Map<String, dynamic>;
      final List<dynamic>? concepts = fileMap['concept'] as List<dynamic>?;
      bool move = false;
      for (final dynamic concept in concepts ?? <dynamic>[]) {
        final List<dynamic>? properties =
            (concept as Map<String, dynamic>)['property'] as List<dynamic>?;
        for (final dynamic property in properties ?? <dynamic>[]) {
          if ((property as Map<String, dynamic>)['type'] == null) {
            move = true;
          }
        }
      }

      if (move) {
        file.copySync(file.path.replaceAll('/examples', '/quarantined'));
        file.deleteSync();
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
  generateObjectBoxClasses(classes);
  final StringBuffer buffer = generateClassBuffer(classes, fhirFieldMapBuffer);

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

bool _isValidStructureDefinition(dynamic entry) {
  return entry is Map<String, dynamic> &&
      entry['resource'] != null &&
      entry['resource'] is Map<String, dynamic> &&
      (entry['resource'] as Map<String, dynamic>)['resourceType'] ==
          'StructureDefinition';
}
