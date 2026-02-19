import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to convert the value of its argument to an Integer value.
/// The operator accepts strings using the format: (+|-)?#0, meaning an optional polarity indicator,
/// followed by any number of digits (including none), followed by at least one digit.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Integer value, the result is null.
/// If the argument is null, the result is null.
class ToInteger extends UnaryExpression {
  ToInteger({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToInteger.fromJson(Map<String, dynamic> json) => ToInteger(
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
  String get type => 'ToInteger';
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
  List<String> getReturnTypes(CqlLibrary library) => const ['Integer'];

  @override
  Future<fhir.FhirInteger?> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) return null;
    switch (value) {
      case fhir.FhirInteger _:
        return value;
      case int _:
        return fhir.FhirInteger(value);
      case fhir.FhirBoolean _:
        return fhir.FhirInteger(value.valueBoolean == true ? 1 : 0);
      case bool _:
        return fhir.FhirInteger(value ? 1 : 0);
      case fhir.FhirInteger64 _:
        final bigVal = value.valueBigInt;
        if (bigVal == null) return null;
        return fhir.FhirInteger(bigVal.toInt());
      case fhir.FhirDecimal _:
        final numVal = value.valueNum;
        if (numVal == null) return null;
        return fhir.FhirInteger(numVal.truncate());
      case fhir.FhirString _:
        final parsed = int.tryParse(value.primitiveValue ?? '');
        if (parsed == null) return null;
        return fhir.FhirInteger(parsed);
      case String _:
        final parsed = int.tryParse(value);
        if (parsed == null) return null;
        return fhir.FhirInteger(parsed);
      default:
        return null;
    }
  }
}
