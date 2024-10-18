import 'package:fhir_r4/src/fhir_path/r4.dart';

/// The FHIRPath specification includes a number of functions that are
/// used to manipulate strings. These are all of the functions that are
/// used to manipulate strings in FHIRPath

/// The [IndexOfParser] is used to find the index of a substring within
class IndexOfParser extends FunctionParser {
  /// Constructor for [IndexOfParser]
  IndexOfParser(super.value);

  /// Empty constructor for [ IndexOfParser]
  IndexOfParser.empty() : super(ParserList.empty());

  /// Copy the [IndexOfParser]
  IndexOfParser copyWith(ParserList value) => IndexOfParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    return results.isEmpty
        ? <dynamic>[]
        : results.length > 1
            ? throw _requiresList('.indexOf()', results)
            : executedValue.first is! String
                ? throw _requiresString('.indexOf()', results)
                : results.first.toString() == ''
                    ? <dynamic>[]
                    : <dynamic>[
                        results.first
                            .toString()
                            .indexOf(executedValue.first as String),
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
      '${"  " * indent}IndexOfParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.indexOf(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// The [SubstringParser] is used to extract a substring from a string
class SubstringParser extends FunctionParser {
  /// Constructor for [SubstringParser]
  SubstringParser(super.value);

  /// Empty constructor for [ SubstringParser]
  SubstringParser.empty() : super(ParserList.empty());

  /// Copy the [SubstringParser]
  SubstringParser copyWith(ParserList value) => SubstringParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    return results.isEmpty
        ? <dynamic>[]
        : results.length > 1
            ? throw _requiresList('.substring()', results)
            : (results.first is! String)
                ? throw _requiresString('.substring()', results)
                : executedValue.isNotEmpty &&
                        executedValue.first is int &&
                        (((executedValue.first as int) >=
                                (results.first as String).length) ||
                            (executedValue.first as int) < 0)
                    ? <dynamic>[]
                    : executedValue.length == 1 && executedValue.first is int
                        ? <dynamic>[
                            results.first
                                .toString()
                                .substring(executedValue.first as int),
                          ]
                        : executedValue.length == 2 &&
                                executedValue.first is int &&
                                executedValue.last is int
                            ? <dynamic>[
                                results.first.toString().substring(
                                      executedValue.first as int,
                                      ((executedValue.first as int) +
                                                  (executedValue.last as int)) >
                                              results.first.toString().length
                                          ? results.first.toString().length
                                          : ((executedValue.first as int) +
                                              (executedValue.last as int)),
                                    ),
                              ]
                            : throw FhirPathEvaluationException(
                                'The function .substring() was not provided the '
                                ' proper parameters.',
                                operation: '.substring()',
                                collection: results,
                                arguments: executedValue,
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
      '${"  " * indent}SubstringParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.substring(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// The [StartsWithParser] is used to determine if a string starts with
/// a certain substring
class StartsWithParser extends FunctionParser {
  /// Constructor for [StartsWithParser]
  StartsWithParser(super.value);

  /// Empty constructor for [ StartsWithParser]
  StartsWithParser.empty() : super(ParserList.empty());

  /// Copy the [StartsWithParser]
  StartsWithParser copyWith(ParserList value) => StartsWithParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    return results.isEmpty
        ? <dynamic>[]
        : results.length > 1
            ? throw _requiresList('.startsWith()', results)
            : executedValue.first is! String
                ? throw _requiresString('.startsWith()', results)
                : results.first.toString() == ''
                    ? <dynamic>[true]
                    : <dynamic>[
                        results.first
                            .toString()
                            .startsWith(executedValue.first as String),
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
      '${"  " * indent}StartsWithParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.startsWith(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// The [EndsWithParser] is used to determine if a string ends with
class EndsWithParser extends FunctionParser {
  /// Constructor for [EndsWithParser]
  EndsWithParser(super.value);

  /// Empty constructor for [ EndsWithParser]
  EndsWithParser.empty() : super(ParserList.empty());

  /// Copy the [EndsWithParser]
  EndsWithParser copyWith(ParserList value) => EndsWithParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    return results.isEmpty
        ? <dynamic>[]
        : results.length > 1
            ? throw _requiresList('.endsWith()', results)
            : executedValue.first is! String
                ? throw _requiresString('.endsWith()', results)
                : results.first.toString() == ''
                    ? <dynamic>[true]
                    : <dynamic>[
                        results.first
                            .toString()
                            .endsWith(executedValue.first as String),
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
      '${"  " * indent}EndsWithParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.endsWith(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// http://hl7.org/fhirpath/#containssubstring-string-boolean
/// The [ContainsFunctionParser] is used to determine if a string contains
/// a certain substring
class ContainsFunctionParser extends FunctionParser {
  /// Constructor for [ContainsFunctionParser]
  ContainsFunctionParser(super.value);

  /// Empty constructor for [ ContainsFunctionParser]
  ContainsFunctionParser.empty() : super(ParserList.empty());

  /// Copy the [ContainsFunctionParser]
  ContainsFunctionParser copyWith(ParserList value) =>
      ContainsFunctionParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    return results.isEmpty
        ? <dynamic>[]
        : results
            .map(
              (dynamic e) =>
                  e is String && e.contains(executedValue.first.toString()),
            )
            .toList();
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
      '${"  " * indent}ContainsFunctionParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.containsFunction(\n${"  " * indent}${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// The [UpperParser] is used to convert a string to all uppercase
class UpperParser extends FhirPathParser {
  /// Constructor for [UpperParser]
  UpperParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _requiresList('.upper()', results)
              : <dynamic>[results.first.toString().toUpperCase()];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}UpperParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.upper()';
}

/// The [LowerParser] is used to convert a string to all lowercase
class LowerParser extends FhirPathParser {
  /// Constructor for [LowerParser]
  LowerParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _requiresList('.lower()', results)
              : <dynamic>[results.first.toString().toLowerCase()];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}LowerParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.lower()';
}

/// The [ReplaceParser] is used to replace a substring with another substring
class ReplaceParser extends FunctionParser {
  /// Constructor for [ReplaceParser]
  ReplaceParser(super.value);

  /// Empty constructor for [ ReplaceParser]
  ReplaceParser.empty() : super(ParserList.empty());

  /// Copy the [ReplaceParser]
  ReplaceParser copyWith(ParserList value) => ReplaceParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    return results.isEmpty
        ? <dynamic>[]
        : results.length > 1
            ? throw _requiresList('.replace()', results)
            : executedValue.first is! String || executedValue.last is! String
                ? throw _requiresString('.replace()', results)
                : <dynamic>[
                    results.first.toString().replaceAll(
                          executedValue.first as String,
                          executedValue.last as String,
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
  String verbosePrint(int indent) => '${"  " * indent}ReplaceParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => value.isEmpty
      ? '.replace()'
      : '.replace(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
          '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// The [MatchesParser] is used to determine if a string matches a regular
class FpMatchesParser extends FunctionParser {
  /// Constructor for [FpMatchesParser]
  FpMatchesParser(super.value);

  /// Empty constructor for [ FpMatchesParser]
  FpMatchesParser.empty() : super(ParserList.empty());

  /// Copy the [FpMatchesParser]
  FpMatchesParser copyWith(ParserList value) => FpMatchesParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    return results.isEmpty || value.isEmpty
        ? <dynamic>[]
        : results.length > 1
            ? throw _requiresList('.matches()', results)
            : executedValue.first is! String
                ? throw _requiresString('.matches()', results)
                : <dynamic>[
                    RegExp(executedValue.first as String)
                        .hasMatch(results.first.toString()),
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
      '${"  " * indent}FpMatchesParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.matches(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// The [ReplaceMatchesParser] is used to replace all matches of a regular
class ReplaceMatchesParser extends FunctionParser {
  /// Constructor for [ReplaceMatchesParser]
  ReplaceMatchesParser(super.value);

  /// Empty constructor for [ ReplaceMatchesParser]
  ReplaceMatchesParser.empty() : super(ParserList.empty());

  /// Copy the [ReplaceMatchesParser]
  ReplaceMatchesParser copyWith(ParserList value) =>
      ReplaceMatchesParser(value);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedValue = value.execute(results.toList(), passed);
    return results.isEmpty || value.isEmpty
        ? <dynamic>[]
        : results.length > 1
            ? throw _requiresList('.replace()', results)
            : value.length == 3 &&
                    value.first is StringParser &&
                    value.last is StringParser
                ? <dynamic>[
                    results.first.toString().replaceAll(
                          RegExp('${executedValue.first}'),
                          '${executedValue.last}',
                        ),
                  ]
                : throw FhirPathEvaluationException(
                    'The function .replace() was not provided the '
                    ' proper parameters.',
                    operation: '.replace()',
                    collection: results,
                    arguments: value,
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
      '${"  " * indent}ReplaceMatchesParser\n${value.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) =>
      '.replaceMatches(\n${"  " * indent}${value.prettyPrint(indent + 1)}\n'
      '${indent <= 0 ? "" : "  " * (indent - 1)})';
}

/// The [LengthParser] is used to determine the length of a string
class LengthParser extends FhirPathParser {
  /// Constructor for [LengthParser]
  LengthParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _requiresList('.length()', results)
              : results.first is String
                  ? <dynamic>[(results.first as String).length]
                  : throw _requiresString('.length()', results);

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}LengthParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.length()';
}

/// The [ToCharsParser] is used to convert a string to a list of characters
class ToCharsParser extends FhirPathParser {
  /// Constructor for [ToCharsParser]
  ToCharsParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      results.isEmpty
          ? <dynamic>[]
          : results.length > 1
              ? throw _requiresList('.toChars()', results)
              : results.first is String
                  ? (results.first as String).split('')
                  : throw _requiresString('.toChar()', results);

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ToCharsParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.toChars()';
}

Exception _requiresList(String function, List<dynamic> results) =>
    FhirPathEvaluationException(
      'The function $function only accepts lists'
      ' with 0 or 1 item, this was the List<dynamic> passed: $results',
      operation: function,
      collection: results,
    );

Exception _requiresString(String function, List<dynamic> results) =>
    FhirPathEvaluationException(
      'The function $function was not applied to a string.',
      operation: function,
      collection: results,
    );
