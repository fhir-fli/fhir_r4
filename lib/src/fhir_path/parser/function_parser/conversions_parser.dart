import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

/// http://hl7.org/fhirpath/#iifcriterion-expression-true-result-collection-otherwise-result-collection-collection
/// The iif function in FHIRPath is an immediate if, also known as a conditional
/// operator (such as C’s ? : operator).
/// The criterion expression is expected to evaluate to a Boolean.
/// See: http://hl7.org/fhirpath/#singleton-evaluation-of-collections for rules
/// of Boolean evaluation.
/// Any collection with a single non-boolean item is true.
///
/// If criterion is true, the function returns the value of the true-result
/// argument.
/// If criterion is false or an empty collection, the function returns
/// otherwise-result, unless the optional otherwise-result is not given, in
/// which case the function returns an empty collection.
/// Note that short-circuit behavior is expected in this function. In other
/// words, true-result should only be evaluated if the criterion evaluates to
/// true, and otherwise-result should only be evaluated otherwise. For
/// implementations, this means delaying evaluation of the arguments.
class IifParser extends FunctionParser {
  /// Constructor for a IifParser
  IifParser(super.value);

  /// An empty IifParser
  IifParser.empty() : super(ParserList.empty());

  /// Copy the IifParser
  IifParser copyWith(ParserList value) => IifParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    // The regular .execute method on CommaParser does not implement the
    // short-circuit logic. Bespoke execution path required.
    if (value.first is! CommaParser) {
      // While this happens at eval time, it is due to incorrect syntax
      throw FhirPathInvalidExpressionException(
        'The function iif must have a criterion expression, followed by '
        ' a true-result collection, and an optional other-wise-result. '
        'Instead it has: ${value.first}',
      );
    }

    final criterionResultParser = value.first as CommaParser;

    FhirPathParser criterionExpressionParser;
    FhirPathParser trueResultParser;
    FhirPathParser? otherwiseResultParser;

    if (criterionResultParser.before.first is CommaParser) {
      criterionExpressionParser =
          (criterionResultParser.before.first as CommaParser).before;
      trueResultParser =
          (criterionResultParser.before.first as CommaParser).after;
      otherwiseResultParser = criterionResultParser.after;
    } else {
      criterionExpressionParser = criterionResultParser.before;
      trueResultParser = criterionResultParser.after;
    }

    final criterionCollection =
        criterionExpressionParser.execute(results.toList(), passed);

    final criterion = SingletonEvaluation.toBool(
      criterionCollection,
      name: 'criterion expression',
      operation: 'iif',
      collection: results,
    );

    // Short-circuit: Only evaluate what matches the criterion.
    if (criterion ?? false) {
      final newResults = trueResultParser.execute(results, passed);
      return newResults;
    } else {
      if (otherwiseResultParser == null) {
        return <dynamic>[];
      } else {
        return otherwiseResultParser.execute(results, passed);
      }
    }
  }

  @override
  String toString() => 'IifParser: $value';

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) =>
      '${"  " * indent}IifParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.iif(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// http://hl7.org/fhirpath/#toboolean-boolean
/// If the input collection contains a single item, this function will return a
/// single boolean if:
/// the item is a Boolean
/// the item is an Integer and is equal to one of the possible integer
///   representations of Boolean values
/// the item is a Decimal that is equal to one of the possible decimal
///   representations of Boolean values
/// the item is a String that is equal to one of the possible string
///   representations of Boolean values
/// If the item is not one the above types, or the item is a String, Integer,
///   or Decimal, but is not equal to one of the possible values convertible
///   to a Boolean, the result is empty.
class ToBooleanParser extends FhirPathParser {
  /// Constructor for a ToBooleanParser
  ToBooleanParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.toBoolean()', results)
              : _isNotAcceptedType(results)
                  ? <dynamic>[]
                  : results.first == true ||
                          results.first == 1 ||
                          <String>['true', 't', 'yes', 'y', '1', '1.0']
                                  .indexWhere(
                                (String element) =>
                                    element ==
                                    results.first.toString().toLowerCase(),
                              ) !=
                              -1
                      ? <dynamic>[true]
                      : results.first == false ||
                              results.first == 0 ||
                              <String>[
                                    'false',
                                    'f',
                                    'no',
                                    'n',
                                    '0',
                                    '0.0',
                                  ].indexWhere(
                                    (String element) =>
                                        element ==
                                        results.first.toString().toLowerCase(),
                                  ) !=
                                  -1
                          ? <dynamic>[false]
                          : <dynamic>[];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ToBooleanParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.toBoolean()';
}

