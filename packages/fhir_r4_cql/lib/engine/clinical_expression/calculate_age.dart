import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Calculates the age in the specified precision of a person born on the given
/// date.
///
/// The CalculateAge operator is defined for Date and DateTime.
///
/// For the Date overload, the calculation is performed using Today(), the
/// precision must be one of year, month, week, or day, and the result is the
/// number of whole calendar periods that have elapsed between the given date and
/// today.
///
/// For the DateTime overload, the calculation is performed using Now(), and the
/// result is the number of whole calendar periods that have elapsed between the
/// given datetime and now.
class CalculateAge extends UnaryExpression {
  final CqlDateTimePrecision precision;

  CalculateAge({
    required this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CalculateAge.fromJson(Map<String, dynamic> json) => CalculateAge(
        precision: CqlDateTimePrecisionExtension.fromJson(json['precision']),
        operand: CqlExpression.fromJson(json['operand']!),
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
    final Map<String, dynamic> json = {
      'precision': precision.toJson(),
      'type': type,
      'operand': operand.toJson(),
    };

    if (annotation != null) {
      json['annotation'] = annotation!.map((x) => x.toJson()).toList();
    }

    if (localId != null) {
      json['localId'] = localId;
    }

    if (locator != null) {
      json['locator'] = locator;
    }

    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return json;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'CalculateAge';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    // The operand should resolve to the patient's birth date
    final birthDateValue = await operand.execute(context);
    if (birthDateValue == null) return null;

    // Convert to FhirDate if needed
    FhirDateTimeBase birthDate;
    if (birthDateValue is FhirDate) {
      birthDate = birthDateValue;
    } else if (birthDateValue is FhirDateTime) {
      birthDate = birthDateValue;
    } else if (birthDateValue is String) {
      birthDate = FhirDate.fromString(birthDateValue);
    } else {
      return null;
    }

    // Use Today() for Date-based calculation
    final today = await Today().execute(context);
    if (today == null) return null;

    return await DurationBetween(
      precision: precision,
      operand: [
        LiteralDate(birthDate.toIso8601String()!),
        LiteralDate(today.toIso8601String()!),
      ],
    ).execute(context);
  }
}
