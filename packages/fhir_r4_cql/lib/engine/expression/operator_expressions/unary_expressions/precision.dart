import 'package:fhir_r4/fhir_r4.dart' as fhir;

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the number of digits of precision in the input value.
/// The operator can be used with Decimal, Date, DateTime, and Time values.
/// If the argument is null, the result is null.
class Precision extends UnaryExpression {
  Precision({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Precision.fromJson(Map<String, dynamic> json) => Precision(
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
  String get type => 'Precision';
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
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) return null;
    if (value is fhir.FhirDecimal) {
      final str = value.valueString ?? '';
      final dotIdx = str.indexOf('.');
      if (dotIdx == -1) return fhir.FhirInteger(0);
      return fhir.FhirInteger(str.length - dotIdx - 1);
    }
    if (value is fhir.FhirDate) {
      final str = value.valueString ?? '';
      // YYYY = 4 (year), YYYY-MM = 7 (month), YYYY-MM-DD = 10 (day)
      if (str.length >= 10) return fhir.FhirInteger(3); // day precision
      if (str.length >= 7) return fhir.FhirInteger(2); // month precision
      return fhir.FhirInteger(1); // year precision
    }
    if (value is fhir.FhirDateTime) {
      final str = value.valueString ?? '';
      if (str.contains('.')) return fhir.FhirInteger(8); // millisecond
      if (str.contains('T')) {
        final timePart = str.split('T')[1];
        final timeOnly =
            timePart.replaceAll(RegExp(r'[+-].*'), '').replaceAll('Z', '');
        final parts = timeOnly.split(':');
        if (parts.length >= 3) return fhir.FhirInteger(7); // second
        if (parts.length >= 2) return fhir.FhirInteger(6); // minute
        return fhir.FhirInteger(5); // hour
      }
      if (str.length >= 10) return fhir.FhirInteger(3);
      if (str.length >= 7) return fhir.FhirInteger(2);
      return fhir.FhirInteger(1);
    }
    if (value is fhir.FhirTime) {
      final str = value.valueString ?? '';
      if (str.contains('.')) return fhir.FhirInteger(4); // millisecond
      final parts = str.split(':');
      if (parts.length >= 3) return fhir.FhirInteger(3); // second
      if (parts.length >= 2) return fhir.FhirInteger(2); // minute
      return fhir.FhirInteger(1); // hour
    }
    return null;
  }
}
