import 'package:collection/collection.dart';

import 'package:fhir_r4/src/fhir_path/r4.dart';

/// Returns true if the input collection is empty ({ }) and false otherwise.
class EmptyParser extends FhirPathParser {
  /// Constructor for [EmptyParser]
  EmptyParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty ? <dynamic>[true] : <dynamic>[false];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}EmptyParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.empty()';
}

/// Returns true if the input collection is not empty and false otherwise.
class HasValueParser extends FhirPathParser {
  /// Constructor for [HasValueParser]
  HasValueParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  late ParserList value;

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    // Returns true if the input collection contains a single value which is a
    //FHIR primitive,...
    if (results.length != 1) {
      return <dynamic>[false];
    }

    final dynamic element = results.first;

    if (element == null) {
      return <dynamic>[false];
    }

    // ...and it has a primitive value
    // (e.g. as opposed to not having a value and just having extensions).

    if (element is Map<String, dynamic>) {
      // element is a Map, most likely an answer. Introspect further...
      return <dynamic>[
        element.entries.any(
          (MapEntry<String, dynamic> mapEntry) =>
              mapEntry.key.startsWith('value') && mapEntry.value != null,
        ),
      ];
    } else {
      // element is a Dart primitive
      return <dynamic>[true];
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
  String verbosePrint(int indent) =>
      '${"  " * indent}HasValueParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.hasValue(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// Returns true if the collection has any elements, and false otherwise.
/// This is the opposite of empty(), and as such is a shorthand for
/// empty().not(). If the input collection is empty ({ }), the result is false.
/// The function can also take an optional criteria to be applied to the
/// collection prior to the determination of the exists. In this case, the
/// function is shorthand for where(criteria).exists().
/// Note that a common term for this function is any.
class ExistsParser extends FunctionParser {
  /// Constructor for [ExistsParser]
  ExistsParser(super.value);

  /// Empty constructor for [ ExistsParser]
  ExistsParser.empty() : super(ParserList.empty());

  /// Copy the [ExistsParser]
  ExistsParser copyWith(ParserList value) => ExistsParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final returnList = IterationContext.withIterationContext(
      (IterationContext iterationContext) {
        final iterationResult = <dynamic>[];
        results.forEachIndexed((int i, dynamic element) {
          iterationContext.indexValue = i;
          iterationContext.thisValue = element;
          final newResult = value.execute(<dynamic>[element], passed);
          if (newResult.isNotEmpty) {
            if (!(newResult.length == 1 && newResult.first == false)) {
              iterationResult.add(element);
            }
          }
        });
        return iterationResult;
      },
      passed,
    );

    return <dynamic>[returnList.isNotEmpty];
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
      '${"  " * indent}ExistsParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.exists(${value.isEmpty ? "" : "\n${"  " * indent}${value.prettyPrint(indent + 1)}\n"}'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// Returns true if the input collection is not empty and false otherwise.
class AllParser extends FunctionParser {
  /// Constructor for [AllParser]
  AllParser(super.value);

  /// Empty constructor for [AllParser]
  AllParser.empty() : super(ParserList.empty());

  /// Copy the [AllParser]
  AllParser copyWith(ParserList value) => AllParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    if (results.isEmpty) {
      return <dynamic>[true];
    }
    return IterationContext.withIterationContext(
      (IterationContext iterationContext) {
        var allResult = true;
        results.forEachIndexed((int i, dynamic r) {
          iterationContext.thisValue = r;
          iterationContext.indexValue = i;
          final executedValue = value.execute(<dynamic>[r], passed);
          if (SingletonEvaluation.toBool(
                executedValue,
                name: 'expression in all()',
                operation: 'all',
              ) !=
              true) {
            allResult = false;
            return;
          }
        });
        return <dynamic>[allResult];
      },
      passed,
    );
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
      '${"  " * indent}AllParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) {
    if (value.isEmpty) {
      return '.all()';
    }
    return '.all(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
        '${indent <= 0 ? "" : "  " * (indent - 1)})';
  }
}

/// Takes a collection of Boolean values and returns true if all the items are
/// true. If any items are false, the result is false. If the input is empty
/// ({ }), the result is true.
class AllTrueParser extends FhirPathParser {
  /// Constructor for [AllTrueParser]
  AllTrueParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    if (results.isEmpty) {
      return <dynamic>[true];
    }
    results.removeWhere((dynamic element) => element == true);
    return <dynamic>[results.isEmpty];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}AllTrueParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.allTrue()';
}

/// Takes a collection of Boolean values and returns true if any of the items
/// are true. If all the items are false, or if the input is empty ({ }), the
/// result is false.
class AnyTrueParser extends FhirPathParser {
  /// Constructor for [AnyTrueParser]
  AnyTrueParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    if (results.isEmpty) {
      return <dynamic>[false];
    }
    results.retainWhere((dynamic element) => element == true);
    return <dynamic>[results.isNotEmpty];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}AnyTrueParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.anyTrue()';
}

