// ignore_for_file: annotate_overrides, overridden_fields, avoid_dynamic_calls

import 'package:ucum/ucum.dart';
import 'package:xml/xml.dart';

// Package imports:
import '../../../../fhir_r4.dart';

class IsParser extends OperatorParser {
  IsParser();
  ParserList before = ParserList(<FhirPathParser>[]);
  ParserList after = ParserList(<FhirPathParser>[]);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final List<dynamic> executedBefore =
        before.execute(results.toList(), passed);
    final List<dynamic> executedAfter =
        after.length == 1 && after.first is IdentifierParser
            ? <String>[(after.first as IdentifierParser).value]
            : after.execute(results.toList(), passed);

    return executedBefore.isEmpty ||
            executedBefore.length != 1 ||
            executedAfter.isEmpty ||
            executedAfter.length != 1
        ? throw FhirPathEvaluationException(
            'the "is" operation requires two operands, this was '
            'passed the following\n'
            'Operand1: $executedBefore\n'
            'Operand2: $executedAfter',
            collection: results)
        : (R4ResourceType.typesAsStrings.contains(executedAfter.first)) &&
                executedBefore.first is Map &&
                executedBefore.first['resourceType'] == executedAfter.first
            ? <dynamic>[true]
            : executedAfter.first == 'String'
                ? <dynamic>[executedBefore.first is String]
                : executedAfter.first == 'Boolean'
                    ? <dynamic>[
                        executedBefore.first is bool ||
                            executedBefore.first is FhirBoolean
                      ]
                    : executedAfter.first == 'Integer'
                        ? <dynamic>[
                            (executedBefore.first is int ||
                                    executedBefore.first is FhirInteger) &&

                                /// This is because of transpilation to javascript
                                !executedBefore.first.toString().contains('.')
                          ]
                        : executedAfter.first == 'Decimal'
                            ? <dynamic>[
                                (executedBefore.first is double ||
                                        executedBefore.first is FhirDecimal) &&

                                    /// This is because of transpilation to javascript
                                    executedBefore.first
                                        .toString()
                                        .contains('.')
                              ]
                            : executedAfter.first == 'Date'
                                ? <dynamic>[executedBefore.first is FhirDate]
                                : executedAfter.first == 'DateTime'
                                    ? <dynamic>[
                                        executedBefore.first is DateTime ||
                                            executedBefore.first is FhirDateTime
                                      ]
                                    : executedAfter.first == 'Time'
                                        ? <dynamic>[
                                            executedBefore.first is FhirTime
                                          ]
                                        : executedAfter.first == 'Quantity'
                                            ? <dynamic>[
                                                ValidatedQuantity
                                                    .isValidatedQuantity(
                                                        executedBefore.first
                                                            as Object)
                                              ]
                                            : <dynamic>[false];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}IsParser'
      '\n${before.verbosePrint(indent + 1)}'
      '\n${after.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => 'is('
      '\n${before.prettyPrint(indent + 1)}'
      '\n${after.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

class AsParser extends OperatorParser {
  AsParser();
  ParserList before = ParserList(<FhirPathParser>[]);
  ParserList after = ParserList(<FhirPathParser>[]);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final List<dynamic> executedBefore =
        before.execute(results.toList(), passed);
    if (executedBefore.length != 1) {
      throw FhirPathEvaluationException(
          'The "as" operation requires a left operand with 1 item, '
          'but was passed the following\n'
          'Operand 1: $before',
          operation: 'as',
          arguments: before,
          collection: results);
    } else if (after.length != 1 || after.first is! IdentifierParser) {
      throw FhirPathEvaluationException(
          'The "as" operation requires a right operand that '
          'has a single item that resolves to an identifier, but was passed:\n'
          'Operand 2: $after',
          operation: 'as',
          arguments: after,
          collection: results);
    }
    final String identifierValue = (after.first as IdentifierParser).value;
    if (((R4ResourceType.typesAsStrings.contains(identifierValue)) &&
            executedBefore.first is Map &&
            executedBefore.first['resourceType'] == identifierValue) ||
        (identifierValue.toLowerCase() == 'string' &&
            (executedBefore.first is String)) ||
        (identifierValue.toLowerCase() == 'boolean' &&
            (executedBefore.first is bool ||
                executedBefore.first is FhirBoolean)) ||
        (identifierValue.toLowerCase() == 'integer' &&
            (executedBefore.first is int ||
                executedBefore.first is FhirInteger)) ||
        (identifierValue.toLowerCase() == 'decimal' &&
            (executedBefore.first is double ||
                executedBefore.first is FhirDecimal)) ||
        (identifierValue.toLowerCase() == 'date' &&
            executedBefore.first is FhirDate) ||
        (identifierValue.toLowerCase() == 'datetime' &&
            (executedBefore.first is DateTime ||
                executedBefore.first is FhirDateTime)) ||
        (identifierValue.toLowerCase() == 'time' &&
            executedBefore.first is FhirTime) ||
        (identifierValue == 'quantity' &&
            executedBefore.first is ValidatedQuantity)) {
      return executedBefore;
    }

    if (FhirDatatypes.contains(identifierValue)) {
      final String polymorphicString = 'value$identifierValue';
      final IdentifierParser polymorphicIdentifier =
          IdentifierParser('', polymorphicString);
      final ParserList polymorphicParserList =
          ParserList(<FhirPathParser>[polymorphicIdentifier]);
      return polymorphicParserList.execute(results.toList(), passed);
    }
    return <dynamic>[];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}AsParser'
      '\n${before.verbosePrint(indent + 1)}'
      '\n${after.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => 'as'
      '\n${"  " * indent}${before.prettyPrint(indent + 1)}'
      '\n${"  " * indent}${after.prettyPrint(indent + 1)}';
}

