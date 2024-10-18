import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

/// The equality operator is used to determine whether two values are equal.
/// The operator returns true if the two values are equal, and false otherwise.
class EqualsParser extends OperatorParser {
  /// Constructor for [EqualsParser]
  EqualsParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final lhs = before.execute(results.toList(), passed);
    final rhs = after.execute(results.toList(), passed);

    if (lhs.isEmpty || rhs.isEmpty) {
      return <dynamic>[];
    } else if (lhs.length != rhs.length) {
      return <dynamic>[false];
    } else {
      /// for each entry in lhs and rhs (we checked above to ensure they
      /// were the same length)
      for (var i = 0; i < lhs.length; i++) {
        /// we check to see if any of the values are DateTimes
        if (lhs[i] is FhirDateTime ||
            lhs[i] is FhirDate ||
            rhs[i] is FhirDateTime ||
            rhs[i] is FhirDate) {
          /// As long as one is, we convert them both to strings then back
          /// to DateTimes
          final lhsDateTime = FhirDateTime.fromString(lhs[i].toString());
          final rhsDateTime = FhirDateTime.fromString(rhs[i].toString());

          final equals = lhsDateTime.isEqual(rhsDateTime);
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

/// The equivalent operator is used to determine whether two values are
/// equivalent. The operator returns true if the two values are equivalent,
/// and false otherwise. The definition of equivalence depends on the type
/// of the values being compared.
class EquivalentParser extends OperatorParser {
  /// Constructor for [EquivalentParser]
  EquivalentParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final executedBefore = before.execute(results.toList(), passed);
    final executedAfter = after.execute(results.toList(), passed);
    if (executedBefore.isEmpty) {
      if (executedAfter.isEmpty) {
        return <dynamic>[true];
      } else {
        return <dynamic>[false];
      }
    } else if (executedBefore.length != executedAfter.length) {
      return <dynamic>[false];
    } else {
      executedBefore.removeWhere(
        (dynamic lhsElement) =>
            executedAfter.indexWhere((dynamic rhsElement) {
              if (lhsElement is FhirDateTime ||
                  lhsElement is FhirDate ||
                  rhsElement is FhirDateTime ||
                  rhsElement is FhirDate) {
                /// As long as one is, we convert them both to strings then back
                /// to DateTimes
                final lhsDateTime =
                    FhirDateTime.fromString(lhsElement.toString());
                final rhsDateTime =
                    FhirDateTime.fromString(rhsElement.toString());

                final equals = lhsDateTime.isEqual(rhsDateTime);
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
                final lhsNum = num.tryParse(lhsElement.toString());
                final rhsNum = num.tryParse(rhsElement.toString());
                final sigDigsLhs = lhsNum
                    ?.toStringAsExponential()
                    .split('e')
                    .first
                    .replaceAll('.', '')
                    .length;
                final sigDigsRhs = rhsNum
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
            -1,
      );
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
  /// Constructor for [NotEqualsParser]
  NotEqualsParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final equalsParser = EqualsParser();
    equalsParser.before = before;
    equalsParser.after = after;
    final equality = equalsParser.execute(results, passed);
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

/// https://hl7.org/fhirpath/#not-equivalent
/// A !~ B is short-hand for (A ~ B).not()
class NotEquivalentParser extends OperatorParser {
  /// Constructor for [NotEquivalentParser]
  NotEquivalentParser();

  /// The iterable, nested function that evaluates the entire FHIRPath
  /// expression one object at a time
  @override
  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    final equivalentParser = EquivalentParser();
    equivalentParser.before = before;
    equivalentParser.after = after;
    final equality = equivalentParser.execute(results, passed);
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
