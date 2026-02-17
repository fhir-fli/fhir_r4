import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to convert the value of its argument to a Boolean value.
/// The operator accepts various string representations of true and false.
/// If the input cannot be interpreted as a valid Boolean value, the result is null.
/// If the argument is null, the result is null.
class ToBoolean extends UnaryExpression {
  ToBoolean({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToBoolean.fromJson(Map<String, dynamic> json) => ToBoolean(
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
  String get type => 'ToBoolean';
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
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<fhir.FhirBoolean?> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) return null;
    switch (value) {
      case fhir.FhirBoolean _:
        return value;
      case bool _:
        return fhir.FhirBoolean(value);
      case fhir.FhirInteger _:
        if (value.valueInt == 1) return fhir.FhirBoolean(true);
        if (value.valueInt == 0) return fhir.FhirBoolean(false);
        return null;
      case fhir.FhirDecimal _:
        if (value.valueNum == 1.0) return fhir.FhirBoolean(true);
        if (value.valueNum == 0.0) return fhir.FhirBoolean(false);
        return null;
      case fhir.FhirString _:
        final s = value.primitiveValue?.toLowerCase();
        if (s == 'true' || s == 't' || s == 'yes' || s == 'y' || s == '1') {
          return fhir.FhirBoolean(true);
        }
        if (s == 'false' || s == 'f' || s == 'no' || s == 'n' || s == '0') {
          return fhir.FhirBoolean(false);
        }
        return null;
      case String _:
        final s = value.toLowerCase();
        if (s == 'true' || s == 't' || s == 'yes' || s == 'y' || s == '1') {
          return fhir.FhirBoolean(true);
        }
        if (s == 'false' || s == 'f' || s == 'no' || s == 'n' || s == '0') {
          return fhir.FhirBoolean(false);
        }
        return null;
      default:
        return null;
    }
  }
}
