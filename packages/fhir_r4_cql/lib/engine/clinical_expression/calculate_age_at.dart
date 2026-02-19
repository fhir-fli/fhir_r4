import 'package:fhir_r4/fhir_r4.dart';

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

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    if (operand.length != 2) {
      throw ArgumentError('CalculateAgeAt requires exactly 2 operands');
    }

    final birthDateValue = await operand[0].execute(context);
    final asOfValue = await operand[1].execute(context);

    if (birthDateValue == null || asOfValue == null) return null;

    // Convert birthDate to a date string
    String birthDateStr;
    if (birthDateValue is FhirDateTimeBase) {
      birthDateStr = birthDateValue.toIso8601String()!;
    } else if (birthDateValue is String) {
      birthDateStr = birthDateValue;
    } else {
      return null;
    }

    // Convert asOf to a date string
    String asOfStr;
    if (asOfValue is FhirDateTimeBase) {
      asOfStr = asOfValue.toIso8601String()!;
    } else if (asOfValue is String) {
      asOfStr = asOfValue;
    } else {
      return null;
    }

    return await DurationBetween(
      precision: precision,
      operand: [
        LiteralDate(birthDateStr.length > 10
            ? birthDateStr.substring(0, 10)
            : birthDateStr),
        LiteralDate(asOfStr.length > 10
            ? asOfStr.substring(0, 10)
            : asOfStr),
      ],
    ).execute(context);
  }
}
