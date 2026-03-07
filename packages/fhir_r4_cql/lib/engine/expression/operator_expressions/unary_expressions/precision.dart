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
      // Use the original literal string if available (preserves trailing zeros)
      String str;
      if (operand is LiteralDecimal) {
        final json = operand.toJson();
        str = json['value']?.toString() ?? value.valueString ?? '';
      } else {
        str = value.valueString ?? '';
      }
      final dotIdx = str.indexOf('.');
      if (dotIdx == -1) return fhir.FhirInteger(0);
      return fhir.FhirInteger(str.length - dotIdx - 1);
    }
    if (value is fhir.FhirDate) {
      // Count total significant digits: YYYY=4, YYYY-MM=6, YYYY-MM-DD=8
      final str = value.valueString ?? '';
      if (str.length >= 10) return fhir.FhirInteger(8); // day: 4+2+2
      if (str.length >= 7) return fhir.FhirInteger(6); // month: 4+2
      return fhir.FhirInteger(4); // year: 4
    }
    if (value is fhir.FhirDateTime) {
      // Count total significant digits (excluding separators):
      // YYYY=4, +MM=6, +DD=8, +HH=10, +MM=12, +SS=14, +mmm=17
      final str = value.valueString ?? '';
      if (str.contains('.')) return fhir.FhirInteger(17); // millisecond
      if (str.contains('T')) {
        final timePart = str.split('T')[1];
        final timeOnly =
            timePart.replaceAll(RegExp(r'[+-].*'), '').replaceAll('Z', '');
        final parts = timeOnly.split(':');
        if (parts.length >= 3) return fhir.FhirInteger(14); // second
        if (parts.length >= 2) return fhir.FhirInteger(12); // minute
        return fhir.FhirInteger(10); // hour
      }
      if (str.length >= 10) return fhir.FhirInteger(8);
      if (str.length >= 7) return fhir.FhirInteger(6);
      return fhir.FhirInteger(4);
    }
    if (value is fhir.FhirTime) {
      // Count total significant digits: HH=2, +MM=4, +SS=6, +mmm=9
      final str = value.valueString ?? '';
      if (str.contains('.')) return fhir.FhirInteger(9); // millisecond
      final parts = str.split(':');
      if (parts.length >= 3) return fhir.FhirInteger(6); // second
      if (parts.length >= 2) return fhir.FhirInteger(4); // minute
      return fhir.FhirInteger(2); // hour
    }
    return null;
  }
}
