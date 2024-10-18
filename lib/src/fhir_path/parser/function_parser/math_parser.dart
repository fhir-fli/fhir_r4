import 'dart:math';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

/// The [AbsParser] is used to evaluate the absolute value of a number
class AbsParser extends FhirPathParser {
  /// Constructor for [AbsParser]
  AbsParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.abs()', results)
              : results.first is num
                  ? (results.first as num).abs().isNaN
                      ? <dynamic>[]
                      : <dynamic>[(results.first as num).abs()]
                  : results.first is ValidatedQuantity
                      ? <dynamic>[(results.first as ValidatedQuantity).abs()]
                      : throw _wrongTypes('.abs()', results, 'none');

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}AbsParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.abs()';
}

/// The [CeilingParser] is used to evaluate the ceiling of a number
class CeilingParser extends FhirPathParser {
  /// Constructor for [CeilingParser]
  CeilingParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.ceiling()', results)
              : results.first is num
                  ? <dynamic>[(results.first as num).ceil()]
                  : throw _wrongTypes('.ceiling()', results, 'none');

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}CeilingParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.ceiling()';
}

/// The [ExpParser] is used to evaluate the exponential value of a number
class ExpParser extends FhirPathParser {
  /// Constructor for [ExpParser]
  ExpParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.exp()', results)
              : results.first is num
                  ? <dynamic>[exp(results.first as num)]
                  : throw _wrongTypes('.exp()', results, 'none');

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ExpParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.exp()';
}

/// The [FloorParser] is used to evaluate the floor of a number
class FloorParser extends FhirPathParser {
  /// Constructor for [FloorParser]
  FloorParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.floor()', results)
              : results.first is num
                  ? <dynamic>[(results.first as num).floor()]
                  : throw _wrongTypes('.floor()', results, 'none');

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}FloorParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.floor()';
}

/// The [LnParser] is used to evaluate the natural logarithm of a number
class LnParser extends FhirPathParser {
  /// Constructor for [LnParser]
  LnParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.ln()', results)
              : results.first is num
                  ? <dynamic>[log(results.first as num)]
                  : throw _wrongTypes('.ln()', results, 'none');

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}LnParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.ln()';
}

/// The [LogParser] is used to evaluate the logarithm of a number
class LogParser extends FunctionParser {
  /// Constructor for [LogParser]
  LogParser(super.value);

  /// Empty constructor for [ LogParser]
  LogParser.empty() : super(ParserList.empty());

  /// Copy the [LogParser]
  LogParser copyWith(ParserList value) => LogParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    return results.isEmpty
        ? <dynamic>[]
        : results.length > 1
            ? throw _wrongLength('.log()', results)
            : executedValue.length > 1
                ? throw _wrongArgLength('log()', executedValue)
                : executedValue.first is num && results.first is num
                    ? <dynamic>[
                        log(results.first as num) /
                            log(executedValue.first as num),
                      ]
                    : throw _wrongTypes('log()', results, executedValue);
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
      '${"  " * indent}LogParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.log(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// The [PowerParser] is used to evaluate the power of a number
class PowerParser extends FunctionParser {
  /// Constructor for [PowerParser]
  PowerParser(super.value);

  /// Empty constructor for [ PowerParser]
  PowerParser.empty() : super(ParserList.empty());

  /// Copy the [PowerParser]
  PowerParser copyWith(ParserList value) => PowerParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    if (results.isEmpty || executedValue.isEmpty) {
      return <dynamic>[];
    } else if (results.length > 1) {
      throw _wrongLength('.power()', results);
    } else if (executedValue.length > 1) {
      throw _wrongArgLength('.power()', executedValue);
    }
    final dynamic finalResults = results.first is num
        ? results.first
        : throw _wrongTypes('.power()', results, executedValue);
    final dynamic finalValue = executedValue.first is num
        ? executedValue.first
        : throw _wrongTypes('.power()', results, executedValue);
    return pow(finalResults as num, finalValue as num).isNaN
        ? <dynamic>[]
        : <dynamic>[pow(finalResults, finalValue)];
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
      '${"  " * indent}PowerParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.power(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// The [RoundParser] is used to evaluate the rounded value of a number
class RoundParser extends FunctionParser {
  /// Constructor for [RoundParser]
  RoundParser(super.value);

  /// Empty constructor for [ RoundParser]
  RoundParser.empty() : super(ParserList.empty());

  /// Copy the [RoundParser]
  RoundParser copyWith(ParserList value) => RoundParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    return results.isEmpty
        ? <dynamic>[]
        : results.length > 1
            ? throw _wrongLength('.round()', results)
            : executedValue.isEmpty ||
                    executedValue.length != 1 ||
                    executedValue.first is! num
                ? throw _wrongTypes('.round()', results, executedValue)
                : results.first is! num
                    ? throw _wrongTypes('.round()', results, executedValue)
                    : <dynamic>[
                        if (executedValue.isEmpty)
                          (results.first as num).round()
                        else
                          double.parse(
                            (results.first as num).toStringAsFixed(
                              executedValue.first as int,
                            ),
                          ),
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
      '${"  " * indent}RoundParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => value.isEmpty
      ? '.round()'
      : '.round(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
          '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// The [SqrtParser] is used to evaluate the square root of a number
class SqrtParser extends FhirPathParser {
  /// Constructor for [SqrtParser]
  SqrtParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.sqrt()', results)
              : results.first is num
                  ? (sqrt(results.first as num).isNaN
                      ? <dynamic>[]
                      : <dynamic>[sqrt(results.first as num)])
                  : throw _wrongTypes('.sqrt()', results, 'none');

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}SqrtParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.sqrt()';
}

/// The [TruncateParser] is used to evaluate the truncated value of a number
class TruncateParser extends FunctionParser {
  /// Constructor for [TruncateParser]
  TruncateParser(super.value);

  /// Empty constructor for [ TruncateParser]
  TruncateParser.empty() : super(ParserList.empty());

  /// Copy the [TruncateParser]
  TruncateParser copyWith(ParserList value) => TruncateParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _wrongLength('.truncate()', results)
              : results.first is num
                  ? <dynamic>[(results.first as num).toInt()]
                  : throw _wrongTypes('.truncate()', results, 'none');

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}TruncateParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) {
    return '.truncate(\n${value.prettyPrint(indent + 1)}\n'
        '${indent <= 0 ? "" : "  " * (indent - 1)})';
  }
}

Exception _wrongLength(String functionName, List<dynamic> results) =>
    FhirPathEvaluationException(
      'The function $functionName can only work on a collection'
      ' with 0 or 1 item.',
      collection: results,
    );

Exception _wrongArgLength(String functionName, List<dynamic> value) =>
    FhirPathEvaluationException(
      'The function $functionName must have an argument that '
      'evaluates to 0 or 1 item.',
      operation: functionName,
      arguments: value,
    );

Exception _wrongTypes(
  String functionName,
  List<dynamic> results,
  dynamic value,
) =>
    FhirPathEvaluationException(
      'The function $functionName cannot work with the types '
      'passed.',
      collection: results,
      arguments: value,
    );
