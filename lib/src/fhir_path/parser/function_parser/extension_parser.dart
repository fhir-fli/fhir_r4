import 'package:collection/collection.dart';

import 'package:fhir_r4/src/fhir_path/r4.dart';

/// The [SumParser] is used to add all of the numbers in a collection
class SumParser extends FhirPathParser {
  /// Constructor for [SumParser]
  SumParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[
        results
            .map(
              (dynamic e) => e is num
                  ? e
                  : throw FhirPathEvaluationException(
                      'sum() can only add numbers.',
                      operation: 'sum',
                      arguments: e,
                      collection: results,
                    ),
            )
            .sum,
      ];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}SumParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.sum()';
}

/// The [MinParser] is used to find the smallest number in a collection
class MinParser extends FhirPathParser {
  /// Constructor for [MinParser]
  MinParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[
        results
            .map(
              (dynamic e) => e is num
                  ? e
                  : throw FhirPathEvaluationException(
                      'min() can only operate on numbers.',
                      operation: 'min',
                      arguments: e,
                      collection: results,
                    ),
            )
            .min,
      ];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}MinParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.min()';
}

/// The [MaxParser] is used to find the largest number in a collection
class MaxParser extends FhirPathParser {
  /// Constructor for [MaxParser]
  MaxParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[
        results
            .map(
              (dynamic e) => e is num
                  ? e
                  : throw FhirPathEvaluationException(
                      'max() can only operate on numbers.',
                      operation: 'max',
                      arguments: e,
                      collection: results,
                    ),
            )
            .max,
      ];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}MaxParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.max()';
}

/// The [AvgParser] is used to find the average of all the numbers in a
/// collection
class AvgParser extends FhirPathParser {
  /// Constructor for [AvgParser]
  AvgParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[
        results
            .map(
              (dynamic e) => e is num
                  ? e
                  : throw FhirPathEvaluationException(
                      'avg() can only operate on numbers.',
                      operation: 'avg',
                      arguments: e,
                      collection: results,
                    ),
            )
            .average,
      ];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}AvgParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.avg()';
}

/// The [MedianParser] is used to find the median of all the numbers in a
class AnswersParser extends FhirPathParser {
  /// Constructor for [AnswersParser]
  AnswersParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final descendants = DescendantsParser().execute(results, passed);
    final answerMaps = descendants.where(
      (dynamic element) =>
          (element is Map<String, dynamic>) && element.containsKey('answer'),
    );
    final answers = <dynamic>[];
    for (final element in answerMaps) {
      answers.addAll(
        (element as Map<String, dynamic>)['answer'] as Iterable<dynamic>,
      );
    }
    return answers;
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}AnswersParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.answers()';
}

/// The [MedianParser] is used to find the median of all the numbers in a
class OrdinalParser extends FhirPathParser {
  /// Constructor for [OrdinalParser]
  OrdinalParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final newResults = <dynamic>[];

    List<dynamic> checkForOrdinalValues(List<dynamic> list) {
      final tempResults = <dynamic>[];

      /// check each result
      for (final dynamic val in list) {
        /// if it's a Map (if it's not, then we can't use it with Ordinal)
        if (val is Map) {
          /// First we check the element for extensions
          if (val.keys.contains('extension')) {
            /// get those extensions
            final dynamic extension = val['extension'];

            /// generally we expect the extension to be a list
            if (extension is List) {
              /// for each extension in the list
              for (final dynamic ext in extension) {
                /// if it is defined as an ordinalValue
                if (ext['url'] ==
                    'http://hl7.org/fhir/StructureDefinition/ordinalValue') {
                  /// Safety check just to ensure there is a value
                  if (ext['valueDecimal'] != null) {
                    /// add that value to the results to return
                    tempResults.add(ext['valueDecimal']);
                  }
                }
              }
            } else

            /// just in case it's a Map and not a list
            if (extension is Map) {
              /// if it is defined as an ordinalValue
              if (extension['url'] ==
                  'http://hl7.org/fhir/StructureDefinition/ordinalValue') {
                /// Safety check just to ensure there is a value
                if (extension['valueDecimal'] != null) {
                  /// add that value to the results to return
                  tempResults.add(extension['valueDecimal']);
                }
              }
            }
          }
        }
      }
      return tempResults;
    }

    newResults.addAll(checkForOrdinalValues(results));

    for (final dynamic result in results) {
      if (result is! Map) {
        break;
      }

      for (final element in polymorphicPrefixes) {
        if (result['${element}Coding'] != null) {
          newResults.addAll(
            checkForOrdinalValues(<dynamic>[result['${element}Coding']]),
          );
        }
        if (result['${element}Code'] != null) {
          newResults.addAll(
            checkForOrdinalValues(<dynamic>[result['${element}Code']]),
          );
        }
      }
    }

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
  String verbosePrint(int indent) => '${"  " * indent}OrdinalParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.ordinal()';
}
