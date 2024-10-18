import 'package:fhir_r4/src/fhir_path/r4.dart';

/// The and() function returns the logical conjunction of the input parameters.
class AndStringParser extends OperatorParser {
  /// Constructor for [AndStringParser]
  AndStringParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedBefore = before.execute(results.toList(), passed);
    final executedAfter = after.execute(results.toList(), passed);

    final beforeBool = SingletonEvaluation.toBool(
      executedBefore,
      name: "parameter before 'and'",
      operation: 'and',
      collection: results,
    );
    final afterBool = SingletonEvaluation.toBool(
      executedAfter,
      name: "parameter after 'and'",
      operation: 'and',
      collection: results,
    );

    if ((beforeBool ?? false) && (afterBool ?? false)) {
      return <dynamic>[true];
    }

    if (beforeBool == false || afterBool == false) {
      return <dynamic>[false];
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
  String verbosePrint(int indent) => '${"  " * indent}AndStringParser'
      '\n${before.verbosePrint(indent + 1)}'
      '\n${after.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => 'and'
      '\n${"  " * indent}${before.prettyPrint(indent + 1)}'
      '\n${"  " * indent}${after.prettyPrint(indent + 1)}';
}

/// The xor() function returns the logical exclusive disjunction of the input
/// parameters. If exactly one of the input parameters is true, the result is
/// true. If both or neither of the input parameters are true, the result is
/// false.
class XorParser extends OperatorParser {
  /// Constructor for [XorParser]
  XorParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedBefore = before.execute(results.toList(), passed);
    final executedAfter = after.execute(results.toList(), passed);

    final beforeBool = SingletonEvaluation.toBool(
      executedBefore,
      name: "parameter before 'xor'",
      operation: 'xor',
      collection: results,
    );
    final afterBool = SingletonEvaluation.toBool(
      executedAfter,
      name: "parameter after 'xor'",
      operation: 'xor',
      collection: results,
    );

    if (beforeBool == null || afterBool == null) {
      return <dynamic>[];
    }

    if (!beforeBool && !afterBool) {
      return <dynamic>[false];
    }

    if (beforeBool && afterBool) {
      return <dynamic>[false];
    }

    return <dynamic>[true];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}XorParser'
      '\n${before.verbosePrint(indent + 1)}'
      '\n${after.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => 'xor'
      '\n${"  " * indent}${before.prettyPrint(indent + 1)}'
      '\n${"  " * indent}${after.prettyPrint(indent + 1)}';
}

/// The or() function returns the logical disjunction of the input parameters.
/// If either of the input parameters is true, the result is true. If both input
/// parameters are false, the result is false.
class OrStringParser extends OperatorParser {
  /// Constructor for [OrStringParser]
  OrStringParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedBefore = before.execute(results.toList(), passed);
    final executedAfter = after.execute(results.toList(), passed);

    final beforeBool = SingletonEvaluation.toBool(
      executedBefore,
      name: "parameter before 'or'",
      operation: 'or',
      collection: results,
    );
    final afterBool = SingletonEvaluation.toBool(
      executedAfter,
      name: "parameter after 'or'",
      operation: 'or',
      collection: results,
    );

    if ((beforeBool ?? false) || (afterBool ?? false)) {
      return <dynamic>[true];
    }

    if (beforeBool == null || afterBool == null) {
      return <dynamic>[];
    }

    return <dynamic>[false];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}OrStringParser'
      '\n${before.verbosePrint(indent + 1)}'
      '\n${after.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => 'or'
      '\n${"  " * indent}${before.prettyPrint(indent + 1)}'
      '\n${"  " * indent}${after.prettyPrint(indent + 1)}';
}

/// The implies() function returns the logical implication of the input
/// parameters. If the first input parameter is true and the second input
/// parameter is false, the result is false. If the first input parameter is
/// false, the result is true. If the first input parameter is true and the
/// second input parameter is true, the result is true.
class ImpliesParser extends OperatorParser {
  /// Constructor for [ImpliesParser]
  ImpliesParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedBefore = before.execute(results.toList(), passed);
    final executedAfter = after.execute(results.toList(), passed);

    final beforeBool = SingletonEvaluation.toBool(
      executedBefore,
      name: "parameter before 'implies'",
      operation: 'implies',
      collection: results,
    );
    final afterBool = SingletonEvaluation.toBool(
      executedAfter,
      name: "parameter after 'implies'",
      operation: 'implies',
      collection: results,
    );

    if (beforeBool ?? false) {
      return afterBool != null ? <dynamic>[afterBool] : <dynamic>[];
    }

    if (beforeBool == false) {
      return <dynamic>[true];
    }

    if (afterBool ?? false) {
      return <dynamic>[true];
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
  String verbosePrint(int indent) => '${"  " * indent}ImpliesParser'
      '\n${before.verbosePrint(indent + 1)}'
      '\n${after.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => 'implies('
      '\n${"  " * indent}${before.prettyPrint(indent + 1)}'
      '\n${"  " * indent}${after.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}
