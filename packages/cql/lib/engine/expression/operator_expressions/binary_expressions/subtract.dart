import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import '../../../../cql.dart';

/// Operator to perform numeric subtraction of its arguments.
/// When subtracting quantities, the dimensions of each quantity must be the
/// same, but not necessarily the unit.
/// The Subtract operator is defined for the Integer, Decimal, and Quantity types.
/// In addition, a time-valued Quantity can be subtracted from a Date,
/// DateTime, or Time using this operator.
/// If either argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
///
/// Signature:
/// -(left Integer, right Integer) Integer
/// -(left Long, right Long) Long
/// -(left Decimal, right Decimal) Decimal
/// -(left Quantity, right Quantity) Quantity
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status.
///
/// Description:
///
/// The subtract (-) operator performs numeric subtraction of its arguments.
///
/// When invoked with mixed Integer and Decimal or Long arguments, the Integer
/// argument will be implicitly converted to Decimal or Long.
///
/// When invoked with mixed Long and Decimal arguments, the Long argument will
/// be implicitly converted to Decimal.
///
/// When subtracting quantities, the dimensions of each quantity must be the
/// same, but not necessarily the unit. For example, units of 'cm' and 'm' can
/// be subtracted, but units of 'cm2' and 'cm' cannot. The unit of the result
/// will be the most granular unit of either input. Attempting to operate on
/// quantities with invalid units will result in a null. When a quantity has no
/// units specified, it is treated as a quantity with the default unit ('1').
///
/// If either argument is null, the result is null.
///
/// If the result of the operation cannot be represented, the result is null.
///
/// The following examples illustrate the behavior of the subtract operator:
///
/// define "IntegerSubtract": 2 - 1 // 1
/// define "LongSubtract": 2L - 1L // 1L
/// define "DecimalSubtract": 3.14 - 3.12 // 0.02
/// define "QuantitySubtract": 3.14 'mg' - 3.12 'mg' // 0.02 'mg'
/// define "QuantitySubtractError": 3.14 'cm' - 3.12 'cm2'
/// define "SubtractIsNull": 3 - null
///
/// Signature:
///
/// -(left Date, right Quantity) Date
/// -(left DateTime, right Quantity) DateTime
/// -(left Time, right Quantity) Time
/// Description:
///
/// The subtract (-) operator returns the value of the given Date, DateTime,
/// or Time, decremented by the time-valued quantity, respecting variable
/// length periods for calendar years and months.
///
/// For Date values, the quantity unit must be one of: years, months, weeks, or
/// days.
///
/// For DateTime values, the quantity unit must be one of: years, months, weeks,
/// days, hours, minutes, seconds, or milliseconds.
///
/// For Time values, the quantity unit must be one of: hours, minutes, seconds,
/// or milliseconds.
///
/// Note that the quantity units may be specified in singular, plural or UCUM
/// form. However, to avoid the potential confusion of calendar-based date and
/// time arithmetic with definite-duration date and time arithmetic, it is an
/// error to attempt to subtract a definite-duration time-valued unit above days
/// (and weeks), a calendar duration must be used.
///
/// For precisions above seconds, any decimal portion of the time-valued
/// quantity is ignored, since date/time arithmetic above seconds is performed
/// with calendar duration semantics.
///
/// For partial date/time values where the time-valued quantity is more precise
/// than the partial date/time, the operation is performed by converting the
/// time-based quantity to the most precise value specified in the first
/// argument (truncating any resulting decimal portion) and then subtracting it
/// from the first argument. For example, the following subtraction:
///
/// DateTime(2014) - 24 months
///
/// This example results in the value DateTime(2012) even though the DateTime
/// value is not specified to the level of precision of the time-valued
/// quantity.
///
/// Note also that this means that if decimals appear in the time-valued
/// quantities, the fractional component will be ignored. For example, the
/// following subtraction:
///
/// DateTime(2014) - 18 months
///
/// This example results in the value DateTime(2013)
///
/// If either argument is null, the result is null.
class Subtract extends BinaryExpression {
  Subtract({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Subtract.fromJson(Map<String, dynamic> json) => Subtract(
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
    final data = <String, dynamic>{};
    data['type'] = type;
    data['operand'] = operand.map((e) => e.toJson()).toList();
    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }
    if (localId != null) {
      data['localId'] = localId;
    }
    if (locator != null) {
      data['locator'] = locator;
    }
    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }
    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }
    return data;
  }

  @override
  String get type => 'Subtract';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw CqlException(
          message: "The Subtract expression must have 2 operands.");
    } else {
      final left = await operand[0].execute(context);
      final right = await operand[1].execute(context);
      return subtract(left, right);
    }
  }

  static dynamic subtract(dynamic left, dynamic right) {
    if (left == null || right == null) {
      return null;
    }

    switch (left) {
      case FhirInteger _:
        return right is FhirInteger
            ? FhirInteger.tryParse(left.valueNum! - right.valueNum!)
            : right is FhirDecimal
                ? FhirDecimal(double.parse(
                    UcumDecimal.fromString(left.valueString!)
                        .subtract(UcumDecimal.fromString(right.valueString!))
                        .asUcumDecimal()))
                : right is FhirInteger64
                    ? FhirInteger64.tryParse(
                        (left.valueInt as int) - right.valueBigInt!.toInt())
                    : null;
      case FhirInteger64 _:
        return right is FhirInteger64
            ? FhirInteger64(left.valueBigInt! - right.valueBigInt!)
            : right is FhirDecimal
                ? FhirDecimal(double.parse(
                    UcumDecimal.fromString(left.valueString!)
                        .subtract(UcumDecimal.fromString(right.valueString!))
                        .asUcumDecimal()))
                : right is FhirInteger
                    ? FhirInteger64.tryParse(
                        left.valueBigInt!.toInt() - right.valueInt!)
                    : null;
      case FhirDecimal _:
        return right is FhirDecimal
            ? FhirDecimal(double.parse(UcumDecimal.fromString(left.valueString!)
                .subtract(UcumDecimal.fromString(right.valueString!))
                .asUcumDecimal()))
            : right is FhirInteger
                ? FhirDecimal(double.parse(
                    UcumDecimal.fromString(left.valueString!)
                        .subtract(UcumDecimal.fromString(right.valueString!))
                        .asUcumDecimal()))
                : right is FhirInteger64
                    ? FhirDecimal(double.parse(UcumDecimal.fromString(
                            left.valueString!)
                        .subtract(UcumDecimal.fromString(right.valueString!))
                        .asUcumDecimal()))
                    : null;
      case ValidatedQuantity _:
        return right is ValidatedQuantity
            ? left.isValid() && right.isValid()
                ? left - right
                : right is FhirDecimal
                    ? left - right
                    : null
            : null;
      case FhirDateTimeBase _:
        {
          if (right is ValidatedQuantity && right.isDuration) {
            return left -
                ExtendedDuration(
                  years: right.years?.toInt() ?? 0,
                  months: right.months?.toInt() ?? 0,
                  weeks: right.weeks?.toInt() ?? 0,
                  days: right.days?.toInt() ?? 0,
                  hours: right.hours?.toInt() ?? 0,
                  minutes: right.minutes?.toInt() ?? 0,
                  seconds: right.seconds?.toInt() ?? 0,
                  milliseconds: right.milliseconds?.toInt() ?? 0,
                );
          }
          return null;
        }
      case FhirTime _:
        {
          if (right is ValidatedQuantity && right.isDuration) {
            return left.subtract(
              hours: right.hours?.toInt() ?? 0,
              minutes: right.minutes?.toInt() ?? 0,
              seconds: right.seconds?.toInt() ?? 0,
              milliseconds: right.milliseconds?.toInt() ?? 0,
            );
          }
          return null;
        }
      case CqlInterval _:
        {
          if (right is CqlInterval) {
            CqlInterval(
                low: subtract(left.getStart(), right.getStart()),
                lowClosed: true,
                high: subtract(left.getEnd(), right.getEnd()),
                highClosed: true);
          } else {
            return null;
          }
        }
      default:
        return null;
    }
  }
}
