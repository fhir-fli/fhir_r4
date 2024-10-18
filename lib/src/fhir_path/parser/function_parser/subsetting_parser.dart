import 'package:collection/collection.dart';

import 'package:fhir_r4/src/fhir_path/r4.dart';

/// Returns one result from a collection, or an empty collection if the
/// input collection is empty, else it throws an error
class SingleParser extends FhirPathParser {
  /// Constructor for [SingleParser]
  SingleParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.length == 1
          ? results
          : results.isEmpty
              ? <dynamic>[]
              : throw FhirPathEvaluationException(
                  'The List<dynamic> $results is only allowed to contain one '
                  'item if evaluated using the .single() function',
                  operation: '.single()',
                  collection: results,
                );

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}SingleParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.single()';
}

/// Returns the first result from a collection, or an empty collection if the
/// input collection is empty
class FirstParser extends FhirPathParser {
  /// Constructor for [FirstParser]
  FirstParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty ? <dynamic>[] : <dynamic>[results.first];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}FirstParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.first()';
}

/// Returns the last result from a collection, or an empty collection if the
/// input collection is empty
class LastParser extends FhirPathParser {
  /// Constructor for [LastParser]
  LastParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty ? <dynamic>[] : <dynamic>[results.last];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}LastParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.last()';
}

/// Returns all but the first result from a collection, or an empty collection
/// if the input collection is empty
class TailParser extends FhirPathParser {
  /// Constructor for [TailParser]
  TailParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    if (results.length < 2) {
      return <dynamic>[];
    } else {
      results.removeAt(0);
      return results;
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
  String verbosePrint(int indent) => '${"  " * indent}TailParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.tail()';
}

/// Returns the first [n] results from a collection, or an empty collection if
/// the input collection is empty
class FpSkipParser extends FunctionParser {
  /// Constructor for [FpSkipParser]
  FpSkipParser(super.value);

  /// Empty constructor for [ FpSkipParser]
  FpSkipParser.empty() : super(ParserList.empty());

  /// Copy the [FpSkipParser]
  FpSkipParser copyWith(ParserList value) => FpSkipParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    return executedValue.length != 1 || executedValue.first is! int
        ? throw FhirPathEvaluationException(
            'The argument passed to the .skip() function was not valid.',
            operation: '.skip()',
            arguments: value,
          )
        : executedValue.first == null
            ? throw FhirPathEvaluationException(
                'The value for .skip() was not a number: ${executedValue.first}',
                operation: '.skip()',
                arguments: executedValue.first,
              )
            : (executedValue.first as int) <= 0
                ? results
                : results.isEmpty ||
                        (executedValue.first as int) >= results.length
                    ? <dynamic>[]
                    : results.sublist(executedValue.first as int);
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
      '${"  " * indent}SkipParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.skip(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// Returns the first [n] results from a collection, or an empty collection if
/// the input collection is empty
class TakeParser extends FunctionParser {
  /// Constructor for [TakeParser]
  TakeParser(super.value);

  /// Empty constructor for [ TakeParser]
  TakeParser.empty() : super(ParserList.empty());

  /// Copy the [TakeParser]
  TakeParser copyWith(ParserList value) => TakeParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    final newResults = value.length != 1 || value.first is! IntegerParser
        ? throw FhirPathEvaluationException(
            'The argument passed to the .take() function was not valid:',
            operation: '.take()',
            arguments: value,
          )
        : executedValue.first is! int
            ? throw FhirPathEvaluationException(
                'The value for .take() was not a number: $value',
                operation: '.take()',
                arguments: value,
              )
            : (executedValue.first as int) <= 0 || results.isEmpty
                ? <dynamic>[]
                : (executedValue.first as int) >= results.length
                    ? results
                    : results.sublist(0, executedValue.first as int);
    return newResults;
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
      '${"  " * indent}TakeParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.take(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// Returns the first [n] results from a collection, or an empty collection if
/// the input collection is empty
class IntersectParser extends FunctionParser {
  /// Constructor for [IntersectParser]
  IntersectParser(super.value);

  /// Empty constructor for [ IntersectParser]
  IntersectParser.empty() : super(ParserList.empty());

  /// Copy the [IntersectParser]
  IntersectParser copyWith(ParserList value) => IntersectParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final other = value.execute(results.toList(), passed);
    final inBag = <dynamic>[...results];

    // Eliminate duplicates in input
    final outBag = <dynamic>[];
    for (final dynamic item in inBag) {
      if (outBag.indexWhere(
            (dynamic otherItem) =>
                const DeepCollectionEquality().equals(item, otherItem),
          ) ==
          -1) {
        outBag.add(item);
      }
    }

    // Intersect
    outBag.removeWhere(
      (dynamic e) =>
          other.indexWhere(
            (dynamic element) =>
                const DeepCollectionEquality().equals(e, element),
          ) ==
          -1,
    );

    return outBag;
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
      '${"  " * indent}IntersectParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.intersect(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// Returns the first [n] results from a collection, or an empty collection if
/// the input collection is empty
class ExcludeParser extends FunctionParser {
  /// Constructor for [ExcludeParser]
  ExcludeParser(super.value);

  /// Empty constructor for [ ExcludeParser]
  ExcludeParser.empty() : super(ParserList.empty());

  /// Copy the [ExcludeParser]
  ExcludeParser copyWith(ParserList value) => ExcludeParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    results.removeWhere(
      (dynamic e) =>
          executedValue.indexWhere(
            (dynamic element) =>
                const DeepCollectionEquality().equals(e, element),
          ) !=
          -1,
    );
    return results;
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
      '${"  " * indent}ExcludeParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.exclude(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}
