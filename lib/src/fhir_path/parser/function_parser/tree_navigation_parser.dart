import 'package:fhir_r4/src/fhir_path/r4.dart';

/// The children() function returns the children of the context node, i.e. the
/// immediate subordinates of the context node. If the context node is a
/// collection, the result is a collection containing all the children of all
/// the nodes in the collection.
class ChildrenParser extends FhirPathParser {
  /// Constructor for [ChildrenParser]
  ChildrenParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final finalResults = <dynamic>[];
    for (final dynamic r in results) {
      if (r is Map) {
        r.forEach((dynamic key, dynamic value) {
          if (value is List) {
            finalResults.addAll(value);
          } else {
            finalResults.add(value);
          }
        });
      }
    }
    return finalResults;
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}ChildrenParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.children()';
}

/// The descendants() function returns the descendants of the context node, i.e.
/// the children, grandchildren, great-grandchildren, etc. of the context node.
/// If the context node is a collection, the result is a collection containing
/// all the descendants of all the nodes in the collection.
class DescendantsParser extends FhirPathParser {
  /// Constructor for [DescendantsParser]
  DescendantsParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    // According to spec, `descendants()` is shorthand for `repeat(children())`
    final repeatParser =
        RepeatParser(ParserList(<FhirPathParser>[ChildrenParser()]));
    return repeatParser.execute(results, passed);
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}DescendantsParser';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '.descendants()';
}
