import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Calculates the age in the specified precision of a person born on a given
/// date, as of another given date.
///
/// The CalculateAgeAt operator has two signatures:
/// (Date, Date)
/// (DateTime, DateTime)
///
/// For the Date overload, precision must be one of year, month, week, or day,
/// and the result is the number of whole calendar periods that have elapsed
/// between the first date and the second date.
///
/// For the DateTime overload, the result is the number of whole calendar periods
/// that have elapsed between the first datetime and the second datetime.
class CalculateAgeAt extends BinaryExpression {
  final CqlDateTimePrecision precision;

  CalculateAgeAt({
    required this.precision,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CalculateAgeAt.fromJson(Map<String, dynamic> json) => CalculateAgeAt(
        precision: CqlDateTimePrecisionExtension.fromJson(json['precision']),
        operand: List<CqlExpression>.from(
          json['operand'].map((x) => CqlExpression.fromJson(x)),
        ),
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
      'operand': operand.map((x) => x.toJson()).toList(),
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
  String get type => 'CalculateAgeAt';
}
