import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to check if the first argument is less than the second argument.
/// Returns true if the first argument is less than the second argument.
/// For comparisons involving quantities, the dimensions of each quantity must
/// be the same, but not necessarily the unit.
/// If either argument is null, the result is null.
/// The Less operator is defined for the Integer, Decimal, String, Date,
/// DateTime, Time, and Quantity types.
/// Note that relative ratio comparisons are not directly supported due to
/// healthcare variance.
/// Signature:
///
/// <(left Integer, right Integer) Boolean
/// <(left Long, right Long) Boolean
/// <(left Decimal, right Decimal) Boolean
/// <(left Quantity, right Quantity) Boolean
/// <(left Date, right Date) Boolean
/// <(left DateTime, right DateTime) Boolean
/// <(left Time, right Time) Boolean
/// <(left String, right String) Boolean
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status.
///
/// Description:
///
/// The less (<) operator returns true if the first argument is less than the
/// second argument.
///
/// String comparisons are strictly lexical based on the Unicode value of the
/// individual characters in the string.
///
/// For comparisons involving quantities, the dimensions of each quantity must
/// be the same, but not necessarily the unit. For example, units of 'cm' and
/// 'm' are comparable, but units of 'cm2' and 'cm' are not. Attempting to
/// operate on quantities with invalid units will result in a null. When a
/// quantity has no units specified, it is treated as a quantity with the
/// default unit ('1').
///
/// For time-valued quantities, the UCUM definite-quantity durations above days
/// (and weeks) are not comparable to calendar durations. Definite-time
/// duration unit conversions shall be performed as specified in ISO-8601,
/// while calendar-time duration unit conversions shall be performed according
/// to calendar duration semantics. In particular, unit conversion between
/// variable length calendar durations (i.e. years and months) and
/// definite-time durations (i.e. days or below) results in null.
///
/// For Date, DateTime, and Time values, the comparison is performed by
/// considering each precision in order, beginning with years (or hours for
/// time values). If the values are the same, comparison proceeds to the next
/// precision; if the first value is less than the second, the result is true;
/// if the first value is greater than the second, the result is false; if one
/// input has a value for the precision and the other does not, the comparison
/// stops and the result is null; if neither input has a value for the precision
/// or the last precision has been reached, the comparison stops and the result
/// is false. For example:
///
/// define "DateTimeLessIsNull": @2012-01-01 < @2012-01-01T12
/// Note that for the purposes of comparison, seconds and milliseconds are
/// combined as a single precision using a decimal, with decimal comparison
/// semantics.
///
/// If either argument is null, the result is null.
///
/// The following examples illustrate the behavior of the less operator:
///
/// define "IntegerLessIsTrue": 4 < (2 + 2 + 2)
/// define "LongLessIsTrue": 4L < (2L + 2L + 2L)
/// define "DecimalLessIsFalse": 3.5 < 3.5
/// define "QuantityLessIsNull": 3.6 'cm2' < 3.5 'cm'
/// define "DateTimeLessIsNull": @2012-01-01 < @2012-01-01T12
/// define "NullLessIsNull": null < 5
/// Note that relative ratio comparisons are not directly supported due to the
/// variance of uses within healthcare. See the discussion in Ratio Operators
/// for more information.
class Less extends BinaryExpression {
  Less({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Less.fromJson(Map<String, dynamic> json) => Less(
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
  String get type => 'Less';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    final left = await operand[0].execute(context);
    final right = await operand[1].execute(context);
    return less(left, right);
  }

  static FhirBoolean? less(dynamic left, dynamic right) {
    if (left == null || right == null) {
      return null;
    }
    if (left is FhirInteger && right is FhirInteger) {
      return FhirBoolean(left < right);
    } else if (left is FhirDecimal && right is FhirDecimal) {
      return FhirBoolean(left < right);
    } else if (left is FhirInteger64 && right is FhirInteger64) {
      return FhirBoolean(left < right);
    } else if (left is String && right is String) {
      return FhirBoolean(left.compareTo(right) < 0);
    } else if (left is FhirDateTime && right is FhirDateTime) {
      final result = left < right;
      return result == null ? null : FhirBoolean(left < right);
    } else if (left is FhirTime && right is FhirTime) {
      return FhirBoolean(left < right);
    } else if (left is FhirDate && right is FhirDate) {
      final result = left < right;
      return result == null ? null : FhirBoolean(left < right);
    } else if (left is ValidatedQuantity && right is ValidatedQuantity) {
      try {
        return FhirBoolean(left < right);
      } catch (e) {
        return null;
      }
    }
    throw ArgumentError('Invalid operand types for Less operation: \n'
        'Left: $left (${left.runtimeType})\n'
        'Right: $right (${right.runtimeType})');
  }
}