/// http://hl7.org/fhirpath/#convertstoboolean-boolean
/// If the input collection contains a single item, this function will return
/// true if:
/// the item is a Boolean
/// the item is an Integer that is equal to one of the possible integer
///   representations of Boolean values
/// the item is a Decimal that is equal to one of the possible decimal
///   representations of Boolean values
/// the item is a String that is equal to one of the possible string
///   representations of Boolean values
class ConvertsToBooleanParser extends FhirPathParser {
  /// Constructor for a ConvertsToBooleanParser
  ConvertsToBooleanParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.convertsToBoolean()', results)
              : _isNotAcceptedType(results)
                  ? <dynamic>[false]
                  : results.first is bool ||
                          results.first == 1 ||
                          results.first == 0 ||
                          <String>[
                                'true',
                                't',
                                'yes',
                                'y',
                                '1',
                                '1.0',
                                'false',
                                'f',
                                'no',
                                'n',
                                '0',
                                '0.0',
                              ].indexWhere(
                                (String element) =>
                                    element ==
                                    results.first.toString().toLowerCase(),
                              ) !=
                              -1
                      ? <dynamic>[true]
                      : <dynamic>[false];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ConvertsToBooleanParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.convertsToBoolean()';
}

/// Converts input to an [Integer] if possible
class ToIntegerParser extends FhirPathParser {
  /// Constructor for a ToIntegerParser
  ToIntegerParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.toInteger()', results)
              : _isNotAcceptedType(results)
                  ? <dynamic>[false]
                  : results.first is bool
                      ? <dynamic>[if (results.first == true) 1 else 0]
                      : results.first is num
                          ? <dynamic>[(results.first as num).toInt()]
                          : int.tryParse(results.first as String) != null
                              ? <dynamic>[int.parse(results.first as String)]
                              : <dynamic>[];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ToIntegerParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.toInteger()';
}

/// Checks if input can be converted to an [Integer]
class ConvertsToIntegerParser extends FhirPathParser {
  /// Constructor for [ConvertsToIntegerParser]
  ConvertsToIntegerParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.convertsToInteger()', results)
              : _isNotAcceptedType(results)
                  ? <dynamic>[]
                  : results.first is bool
                      ? <dynamic>[true]
                      : results.first is num
                          ? <dynamic>[true]
                          : int.tryParse(results.first as String) != null
                              ? <dynamic>[true]
                              : <dynamic>[false];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ConvertsToIntegerParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.convertsToInteger()';
}

/// Converts input to an [Date] if possible
class ToDateParser extends FhirPathParser {
  /// Constructor for [ToDateParser]
  ToDateParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.toDate()', results)
              : FhirDate.tryParse(results.first.toString()) != null
                  ? <dynamic>[FhirDate.fromString(results.first.toString())]
                  : <dynamic>[];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ToDateParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.toDate()';
}

/// Checks if input can be converted to a [Date]
class ConvertsToDateParser extends FhirPathParser {
  /// Constructor for [ConvertsToDateParser]
  ConvertsToDateParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.convertsToDate()', results)
              : <dynamic>[FhirDate.tryParse(results.first.toString()) != null];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ConvertsToDateParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.convertsToDate()';
}

/// Converts input to [FhirDateTime] if possible
class ToDateTimeParser extends FhirPathParser {
  /// Constructor for [ToDateTimeParser]
  ToDateTimeParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.toDateTime()', results)
              : FhirDateTime.tryParse(results.first.toString()) != null
                  ? <dynamic>[FhirDateTime.fromString(results.first.toString())]
                  : <dynamic>[];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ToDateTimeParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.toDateTime()';
}

/// Checks if input can be converted to a [FhirDateTime]
class ConvertsToDateTimeParser extends FhirPathParser {
  /// Constructor for [ConvertsToDateTimeParser]
  ConvertsToDateTimeParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.convertsToDateTime()', results)
              : FhirDateTime.tryParse(results.first.toString()) != null
                  ? <dynamic>[true]
                  : <dynamic>[];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ConvertsToDateTimeParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.convertsToDateTime()';
}

/// Converts input to a [Decimal] if possible
class ToDecimalParser extends FhirPathParser {
  /// Constructor for [ToDecimalParser]
  ToDecimalParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.toDecimal()', results)
              : _isNotAcceptedType(results)
                  ? <dynamic>[false]
                  : results.first is bool
                      ? <dynamic>[if (results.first == true) 1 else 0]
                      : results.first is num
                          ? <dynamic>[(results.first as num).toDouble()]
                          : double.tryParse(results.first as String) != null
                              ? <dynamic>[double.parse(results.first as String)]
                              : <dynamic>[];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ToDecimalParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.toDecimal()';
}

/// Checks if input can be converted into a [Decimal]
class ConvertsToDecimalParser extends FhirPathParser {
  /// Constructor for [ConvertsToDecimalParser]
  ConvertsToDecimalParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.convertsToDecimal()', results)
              : _isNotAcceptedType(results)
                  ? <dynamic>[]
                  : results.first is bool
                      ? <dynamic>[true]
                      : results.first is num
                          ? <dynamic>[true]
                          : double.tryParse(results.first as String) != null
                              ? <dynamic>[true]
                              : <dynamic>[false];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ConvertsToDecimalParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.convertsToDecimal()';
}

