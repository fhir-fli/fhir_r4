import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to check if the arguments are the same value or both null.
/// Returns true if the arguments are the same value or both null, and false
/// otherwise.
/// Equivalence is the same as equality except for null behavior and specific
/// type semantics.
/// If either argument is null, the result is null.
/// Signature:
///
/// ~<T>(left T, right T) Boolean
/// Description:
///
/// The equivalent (~) operator returns true if the arguments are equivalent in
/// value, or if they are both null; and false otherwise.
///
/// With the exception of null behavior and the semantics for specific types
/// defined below, equivalence is the same as equality.
///
/// For string values, equivalence returns true if the strings are the same
/// value while ignoring case and locale, and normalizing whitespace.
/// Normalizing whitespace means that all whitespace characters are treated as
/// equivalent, with whitespace characters as defined in the whitespace lexical
/// category.
///
/// For decimals, equivalent means the values are the same with the comparison
/// done on values rounded to the precision of the least precise operand;
/// trailing zeroes after the decimal are ignored in determining precision for
/// equivalent comparison.
///
/// For quantities, equivalent means the values are the same quantity when
/// considering unit conversion (e.g. 100 'cm' ~ 1 'm') and using decimal
/// equivalent semantics for the value. Note that implementations are not
/// required to support unit conversion and so are allowed to return false for
/// equivalence of quantities with different units.
///
/// For time-valued quantities, UCUM definite-time duration quantities above
/// days (and weeks) are considered equivalent to their calendar duration
/// counterparts:
///
/// 1 year ~ 1 'a'
/// 1 month ~ 1 'mo'
/// 1 week = 1 'wk' // and 1 week ~ 1 'wk'
/// 1 day = 1 'd' // and 1 day ~ 1 'd'
/// 1 hour = 1 'h' // and 1 hour ~ 1 'h'
/// 1 minute = 1 'min' // and 1 minute ~ 1 'min'
/// 1 second = 1 's' // and 1 second ~ 1 's'
/// 1 millisecond = 1 'ms' // and 1 millsecond ~ 1 'ms'
/// Definite-time duration unit conversions shall be performed as specified in
/// ISO-8601, while calendar-time duration unit conversions shall be performed
/// according to calendar duration semantics:
///
/// 1 year ~ 12 months
/// 1 year ~ 365 days
/// 1 month ~ 30 days
/// 1 week = 7 days
/// 1 day = 24 hours
/// 1 hour = 60 minutes
/// 1 minute = 60 seconds
/// 1 second = 1000 milliseconds
///
/// For ratios, equivalent means that the numerator and denominator represent
/// the same ratio (e.g. 1:100 ~ 10:1000).
///
/// For tuple types, this means that two tuple values are equivalent if and only
/// if the tuples are of the same type, and the values for all elements by name
/// are equivalent.
///
/// For list types, this means that two list values are equivalent if and only
/// if the lists contain elements of the same type, have the same number of
/// elements, and for each element in the lists, in order, the elements are
/// equivalent.
///
/// For interval types, this means that two intervals are equivalent if and
/// only if the intervals are over the same point type, and the starting and
/// ending points of the intervals as determined by the Start and End operators
/// are equivalent.
///
/// For Date, DateTime, and Time values, the comparison is performed in the
/// same way as it is for equality, except that if one input has a value for a
/// given precision and the other does not, the comparison stops and the result
/// is false, rather than null. As with equality, the second and millisecond
/// precisions are combined as a single precision using a decimal, with decimal
/// equivalence semantics.
///
/// For Code values, equivalence is defined based on the code and system
/// elements only. The version and display elements are ignored for the purposes
/// of determining Code equivalence.
///
/// For Concept values, equivalence is defined as a non-empty intersection of
/// the codes in each Concept.
///
/// Note that this operator will always return true or false, even if either or
/// both of its arguments are null, or contain null components.
///
/// The following examples illustrate the behavior of the equivalent operator:
///
/// define "IntegerEquivalentIsTrue": 4 ~ (2 + 2)
/// define "LongEquivalentIsTrue": 4L ~ (2L + 2L)
/// define "DecimalEquivalentIsFalse": 3.5 ~ (3.5 - 0.1)
/// define "StringEquivalentIsTrue": 'John Doe' ~ 'john doe'
/// define "QuantityEquivalentIsFalse": 3.5 'cm2' ~ 3.5 'cm'
/// define "RatioEquivalentIsTrue": 1:8 ~ 2:16
/// define "ListEquivalentIsTrue": { null, 1, 2, 3 } ~ { null, 1, 2, 3 }
/// define "DateTimeEquivalentIsFalse": @2012-01-01 ~ @2012-01-01T12
/// define "NullEquivalentIsTrue": null ~ null
class Equivalent extends BinaryExpression {
  Equivalent({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Equivalent.fromJson(Map<String, dynamic> json) => Equivalent(
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
          ),
        ),
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e))
                .toList()
            : null,
        localId: json['localId'],
        locator: json['locator'],
        resultTypeName: json['resultTypeName'],
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
            : null,
      );

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      'operand': operand.map((x) => x.toJson()).toList(),
    };
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      json['localId'] = localId;
    }
    if (locator != null) {
      json['locator'] = locator;
    }
    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return json;
  }

  @override
  String get type => 'Equivalent';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirBoolean'];

  @override
  Future<FhirBoolean> execute(Map<String, dynamic> context) async {
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return equivalent(left, right);
  }

  static FhirBoolean equivalent(dynamic left, dynamic right) {
    bool result = false;
    switch (left) {
      case null:
        result = right == null;
        break;
      case String _:
        result = right is String
            ? left.toLowerCase().trim() == right.toLowerCase().trim()
            : false;
        break;
      case FhirDateTimeBase _:
        result = right is FhirDateTimeBase
            ? left.isEquivalent(right) ?? false
            : false;
        break;
      case FhirTime _:
        result = right is FhirTime ? left.isEquivalent(right) ?? false : false;
        break;
      case CqlCode _:
        result = left.equivalent(right);
        break;
      case CqlConcept _:
        result = left.equivalent(right);
        break;
      case num _:
      case BigInt _:
        if (right is num || right is BigInt) {
          result = UcumDecimal.fromString(left.toString())
              .equivalent(UcumDecimal.fromString(right.toString()));
        } else if ((right is FhirNumber) || (right is FhirInteger64)) {
          result = (UcumDecimal.fromString(left.toString())
              .equivalent(UcumDecimal.fromString(right.toString())));
        } else if (right is ValidatedQuantity && left is double) {
          result = ValidatedQuantity.fromNumber(left).equivalent(right);
        } else {
          result = false;
        }
        break;
      case FhirNumber _:
      case FhirInteger64 _:
        if (right is num || right is BigInt) {
          result = UcumDecimal.fromString(left.valueString!)
              .equivalent(UcumDecimal.fromString(right.toString()));
        } else if ((right is FhirNumber) || (right is FhirInteger64)) {
          result = UcumDecimal.fromString(left.valueString!)
              .equivalent(UcumDecimal.fromString(right.toString()));
        } else if (right is ValidatedQuantity && left is FhirDecimal) {
          result =
              ValidatedQuantity.fromString(left.valueString!).equivalent(right);
        }
        break;
      case ValidatedQuantity _:
        if (right is ValidatedQuantity) {
          result = left.equivalent(right);
        } else if (right is FhirDecimal) {
          result =
              left.equivalent(ValidatedQuantity.fromString(right.valueString!));
        } else if (right is double) {
          result = left.equivalent(ValidatedQuantity.fromNumber(right));
        } else {
          result = false;
        }
        break;
      case ValidatedRatio _:
        result = right is ValidatedRatio ? left.equivalent(right) : false;
        break;
      case List _:
        if (right is List && left.length == right.length) {
          result = true;
          for (var i = 0; i < left.length; i++) {
            if (!(equivalent(left[i], right[i]).valueBoolean ?? false)) {
              result = false;
              break;
            }
          }
        } else {
          result = false;
        }
        break;
      case CqlTuple _:
        if (right is CqlTuple &&
            left.elements?.length == right.elements?.length) {
          if (left.elements == null || right.elements == null) {
            result = false;
          } else {
            result = true;

            if (!const DeepCollectionEquality()
                .equals(left.elements, right.elements)) {
              for (var key in left.elements!.keys) {
                // Check for key presence and value equality.
                final tempResult = right.elements!.containsKey(key)
                    ? equivalent(left.elements![key], right.elements![key])
                        .valueBoolean
                    : false;

                // If a mismatch is found, or comparison is indeterminate,
                //update result accordingly.
                if (tempResult == false || tempResult == null) {
                  result = false;
                  break;
                }
              }
            }
          }
        } else {
          result = false;
        }
        break;
      case Map _:
        if (right is Map && left.length == right.length) {
          result = true;
          if (!const DeepCollectionEquality().equals(left, right)) {
            for (var key in left.keys) {
              // Check for key presence and value equality.
              final tempResult = right.containsKey(key)
                  ? equivalent(left[key], right[key]).valueBoolean
                  : false;

              // If a mismatch is found, or comparison is indeterminate,
              //update result accordingly.
              if (tempResult == false || tempResult == null) {
                result = false;
                break;
              }
            }
          }
        } else {
          result = false;
        }
        break;
      case CqlInterval _:
        result = right is CqlInterval ? left.equivalent(right) : false;
        break;
      default:
        result = left == right;
    }
    return FhirBoolean(result);
  }
}
