import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:xml/xml.dart';

Future<void> main(List<String> args) async {
  final Directory dir = Directory('.');
  final List<FileSystemEntity> files = dir.listSync();
  for (final directory in files) {
    if (directory is Directory) {
      final dirFiles = (directory).listSync();
      for (final file in dirFiles) {
        if (file.path.endsWith('.xsd') && !file.path.endsWith('types.xsd')) {
          final newPath = file.path.replaceAll('.xsd', '');
          await generateClasses(file.path);
          //     String fileNameString = '';
          //     fileNames.sort((a, b) => a.compareTo(b));
          //     for (final fileName in fileNames) {
          //       fileNameString += "export '$fileName.dart';\n";
          //     }
          //     await File('../../xsd/$dirName/$dirName.dart')
          //         .writeAsString(fileNameString);
          //     final generatedFiles = generationDir.listSync();
          //     for (final generatedFile in generatedFiles) {
          //       if (generatedFile.path.endsWith('.dart')) {
          //         String generatedCode = await File(generatedFile.path).readAsString();
          //         bool contains = false;
          //         for (final className in generatedClasses.keys) {
          //           if (generatedCode.contains(className) &&
          //               !generatedCode.contains('class $className')) {
          //             contains = true;
          //           }
          //         }
          //         if (!contains) {
          //           generatedCode =
          //               generatedCode.replaceAll("import '$dirName.dart';", '');
          //         }
          //         await File(generatedFile.path).writeAsString(generatedCode);
          //       }
          //     }
          //     generatedClasses.clear();
          //     fileNames.clear();
        }
      }
    }
  }
}

String dirName = '';
final generatedClasses = {}; // Tracks written classes
final fileNames = <String>[];
final classAnnotations = <String>[];

Future<void> generateClasses(String schemaPath) async {
  final schemaDoc = XmlDocument.parse(await File(schemaPath).readAsString())
      .childElements
      .first
      .childElements;
  for (final complexType in schemaDoc) {
    if (complexType.name.toString() == 'xs:complexType') {
      final className = complexType.attributes.first.value;
      if (className != 'Any' &&
          className != 'Concept' &&
          className != 'Quantity') {
        final fields = _extractFields(complexType);
        final code = _generateClass(className, fields);
        _writeClassToFile(schemaPath, className, code);
      }
    }
  }
}

List<Field> _extractFields(XmlElement element) {
  final fields = <Field>[];

  // Handle base types if present
  if (element.findElements('QDMBaseType').isNotEmpty) {
    fields.addAll(_extractFields(element.findElements('QDMBaseType').first));
  }

  final annotation = element.childElements
      .where((element) => element.name.toString() == 'xs:annotation');
  if (annotation.isNotEmpty) {
    final annotationElement = annotation.first;
    final documentation = annotationElement.childElements
        .where((element) => element.name.toString() == 'xs:documentation');
    if (documentation.isNotEmpty) {
      final documentationText = documentation.first.nodes.first.toString();
      List<String> documentationLines = documentationText.split('\n');
      documentationLines = documentationLines.map((e) => '/// $e').toList();
      classAnnotations.addAll(documentationLines);
    }
  }

  // Iterate over child elements and attributes
  for (final childElement in element.childElements) {
    final elementName = childElement.getAttribute('name');
    final elementType = childElement.getAttribute('type');
    if (elementType != null && elementName != null) {
      // Extract and format annotations for comments
      fields.add(Field(elementName.toString(), _getDartType(elementType),
          isOptional(childElement)));
    }

    // Handle nested elements recursively
    if (childElement.childElements.isNotEmpty) {
      fields.addAll(_extractFields(childElement));
    }
  }

  return fields;
}

bool isOptional(XmlElement element) {
  final minOccurs = element.getAttribute('minOccurs');
  final use = element.getAttribute('use');
  return minOccurs == '0' || use == 'optional';
}

