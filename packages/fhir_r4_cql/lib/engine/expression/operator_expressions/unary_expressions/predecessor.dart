import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the predecessor of the argument.
/// The Predecessor operator is defined for the Integer, Decimal, Date,
/// DateTime, and Time types.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
/// Signature:
///
/// predecessor of<T>(argument T) T
/// Description:
///
/// The predecessor operator returns the predecessor of the argument. For
/// example, the predecessor of 2 is 1. If the argument is already the minimum
/// value for the type, a run-time error is thrown.
///
/// The predecessor operator is defined for the Integer, Long, Decimal,
/// Quantity, Date, DateTime, and Time types.
///
/// For Integer, predecessor is equivalent to subtracting 1.
///
/// For Long, predecessor is equivalent to subtracting 1L.
///
/// For Decimal, predecessor is equivalent to subtracting the minimum precision
/// value for the Decimal type, or 10-08.
///
/// For Date, DateTime, and Time values, predecessor is equivalent to
/// subtracting a time-unit quantity for the lowest specified precision of the
/// value. For example, if the DateTime is fully specified, predecessor is
/// equivalent to subtracting 1 millisecond; if the DateTime is specified to the
/// second, predecessor is equivalent to subtracting one second, etc.
///
/// For Quantity values, the predecessor is equivalent to subtracting 1 if the
/// quantity is an integer, and the minimum precision value for the Decimal
/// type if the quantity is a decimal. The units are unchanged.
///
/// If the argument is null, the result is null.
///
/// If the result of the operation cannot be represented, the result is null.
///
/// Note that implementations that support more precise values than the minimum
/// required precision and scale for Decimal, DateTime, and Time values, the
/// predecessor will reflect the minimum representable step size for the
/// implementation.
///
/// The following examples illustrate the behavior of the predecessor operator:
///
/// define "IntegerPredecessor": predecessor of 100 // 99
/// define "LongPredecessor": predecessor of 100L // 99L
/// define "DecimalPredecessor": predecessor of 1.0 // 0.99999999
/// define "DatePredecessor": predecessor of @2014-01-01 // @2013-12-31
/// define "PredecessorIsNull": predecessor of (null as Quantity)
class Predecessor extends UnaryExpression {
  Predecessor({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Predecessor.fromJson(Map<String, dynamic> json) => Predecessor(
        operand: CqlExpression.fromJson(json['operand']),
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
  String get type => 'Predecessor';
  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
    };

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
  List<String> getReturnTypes(CqlLibrary library) {
    return operand.getReturnTypes(library);
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    return predecessor(value);
  }

  static dynamic predecessor(dynamic value) {
    if (value == null) {
      return null;
    } else if (value is FhirInteger) {
      return FhirInteger.tryParse(value.valueNum! - 1);
    } else if (value is FhirInteger64) {
      return FhirInteger64(value.valueBigInt! - BigInt.from(1));
    } else if (value is FhirDecimal) {
      return FhirDecimal(value.valueNum! - 0.00000001);
    } else if (value is FhirDateTimeBase) {
      if (value.yearsPrecision) {
        return value - ExtendedDuration(years: 1);
      }
      if (value.monthsPrecision) {
        return value - ExtendedDuration(months: 1);
      }
      if (value.daysPrecision) {
        print('result: ${value - ExtendedDuration(days: 1)}');
        return value - ExtendedDuration(days: 1);
      }

      if (value.hoursPrecision) {
        return value - ExtendedDuration(hours: 1);
      }

      if (value.minutesPrecision) {
        return value - ExtendedDuration(minutes: 1);
      }
      if (value.secondsPrecision) {
        return value - ExtendedDuration(seconds: 1);
      }

      return value - ExtendedDuration(milliseconds: 1);
    } else if (value is FhirTime) {
      if (value.millisecond != null) {
        return value.subtract(milliseconds: 1);
      } else if (value.second != null) {
        return value.subtract(seconds: 1);
      } else if (value.minute != null) {
        return value.subtract(minutes: 1);
      } else if (value.hour != null) {
        return value.subtract(hours: 1);
      }
    } else if (value is ValidatedQuantity && value.isValid()) {
      return value - 1;
    }
    throw ArgumentError('Invalid type for Successor: ${value.runtimeType}');
  }
}