/// htmlChecks : Boolean
///
/// When invoked on a single xhtml element returns true if the rules around
/// HTML usage are met, and false if they are not. The return value is empty
/// on any other kind of element, or a collection of xhtml elements.
class HtmlCheckerParser extends FhirPathParser {
  HtmlCheckerParser();

  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    if (results.length != 1) {
      return <dynamic>[];
    } else if (results.first is String || results.first is FhirMarkdown) {
      final String result = results.first.toString();
      return <dynamic>[validateXhtml(result)];
    } else {
      return <dynamic>[];
    }
  }

  @override
  String verbosePrint(int indent) => '${"  " * indent}HtmlCheckerParser';

  @override
  String prettyPrint([int indent = 2]) => '.htmlChecks()';

  final List<String> allowedElements = <String>[
    'div',
    'p',
    'b',
    'i',
    'em',
    'strong',
    'ul',
    'ol',
    'li',
    'span',
    'br',
    'a',
    'img',
    'h1',
    'h2',
    'h3',
    'h4',
    'h5',
    'h6',
    'table',
    'thead',
    'tbody',
    'tr',
    'th',
    'td'
  ];

  final List<String> prohibitedElements = <String>[
    'head',
    'body',
    'script',
    'form',
    'base',
    'link',
    'frame',
    'iframe',
    'object',
    'frameset',
    'meta',
    'input',
    'textarea',
    'button',
    'select',
    'option',
    'style'
  ];

  bool validateXhtml(String xhtml) {
    try {
      final XmlDocument document = XmlDocument.parse(xhtml);

      final XmlElement rootElement = document.rootElement;
      if (rootElement.name.local != 'div') {
        return false;
      }

      if (rootElement.getAttribute('xmlns') != 'http://www.w3.org/1999/xhtml') {
        return false;
      }

      return _validateElement(rootElement, isRoot: true);
    } catch (e) {
      print('Error parsing XHTML: $e');
      return false;
    }
  }

  bool _validateElement(XmlElement element, {bool isRoot = false}) {
    if (!allowedElements.contains(element.name.local) &&
        prohibitedElements.contains(element.name.local)) {
      return false;
    }

    for (final XmlAttribute attribute in element.attributes) {
      if (attribute.name.local == 'style' || attribute.name.local == 'class') {
        continue;
      } else if (attribute.name.local == 'src' &&
          attribute.value.startsWith('#')) {
        continue;
      } else if (attribute.name.local == 'xml:id' ||
          attribute.name.local == 'lang') {
        continue;
      } else if (isRoot &&
          attribute.name.local == 'xmlns' &&
          attribute.value == 'http://www.w3.org/1999/xhtml') {
        continue;
      } else if (element.name.local == 'a' && attribute.name.local == 'href') {
        continue;
      } else {
        return false;
      }
    }

    for (final XmlNode child in element.children) {
      if (child is XmlElement && !_validateElement(child)) {
        return false;
      }
    }

    if (element.name.local == 'div' && element.innerText.trim().isEmpty) {
      return false;
    }

    return true;
  }
}
