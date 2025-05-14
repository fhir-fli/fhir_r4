import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to return the minimum representable value for the given type.
/// The MinValue operator is defined for the Integer, Decimal, Date, DateTime,
/// and Time types.
/// For any other type, attempting to invoke MinValue results in an error.
/// Note that implementations may choose to represent the minimum DateTime
/// value using a constant offset such as UTC.
/// Signature:
///
/// minimum<T>() T
/// Description:
///
/// The minimum operator returns the minimum representable value for the given
/// type.
///
/// The minimum operator is defined for the Integer, Long, Decimal, Quantity,
/// Date, DateTime, and Time types.
///
/// For Integer, minimum returns the minimum signed 32-bit integer, -231.
///
/// For Long, minimum returns the minimum signed 64-bit long, -263.
///
/// For Decimal, minimum returns the minimum representable decimal value,
/// (-1028 + 1) / 108 (-99999999999999999999.99999999).
///
/// For Quantity, minimum returns the minimum representable quantity, i.e. the
/// minimum representable decimal value with a default unit (1).
///
/// For Date, minimum returns the minimum representable date value,
/// DateTime(1, 1, 1).
///
/// For DateTime, minimum returns the minimum representable datetime value,
/// DateTime(1, 1, 1, 0, 0, 0, 0).
///
/// For Time, minimum returns the minimum representable time value,
/// Time(0, 0, 0, 0).
///
/// For any other type, attempting to invoke minimum results in an error.
///
/// Note that implementations may choose to represent the minimum DateTime
/// value using a constant offset such as UTC.
///
/// Note that if implementations support larger and/or more precise values than
/// the minimum required precision and scale for Decimal, DateTime, and Time
/// values, they will return the minimum representable decimal for the
/// implementation.
///
/// The following examples illustrate the behavior of the minimum operator:
///
/// define "IntegerMinimum": minimum Integer // -2147483648
/// define "LongMinimum": minimum Long // -9223372036854775808
/// define "DateTimeMinimum": minimum DateTime // @0001-01-01T00:00:00.000
/// define "ErrorMinimum": minimum Quantity
class MinValue extends CqlExpression {
  final QName valueType;

  MinValue({
    required this.valueType,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory MinValue.fromJson(Map<String, dynamic> json) => MinValue(
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
      'valueType': valueType.toJson(),
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
  String get type => 'MinValue';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    switch (valueType.localPart) {
      case 'Integer':
        return ['Integer'];
      case 'Long':
        return ['Integer64'];
      case 'Decimal':
        return ['Decimal'];
      case 'Quantity':
        return ['Quantity'];
      case 'Date':
        return ['Date'];
      case 'DateTime':
        return ['DateTime'];
      case 'Time':
        return ['Time'];
      default:
        return ['None'];
    }
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    return minValue(valueType.localPart);
  }

  static dynamic minValue(String type) {
    switch (type) {
      case 'FhirInteger':
      case 'Integer':
        return FhirInteger(-2147483648);
      case 'FhirInteger64':
      case 'Long':
        return FhirInteger64.fromString('-9223372036854775808');
      case 'FhirDecimal':
      case 'Decimal':
        return FhirDecimal(-99999999999999999999.99999999);
      case 'ValidatedQuantity':
      case 'Quantity':
        return ValidatedQuantity.fromNumber(-99999999999999999999.99999999);
      case 'FhirDate':
      case 'Date':
        return FhirDate.fromUnits(year: 1, month: 1, day: 1);
      case 'FhirDateTime':
      case 'DateTime':
        return FhirDateTime.fromString('0001-01-01T00:00:00.000');
      case 'FhirTime':
      case 'Time':
        return FhirTime.fromUnits(
            hour: 0, minute: 0, second: 0, millisecond: 0);
      default:
        throw UnimplementedError();
    }
  }
}