/// Takes a collection of Boolean values and returns true if all the items are
/// false. If any items are true, the result is false. If the input is empty
/// ({ }), the result is true.
class AllFalseParser extends FhirPathParser {
  /// Constructor for [AllFalseParser]
  AllFalseParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    if (results.isEmpty) {
      return <dynamic>[true];
    }
    results.removeWhere((dynamic element) => element == false);
    return <dynamic>[results.isEmpty];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}AllFalseParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.allFalse()';
}

/// Takes a collection of Boolean values and returns true if any of the items
/// are false. If all the items are true, or if the input is empty ({ }), the
/// result is false.
class AnyFalseParser extends FhirPathParser {
  /// Constructor for [AnyFalseParser]
  AnyFalseParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    if (results.isEmpty) {
      return <dynamic>[false];
    }
    results.retainWhere((dynamic element) => element == false);
    return <dynamic>[results.isNotEmpty];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}AnyFalseParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.anyFalse()';
}

/// Returns true if the input collection is empty ({ }) and false otherwise.
class SubsetOfParser extends FunctionParser {
  /// Constructor for [SubsetOfParser]
  SubsetOfParser(super.value);

  /// Empty constructor for [ SubsetOfParser]
  SubsetOfParser.empty() : super(ParserList.empty());

  /// Copy the [SubsetOfParser]
  SubsetOfParser copyWith(ParserList value) => SubsetOfParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    if (results.isEmpty) {
      return <dynamic>[true];
    } else {
      final executedValue = value.execute(results.toList(), passed);
      for (final dynamic r in results) {
        if (notFoundInList(executedValue, r)) {
          return <dynamic>[false];
        }
      }
      return <dynamic>[true];
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
  String verbosePrint(int indent) =>
      '${"  " * indent}SubsetOfParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.subsetOf(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// Returns true if the input collection is not empty ({ }) and false otherwise.
class SupersetOfParser extends FunctionParser {
  /// Constructor for [SupersetOfParser]
  SupersetOfParser(super.value);

  /// Empty constructor for [ SupersetOfParser]
  SupersetOfParser.empty() : super(ParserList.empty());

  /// Copy the [SupersetOfParser]
  SupersetOfParser copyWith(ParserList value) => SupersetOfParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    if (results.isEmpty) {
      return <dynamic>[false];
    } else {
      final executedValue = value.execute(results.toList(), passed);
      for (final dynamic v in executedValue) {
        if (notFoundInList(results, v)) {
          return <dynamic>[false];
        }
      }
      return <dynamic>[true];
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
  String verbosePrint(int indent) =>
      '${"  " * indent}SupersetOfParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.supersetOf(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// Returns the number of elements in the input collection.
class CountParser extends FhirPathParser {
  /// Constructor for [CountParser]
  CountParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[results.length];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}CountParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.count()';
}

/// Returns the number of elements in the input collection.
class DistinctParser extends FhirPathParser {
  /// Constructor for [DistinctParser]
  DistinctParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final resultsList = <dynamic>[];
    for (final dynamic r in results) {
      if (notFoundInList(resultsList, r)) {
        resultsList.add(r);
      }
    }
    return resultsList;
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}DistinctParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.distinct()';
}

/// Returns true if the input collection is not empty ({ }) and false otherwise.
class IsDistinctParser extends FhirPathParser {
  /// Constructor for [IsDistinctParser]
  IsDistinctParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final resultsList = <dynamic>[];
    for (final dynamic r in results) {
      if (notFoundInList(resultsList, r)) {
        resultsList.add(r);
      }
    }
    return <dynamic>[resultsList.length == results.length];
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}IsDistinctParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.isDistinct()';
}
