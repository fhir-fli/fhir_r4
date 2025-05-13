import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to convert the value of its argument to a String value.
/// The operator uses specific string representations for each type:
/// Boolean: true|false
/// Integer: (-)?#0
/// Decimal: (-)?#0.0#
/// Quantity: (-)?#0.0# '<unit>'
/// Date: YYYY-MM-DD
/// DateTime: YYYY-MM-DDThh:mm:ss.fff(+|-)hh:mm
/// Time: hh:mm:ss.fff
/// Ratio: <quantity>:<quantity>
/// If the argument is null, the result is null.
class ToString extends UnaryExpression {
  ToString({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToString.fromJson(Map<String, dynamic> json) => ToString(
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
  String get type => 'ToString';

  @override
  Future<fhir.FhirString?> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    return toStringCql(value);
  }

  fhir.FhirString? toStringCql(dynamic value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case bool _:
        return fhir.FhirString(value ? 'true' : 'false');
      case int _:
        return fhir.FhirString(value.toString());
      case double _:
        return fhir.FhirString(value.toString());
      case String _:
        return fhir.FhirString(value);
      case DateTime _:
        return fhir.FhirString(value.toIso8601String());
      case Ratio _:
        final numerator = '${value.numerator.value} ${value.numerator.unit}';
        final denominator =
            '${value.denominator.value} ${value.denominator.unit}';
        return fhir.FhirString('$numerator:$denominator');
      case fhir.FhirBoolean _:
        return value.valueString?.toFhirString;
      case fhir.FhirNumber _:
        return value.valueString?.toFhirString;
      case fhir.FhirString _:
        return value;
      case fhir.FhirDateTimeBase _:
        return value.valueString?.toFhirString;
      case fhir.FhirTime _:
        return value.valueString?.toFhirString;
      case fhir.FhirUri _:
        return value.valueString?.toFhirString;
      default:
        throw Exception('Unsupported type for ToString: ${value.runtimeType}');
    }
  }
}
