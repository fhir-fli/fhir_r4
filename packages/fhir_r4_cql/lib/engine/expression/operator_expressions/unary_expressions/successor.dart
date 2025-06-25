import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the successor of the argument.
/// The Successor operator is defined for the Integer, Decimal, Date, DateTime,
/// and Time types.
/// If the argument is null, the result is null.
/// If the result of the operation cannot be represented, the result is null.
/// Signature:
///
/// successor of<T>(argument T) T
/// Description:
///
/// The successor operator returns the successor of the argument. For example,
/// the successor of 1 is 2. If the argument is already the maximum value for
/// the type, a run-time error is thrown.
///
/// The successor operator is defined for the Integer, Long, Quantity, Decimal,
/// Date, DateTime, and Time types.
///
/// For Integer, successor is equivalent to adding 1.
///
/// For Long, successor is equivalent to adding 1L.
///
/// For Decimal, successor is equivalent to adding the minimum precision value
/// for the Decimal type, or 10-08.
///
/// For Date, DateTime and Time values, successor is equivalent to adding a
/// time-unit quantity for the lowest specified precision of the value. For
/// example, if the DateTime is fully specified, successor is equivalent to
/// adding 1 millisecond; if the DateTime is specified to the second, successor
/// is equivalent to adding one second, etc.
///
/// For Quantity values, the successor is equivalent to adding 1 if the quantity
/// is an integer, and the minimum precision value for the Decimal type if the
/// quantity is a decimal. The units are unchanged.
///
/// If the argument is null, the result is null.
///
/// If the result of the operation cannot be represented, the result is null.
///
/// Note that implementations that support more precise values than the minimum
/// required precision and scale for Decimal, DateTime, and Time values, the
/// successor will reflect the minimum representable step size for the
/// implementation.
///
/// The following examples illustrate the behavior of the successor operator:
///
/// define "IntegerSuccessor": successor of 100 // 101
/// define "LongSuccessor": successor of 100L // 101L
/// define "DecimalSuccessor": successor of 1.0 // 1.00000001
/// define "DateSuccessor": successor of @2014-01-01 // @2014-01-02
/// define "SuccessorIsNull": successor of (null as Quantity)
class Successor extends UnaryExpression {
  Successor({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Successor.fromJson(Map<String, dynamic> json) => Successor(
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
  String get type => 'Successor';
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
    return successor(value);
  }

  static dynamic successor(dynamic value) {
    if (value == null) {
      return null;
    } else if (value is FhirInteger) {
      return FhirInteger.tryParse(value.valueNum! + 1);
    } else if (value is FhirInteger64) {
      return FhirInteger64(value.valueBigInt! + BigInt.from(1));
    } else if (value is FhirDecimal) {
      return FhirDecimal(value.valueNum! + 0.00000001);
    } else if (value is FhirDateTimeBase) {
      if (value.yearsPrecision) {
        return value + ExtendedDuration(years: 1);
      }
      if (value.monthsPrecision) {
        return value + ExtendedDuration(months: 1);
      }
      if (value.daysPrecision) {
        return value + ExtendedDuration(days: 1);
      }

      if (value.hoursPrecision) {
        return value + ExtendedDuration(hours: 1);
      }

      if (value.minutesPrecision) {
        return value + ExtendedDuration(minutes: 1);
      }
      if (value.secondsPrecision) {
        return value + ExtendedDuration(seconds: 1);
      }

      return value + ExtendedDuration(milliseconds: 1);
    } else if (value is FhirTime) {
      if (value.millisecond != null) {
        return value.plus(milliseconds: 1);
      } else if (value.second != null) {
        return value.plus(seconds: 1);
      } else if (value.minute != null) {
        return value.plus(minutes: 1);
      } else if (value.hour != null) {
        return value.plus(hours: 1);
      }
    } else if (value is ValidatedQuantity && value.isValid()) {
      return value + 1;
    }
    throw ArgumentError('Invalid type for Successor: ${value.runtimeType}');
  }
}