/// Converts input to a [String] if possible
class ToStringParser extends FhirPathParser {
  /// Constructor for [ToStringParser]
  ToStringParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    return results.isEmpty
        ? <dynamic>[]
        : results.length > 1
            ? throw _conversionException('.toString()', results)
            : _isAllTypes(results)
                ? <dynamic>[false]
                : <dynamic>[results.first.toString()];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ToStringParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.toString()';
}

/// Checks if input can be converted to a [String]
class ConvertsToStringParser extends FhirPathParser {
  /// Constructor for [ConvertsToStringParser]
  ConvertsToStringParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.convertsToString()', results)
              : _isAllTypes(results)
                  ? <dynamic>[false]
                  : <dynamic>[true];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ConvertsToStringParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.convertsToString()';
}

/// Converts input to a [Time] if possible
class ToTimeParser extends FhirPathParser {
  /// Constructor for [ToTimeParser]
  ToTimeParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.toTime()', results)
              : results.first is FhirTime
                  ? <dynamic>[results.first]
                  : results.first is String &&
                          FhirTime.tryParse(results.first) != null
                      ? <dynamic>[FhirTime.tryParse(results.first)]
                      : <dynamic>[];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ToTimeParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.toTime()';
}

/// Checks if input can be converted to a [Time]
class ConvertsToTimeParser extends FhirPathParser {
  /// Constructor for [ConvertsToTimeParser]
  ConvertsToTimeParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.convertsToTime()', results)
              : results.first is FhirTime ||
                      (results.first is String &&
                          FhirTime.tryParse(results.first) != null)
                  ? <dynamic>[true]
                  : <dynamic>[false];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ConvertsToTimeParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.convertsToTime()';
}

/// Converts input to a [ValidatedQuantity] if possible
class ToQuantityParser extends FunctionParser {
  /// Constructor for a ToQuantityParser
  ToQuantityParser(super.value);

  /// An empty ToQuantityParser
  ToQuantityParser.empty() : super(ParserList.empty());

  /// Copy the ToQuantityParser
  ToQuantityParser copyWith(ParserList value) => ToQuantityParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _conversionException('.toQuantity()', results)
              : results.first is ValidatedQuantity
                  ? <dynamic>[results.first]
                  : results.first is num
                      ? <dynamic>[
                          ValidatedQuantity(
                            value: UcumDecimal.fromString(
                              results.first.toString(),
                            ),
                            unit: '1',
                          ),
                        ]
                      : results.first is String
                          ? <dynamic>[
                              ValidatedQuantity.fromString(
                                results.first as String,
                              ),
                            ]
                          : <dynamic>[];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ToQuantityParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.toQuantity()';
}

/// Checks if input can be converted to a [ValidatedQuantity]
class ConvertsToQuantityParser extends FunctionParser {
  /// Constructor for a ConvertsToQuantityParser
  ConvertsToQuantityParser(super.value);

  /// An empty ConvertsToQuantityParser
  ConvertsToQuantityParser.empty() : super(ParserList.empty());

  /// Copy the ConvertsToQuantityParser
  ConvertsToQuantityParser copyWith(ParserList value) =>
      ConvertsToQuantityParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    if (results.isEmpty) {
      return <dynamic>[];
    } else {
      /// if there's more than 1 item in context, throw exception
      if (results.length > 1) {
        throw _conversionException('.convertsToQuantity()', results);
      }

      /// otherwise if the first item is a Quantity already, a num or a
      /// bool, this is considered true
      else if ((results.first is ValidatedQuantity &&
              (results.first as ValidatedQuantity).isValid()) ||
          results.first is num ||
          results.first is bool) {
        return <dynamic>[true];
      } else if (results.first is String &&
          ValidatedQuantity.fromString(results.first as String).isValid()) {
        return <dynamic>[true];
      }

      /// Otherwise it's definitely false
      else {
        return <dynamic>[false];
      }
    }
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ConvertsToQuantityParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.convertsToQuantity()';
}

bool _isNotAcceptedType(List<dynamic> results) =>
    results.first is! bool && results.first is! num && results.first is! String;

bool _isAllTypes(List<dynamic> results) =>
    results.first is! bool &&
    results.first is! num &&
    results.first is! String &&
    results.first is! FhirDate &&
    results.first is! FhirDateTime &&
    results.first is! FhirTime &&
    results.first is! DateTime &&
    results.first is! ValidatedQuantity;

Exception _conversionException(String function, List<dynamic> results) =>
    FhirPathEvaluationException(
      'The function $function only accepts lists with 0 or 1 items.',
      operation: function,
      collection: results,
    );
