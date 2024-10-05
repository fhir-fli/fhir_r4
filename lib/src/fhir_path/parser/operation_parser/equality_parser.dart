// ignore_for_file: annotate_overrides, overridden_fields, noop_primitive_operations, unnecessary_this

import 'package:ucum/ucum.dart';

import '../../../../fhir_r4.dart';

class EqualsParser extends OperatorParser {
  EqualsParser();
  ParserList before = ParserList(<FhirPathParser>[]);
  ParserList after = ParserList(<FhirPathParser>[]);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final List<dynamic> lhs = before.execute(results.toList(), passed);
    final List<dynamic> rhs = after.execute(results.toList(), passed);

    if (lhs.isEmpty || rhs.isEmpty) {
      return <dynamic>[];
    } else if (lhs.length != rhs.length) {
      return <dynamic>[false];
    } else {
      /// for each entry in lhs and rhs (we checked above to ensure they
      /// were the same length)
      for (int i = 0; i < lhs.length; i++) {
        /// we check to see if any of the values are DateTimes
        if (lhs[i] is FhirDateTime ||
            lhs[i] is FhirDate ||
            rhs[i] is FhirDateTime ||
            rhs[i] is FhirDate) {
          /// As long as one is, we convert them both to strings then back
          /// to DateTimes
          final FhirDateTime lhsDateTime = FhirDateTime(lhs[i].toString());
          final FhirDateTime rhsDateTime = FhirDateTime(rhs[i].toString());

          final bool? equals = lhsDateTime.isEqual(rhsDateTime);
          if (equals != null) {
            return <dynamic>[equals];
          } else {
            return <dynamic>[];
          }
        }

        /// If they aren't dateTimes we can just compare them as usual
        else {
          if (lhs[i] is ValidatedQuantity || rhs[i] is ValidatedQuantity) {
            if (lhs[i] is ValidatedQuantity) {
              return <dynamic>[lhs[i] == rhs[i]];
            } else {
              return <dynamic>[rhs[i] == lhs[i]];
            }
          }
          if (lhs[i] != rhs[i] || rhs[i] != lhs[i]) {
            return <dynamic>[false];
          }
        }
      }
      return <dynamic>[true];
    }
  }

  @override
  String toString() {
    return 'EqualsParser: $before EQUALS $after';
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}EqualsParser'
      '\n${before.verbosePrint(indent + 1)}'
      '\n${after.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '='
      '\n${"  " * indent}${before.prettyPrint(indent + 1)}'
      '\n${"  " * indent}${after.prettyPrint(indent + 1)}';
}

