import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to return the maximum representable value for the given type.
/// The MaxValue operator is defined for the Integer, Decimal, Date, DateTime,
/// and Time types.
/// For any other type, attempting to invoke MaxValue results in an error.
/// Note that implementations may choose to represent the maximum DateTime
/// value using a constant offset such as UTC.
/// Signature:
///
/// maximum<T>() T
/// Description:
///
/// The maximum operator returns the maximum representable value for the given
/// type.
///
/// The maximum operator is defined for the Integer, Long, Decimal, Quantity,
/// Date, DateTime, and Time types.
///
/// For Integer, maximum returns the maximum signed 32-bit integer, 231 - 1.
///
/// For Long, maximum returns the maximum signed 64-bit long, 263 - 1.
///
/// For Decimal, maximum returns the maximum representable decimal value,
/// (1028 – 1) / 108 (99999999999999999999.99999999).
///
/// For Quantity, maximum returns the maximum representable quantity, i.e. the
/// maximum representable decimal value with a default unit (1).
///
/// For Date, maximum returns the maximum representable date value,
/// Date(9999, 12, 31).
///
/// For DateTime, maximum returns the maximum representable datetime value,
/// DateTime(9999, 12, 31, 23, 59, 59, 999).
///
/// For Time, maximum returns the maximum representable time value,
/// Time(23, 59, 59, 999).
///
/// For any other type, attempting to invoke maximum results in an error.
///
/// Note that implementations may choose to represent the maximum DateTime
/// value using a constant offset such as UTC.
///
/// Note that if implementations support larger and/or more precise values than
/// the minimum required precision and scale for Decimal, DateTime, and Time
/// values, they will return the maximum representable decimal for the
/// implementation.
///
/// The following examples illustrate the behavior of the maximum operator:
///
/// define "IntegerMaximum": maximum Integer // 2147483647
/// define "LongMaximum": maximum Long // 9223372036854775807
/// define "DateTimeMaximum": maximum DateTime // @9999-12-31T23:59:59.999
/// define "ErrorMaximum": maximum Quantity
///
class MaxValue extends CqlExpression {
  final QName valueType;

  MaxValue({
    required this.valueType,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory MaxValue.fromJson(Map<String, dynamic> json) => MaxValue(
        valueType: QName.parse(json['valueType']!),
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
    final Map<String, dynamic> val = {
      'valueType': valueType,
      'type': type,
    };

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'MaxValue';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    switch (valueType.localPart) {
      case 'Integer':
        return ['FhirInteger'];
      case 'Long':
        return ['FhirInteger64'];
      case 'Decimal':
        return ['FhirDecimal'];
      case 'Quantity':
        return ['ValidatedQuantity'];
      case 'Date':
        return ['FhirDate'];
      case 'DateTime':
        return ['FhirDateTime'];
      case 'Time':
        return ['FhirTime'];
      default:
        return ['None'];
    }
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async =>
      maxValue(valueType.localPart);

  static dynamic maxValue(String type) {
    switch (type) {
      case 'FhirInteger':
      case 'Integer':
        return FhirInteger(2147483647);
      case 'FhirInteger64':
      case 'Long':
        return FhirInteger64.fromString('9223372036854775807');
      case 'FhirDecimal':
      case 'Decimal':
        return FhirDecimal(99999999999999999999.99999999);
      case 'ValidatedQuantity':
      case 'Quantity':
        return ValidatedQuantity.fromNumber(99999999999999999999.99999999);
      case 'FhirDate':
      case 'Date':
        return FhirDate.fromUnits(year: 9999, month: 12, day: 31);
      case 'FhirDateTime':
      case 'DateTime':
        return FhirDateTime.fromString('9999-12-31T23:59:59.999');
      case 'FhirTime':
      case 'Time':
        return FhirTime.fromUnits(
            hour: 23, minute: 59, second: 59, millisecond: 999);
      default:
        throw UnimplementedError();
    }
  }
}
