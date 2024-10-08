// ignore_for_file: annotate_overrides, overridden_fields

// Project imports:
import '../../../../fhir_r4.dart';

/// DEPRECATED
/// The as() function is defined for backwards compatibility with previous implementations
/// of FHIRPath. However, we have chosen not to support it.
/// DEPRECATED
class AsFunctionParser extends FunctionParser {
  AsFunctionParser(super.value);

  AsFunctionParser.empty() : super(ParserList.empty());

  AsFunctionParser copyWith(ParserList value) => AsFunctionParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    throw FhirPathDeprecatedExpressionException(
        'The FHIRPath expression that was supplied includes "as(type : type specifier)" '
        ' which has been deprecated. Please instead use the "as type specifer". '
        'Official explanation can be read here: https://hl7.org/fhirpath/#as-type-specifier');
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}AsFunctionParser (Deprecated)\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.as(Deprecated)(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// DEPRECATED
/// The as() function is defined for backwards compatibility with previous implementations
/// of FHIRPath. However, we have chosen not to support it.
/// DEPRECATED
class IsFunctionParser extends FunctionParser {
  IsFunctionParser(super.value);

  IsFunctionParser.empty() : super(ParserList.empty());

  IsFunctionParser copyWith(ParserList value) => IsFunctionParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    throw FhirPathDeprecatedExpressionException(
        'The FHIRPath expression that was supplied includes "is(type : type specifier)" '
        ' which has been deprecated. Please instead use the "is type specifer". '
        'Official explanation can be read here: https://hl7.org/fhirpath/#as-type-specifier');
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}IsFunctionParser (Deprecated)\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.is(Deprecated)(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// DEPRECATED
/// The as() function is defined for backwards compatibility with previous implementations
/// of FHIRPath. However, we have chosen not to support it.
/// DEPRECATED
class IsIntegerParser extends FhirPathParser {
  IsIntegerParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    return results.isEmpty || results.length != 1
        ? throw FhirPathEvaluationException(
            'the "isInteger" operation requires one operands, this was '
            'passed the following\n'
            'Operand1: $results\n',
            collection: results)
        : <dynamic>[
            (results.first is int || results.first is FhirInteger) &&

                /// This is because of transpilation to javascript
                !results.first.toString().contains('.')
          ];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}IsIntegerParser (Deprecated)\n';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '${"  " * indent}IsIntegerParser (Deprecated)\n';
}
