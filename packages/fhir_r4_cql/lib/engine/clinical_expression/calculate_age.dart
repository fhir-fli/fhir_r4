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
}
