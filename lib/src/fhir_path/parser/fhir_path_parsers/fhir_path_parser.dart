/// FhirPathParser: base parser
abstract class FhirPathParser {
  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) =>
      <dynamic>[];

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  String verbosePrint(int indent);

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  String prettyPrint([int indent = 2]);
}

/// ValueParser: basic parser that holds a value
abstract class ValueParser<T> extends FhirPathParser {
  /// Constructor for a ValueParser
  ValueParser(this.value);

  /// The value that the parser holds
  final T value;

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed);

  @override
  String toString() => '$runtimeType($value)';
}

/// OperatorParser: operators
abstract class OperatorParser extends FhirPathParser {
  /// Constructor for an OperatorParser
  OperatorParser();

  /// The objects that are evaluated before the operator
  ParserList before = ParserList(<FhirPathParser>[]);

  /// The objects that are evaluated after the operator
  ParserList after = ParserList(<FhirPathParser>[]);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed);

  @override
  String toString();

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => toString().hashCode;
}

/// ParserList: anything that is a List of FhirPathParsers
class ParserList extends ValueParser<List<FhirPathParser>> {
  /// Constructor for a ParserList
  ParserList(super.value);

  /// An empty ParserList
  ParserList.empty() : super(<FhirPathParser>[]);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    void addToList(List<dynamic> toAdd) => results
      ..clear()
      ..addAll(toAdd);

    for (final v in value) {
      addToList(v.execute(results, passed).toList());
    }
    return results;
  }

  /// If the list is empty
  bool get isEmpty => value.isEmpty;

  /// Length of the list
  int get length => value.length;

  /// Get the first element of the list
  FhirPathParser get first => value.first;

  /// Get the last element of the list
  FhirPathParser get last => value.last;

  /// Remove the last element of the list
  FhirPathParser removeAt(int i) => value.removeAt(i);

  @override
  String toString() =>
      'PL(${value.length}): ${value.map((FhirPathParser e) => e.toString())}';

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) {
    final buffer = StringBuffer()
      ..writeln('${"  " * indent}PL(${value.length})');
    for (final item in value) {
      buffer.writeln('\n${item.verbosePrint(indent + 1)}');
    }
    return buffer.toString();
  }

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) {
    final buffer = StringBuffer();
    for (final item in value) {
      buffer.writeln(item.prettyPrint(indent + 1));
    }
    return buffer.toString();
  }
}