// Consider exploring libraries like build_runner for advanced features
// and customization based on your XSD structure and desired code output.
String _generateClass(String className, List<Field> fields) {
  final buffer = StringBuffer();
  if (classAnnotations.isNotEmpty) {
    buffer.writeln("${classAnnotations.join('\n')}\n");
    classAnnotations.clear();
  }
  buffer.writeln('class $className {');
  for (final field in fields) {
    buffer.writeln(
        '  final ${field.type}${field.isNullable && field.type != "dynamic" ? "?" : ""} ${field.name};');
  }
  if (fields.isNotEmpty) {
    buffer.writeln('\n  $className({');
    for (final field in fields) {
      buffer
          .writeln('${field.isNullable ? "" : "required"} this.${field.name},');
    }
    buffer.writeln('  });');
  } else {
    buffer.writeln('\n  $className();');
  }
  buffer.writeln('}');
  return buffer.toString();
}

void _writeClassToFile(String schemaPath, String className, String code) {
  final fileName = path.join(
      path.dirname(schemaPath).replaceAll('xsd', 'xsd/$dirName'),
      '${className.snakeCase}.dart');
  if (!generatedClasses.containsKey(className)) {
    fileNames.add(className.snakeCase.replaceFirst('_', ''));
    generatedClasses[className] = true;
    code = "import '$dirName.dart';\n\n$code";
    for (final cqlVar in [
      'LiteralString',
      'LiteralDateTime',
      'LiteralInteger',
      'LiteralDate',
      'LiteralDecimal',
      'LiteralBoolean',
      'LiteralTime',
      'LiteralCode',
      'LiteralConcept',
      'LiteralQuantity',
      'LiteralDateTimeInterval',
      'LiteralQuantityInterval',
    ]) {
      if (code.contains(cqlVar)) {
        code = "import 'package:cql/engine/types/types.dart';\n\n$code";
        break;
      }
    }
    File(fileName.replaceAll('/_', '/')).writeAsString(code);
  }
}

String _getDartType(String xsdType) {
  switch (xsdType) {
    case 'xs:string':
      return 'LiteralString';
    case 'xs:dateTime':
      return 'LiteralDateTime';
    case 'xs:int':
      return 'LiteralInteger';
    case 'xs:integer':
      return 'LiteralInteger';
    case 'xs:date':
      return 'LiteralDate';
    case 'xs:decimal':
      return 'LiteralDecimal';
    case 'xs:boolean':
      return 'LiteralBoolean';
    case 'xs:time':
      return 'LiteralTime';
    case 'dt:Code':
      return 'LiteralCode';
    case 'Any':
      return 'dynamic';
    case 'Concept':
      return 'LiteralConcept';
    case 'Quantity':
      return 'LiteralQuantity';
    case 'dt:Any':
      return 'dynamic';
    case 'dt:Quantity':
      return 'LiteralQuantity';
    case 'dt:DateTimeInterval':
      return 'LiteralDateTimeInterval';
    case 'dt:DateTime':
      return 'LiteralDateTime';
    case 'dt:QuantityInterval':
      return 'LiteralQuantityInterval';
    case 'xs:anyType':
      return 'dynamic';
    case 'dt:String':
      return 'LiteralString';
    case 'dt:Integer':
      return 'LiteralInteger';
    case 'dt:Date':
      return 'LiteralDate';
    case 'dt:Long':
      return 'LiteralLongNumber';
    default:
      return xsdType;
  }
}

class Field {
  final bool isNullable;
  final String name;
  final String type;

  Field(String name, this.type, this.isNullable)
      : name = reservedWords(name[0].toLowerCase() + name.substring(1));
}

const theseAreReserved = <String>['class'];

String reservedWords(String string) {
  if (theseAreReserved.contains(string)) {
    return '${string}_';
  } else {
    return string;
  }
}

extension SnakeCase on String {
  String get snakeCase => replaceAllMapped(
      RegExp(r'[A-Z]'), (match) => '_${match.group(0)?.toLowerCase()}');
}
