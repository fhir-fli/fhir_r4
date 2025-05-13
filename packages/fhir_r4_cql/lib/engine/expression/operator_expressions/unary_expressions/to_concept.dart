import 'package:fhir_r4/fhir_r4.dart' show CodeableConcept, Coding;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to convert a value of type Code to a Concept value with the given Code.
/// If the Code has a display value, the resulting Concept will have the same display value.
/// If the argument is null, the result is null.
class ToConcept extends UnaryExpression {
  ToConcept({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToConcept.fromJson(Map<String, dynamic> json) => ToConcept(
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
  String get type => 'ToConcept';
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
  Future<CqlConcept?> execute(Map<String, dynamic> context) async {
    // Evaluate the operand to get the code value
    final value = await operand.execute(context);

    // If the input is null, return null
    if (value == null) {
      return null;
    }

    // Handle different input types
    if (value is CqlCode) {
      // If already a CqlCode, create a CqlConcept with this code
      return CqlConcept(
        codes: [value],
        display: value.display,
      );
    } else if (value is Coding) {
      // Convert FHIR Coding to CqlCode then to CqlConcept
      final code = CqlCode(
        code: value.code?.valueString,
        system: value.system?.valueString,
        display: value.display?.valueString,
      );

      return CqlConcept(
        codes: [code],
        display: value.display?.valueString,
      );
    } else if (value is CodeableConcept) {
      // Convert FHIR CodeableConcept to CqlConcept
      final codes = <CqlCode>[];

      // Convert each coding in the CodeableConcept to a CqlCode
      for (final coding in value.coding ?? []) {
        codes.add(CqlCode(
          code: coding.code?.valueString,
          system: coding.system?.valueString,
          display: coding.display?.valueString,
        ));
      }

      return CqlConcept(
        codes: codes,
        display: value.text?.valueString,
      );
    } else if (value is String) {
      // If just a string, treat it as a code with no system or display
      final code = CqlCode(
        code: value,
        system: null,
        display: null,
      );

      return CqlConcept(
        codes: [code],
        display: null,
      );
    }

    // If not a recognized type, return null or throw an exception
    throw ArgumentError(
        'Cannot convert value of type ${value.runtimeType} to Concept');
  }
}