class EquivalentParser extends OperatorParser {
  EquivalentParser();
  ParserList before = ParserList(<FhirPathParser>[]);
  ParserList after = ParserList(<FhirPathParser>[]);

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final List<dynamic> executedBefore =
        before.execute(results.toList(), passed);
    final List<dynamic> executedAfter = after.execute(results.toList(), passed);
    if (executedBefore.isEmpty) {
      if (executedAfter.isEmpty) {
        return <dynamic>[true];
      } else {
        return <dynamic>[false];
      }
    } else if (executedBefore.length != executedAfter.length) {
      return <dynamic>[false];
    } else {
      executedBefore.removeWhere((dynamic lhsElement) =>
          executedAfter.indexWhere((dynamic rhsElement) {
            if (lhsElement is FhirDateTime ||
                lhsElement is FhirDate ||
                rhsElement is FhirDateTime ||
                rhsElement is FhirDate) {
              /// As long as one is, we convert them both to strings then back
              /// to DateTimes
              final FhirDateTime lhsDateTime =
                  FhirDateTime(lhsElement.toString());
              final FhirDateTime rhsDateTime =
                  FhirDateTime(rhsElement.toString());

              final bool? equals = lhsDateTime.isEqual(rhsDateTime);
              if (equals != null) {
                return equals;
              } else {
                return false;
              }
            } else if (lhsElement is ValidatedQuantity) {
              return lhsElement.equivalent(rhsElement as Object);
            } else if (rhsElement is ValidatedQuantity) {
              return rhsElement.equivalent(lhsElement as Object);
            } else if (lhsElement is num || rhsElement is num) {
              final num? lhsNum = num.tryParse(lhsElement.toString());
              final num? rhsNum = num.tryParse(rhsElement.toString());
              final int? sigDigsLhs = lhsNum
                  ?.toStringAsExponential()
                  .split('e')
                  .first
                  .replaceAll('.', '')
                  .length;
              final int? sigDigsRhs = rhsNum
                  ?.toStringAsExponential()
                  .split('e')
                  .first
                  .replaceAll('.', '')
                  .length;
              if (sigDigsLhs == null || sigDigsRhs == null) {
                return false;
              } else {
                if (sigDigsLhs < sigDigsRhs) {
                  return lhsNum?.toStringAsPrecision(sigDigsLhs) ==
                      rhsNum?.toStringAsPrecision(sigDigsLhs);
                } else {
                  return lhsNum?.toStringAsPrecision(sigDigsRhs) ==
                      rhsNum?.toStringAsPrecision(sigDigsRhs);
                }
              }
            } else if (lhsElement is String || rhsElement is String) {
              return lhsElement.toString().toLowerCase() ==
                  rhsElement.toString().toLowerCase();
            } else {
              return lhsElement == rhsElement || rhsElement == lhsElement;
            }
          }) !=
          -1);
      return <dynamic>[executedBefore.isEmpty];
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
  String verbosePrint(int indent) => '${"  " * indent}EquivalentParser'
      '\n${before.verbosePrint(indent + 1)}'
      '\n${after.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '~'
      '\n${"  " * indent}${before.prettyPrint(indent + 1)}'
      '\n${"  " * indent}${after.prettyPrint(indent + 1)}';
}

/// https://hl7.org/fhirpath/#not-equals
///
/// A != B is short-hand for (A = B).not()
class NotEqualsParser extends OperatorParser {
  NotEqualsParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final EqualsParser equalsParser = EqualsParser();
    equalsParser.before = this.before;
    equalsParser.after = this.after;
    final List<dynamic> equality = equalsParser.execute(results, passed);
    return FpNotParser().execute(equality, passed);
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}NotEqualsParser'
      '\n${before.verbosePrint(indent + 1)}'
      '\n${after.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '${"  " * indent}!='
      '\n${"  " * indent}${"  " * indent}${before.prettyPrint(indent + 1)}'
      '\n${"  " * indent}${"  " * indent}${after.prettyPrint(indent + 1)}';
}

class NotEquivalentParser extends OperatorParser {
  NotEquivalentParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final EquivalentParser equivalentParser = EquivalentParser();
    equivalentParser.before = this.before;
    equivalentParser.after = this.after;
    final List<dynamic> equality = equivalentParser.execute(results, passed);
    return FpNotParser().execute(equality, passed);
  }

  /// To print the entire parsed FHIRPath expression, this includes ALL
  /// of the Parsers that are used in this package by the names used in
  /// this package. These are not always synonymous with the FHIRPath
  /// specification (although they usually are), and include some parser
  /// classes that were created for ease of evaluation but are not included
  /// at all as objects in the official spec. I'm generally going to recommend
  /// that you use [prettyPrint] instead
  @override
  String verbosePrint(int indent) => '${"  " * indent}NotEquivalentParser'
      '\n${before.verbosePrint(indent + 1)}'
      '\n${after.verbosePrint(indent + 1)}';

  /// Uses a rough approximation of reverse polish notation to render the
  /// parsed value of a FHIRPath in a more human readable way than
  /// [verbosePrint], while still demonstrating how the expression was parsed
  /// and nested according to this package
  @override
  String prettyPrint([int indent = 2]) => '${"  " * indent}!~'
      '\n${"  " * indent}${"  " * indent}${before.prettyPrint(indent + 1)}'
      '\n${"  " * indent}${"  " * indent}${after.prettyPrint(indent + 1)}';
}
