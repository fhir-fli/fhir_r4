// ignore_for_file: avoid_print

import 'dart:io';

import 'consts.dart';
import 'fhir_generate_extension.dart';
import 'writable_class.dart';

void generateObjectBoxClasses(Map<String, WritableClass> classes) {
  classes.forEach((String className, WritableClass writableClass) {
    final StringBuffer buffer = StringBuffer();

    // Write class header
    buffer.writeln("import 'package:objectbox/objectbox.dart';");
    buffer.writeln("import 'dart:convert';");
    buffer.writeln('class $className {');

    // Write fields
    for (final Field field in writableClass.fields) {
      final String dartType =
          field.isEnum ? 'String' : primitiveTypeMap[field.type] ?? field.type;

      buffer
          .writeln('  $dartType${field.isRequired ? '' : '?'} ${field.name};');
    }

    // Write constructor
    buffer.writeln('\n  $className({');
    for (final Field field in writableClass.fields) {
      buffer.writeln(
          '    ${field.isRequired ? 'required ' : ''}this.${field.name},');
    }
    buffer.writeln('  });');

    // Write toJson method
    buffer.writeln('\n  Map<String, dynamic> toJson() => {');
    for (final Field field in writableClass.fields) {
      buffer.writeln('    "${field.name}": ${field.name},');
    }
    buffer.writeln('  };');

    // Write fromJson factory
    buffer.writeln(
        '\n  factory $className.fromJson(Map<String, dynamic> json) {');
    buffer.writeln('    return $className(');
    for (final Field field in writableClass.fields) {
      buffer.writeln('      ${field.name}: json["${field.name}"],');
    }
    buffer.writeln('    );');
    buffer.writeln('  }');

    // Close class
    buffer.writeln('}');

    // Write to file in objectbox directory
    _writeToFile(buffer, className, 'objectbox');
  });
}

const Map<String, String> primitiveTypeMap = <String, String>{
  'base64Binary': 'String',
  'boolean': 'bool',
  'canonical': 'String',
  'code': 'String',
  'dateTime': 'String',
  'date': 'String',
  'decimal': 'num',
  'id': 'String',
  'instant': 'String',
  'integer': 'int',
  'integer64': 'String',
  'markdown': 'String',
  'oid': 'String',
  'positiveInt': 'int',
  'string': 'String',
  'time': 'String',
  'unsignedInt': 'int',
  'uri': 'String',
  'url': 'String',
  'uuid': 'String',
  'xhtml': 'String',
};

void _writeToFile(StringBuffer buffer, String className, String targetDirectory,
    {Map<String, String>? nameMap}) {
  final String? writeFileName = nameMap != null
      ? className.fileNameFromClassName(nameMap)
      : className
          .toLowerCase(); // Fallback to simple lowercase name if no nameMap is provided

  // Early exit if no valid file name is found
  if (writeFileName == null) {
    print(
        'Warning: Skipping file generation for class $className, invalid file name.');
    return;
  }

  // Prepare the file path based on the target directory
  final String filePath =
      '$fhirDirectory/$targetDirectory/${writeFileName.properFileName}.dart';

  try {
    // Write the buffer content to the specified file path
    File(filePath).writeAsStringSync(buffer.toString());
    print('Successfully wrote to: $filePath');
  } catch (e) {
    print('Error: Failed to write file for class $className. Error: $e');
  }
}
