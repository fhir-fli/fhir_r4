import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to construct a date value from the given components.
/// At least one component must be specified, and no component may be specified at a precision below an unspecified precision.
/// For example, month may be null, but if it is, day must be null as well.
class DateExpression extends OperatorExpression {
  final CqlExpression? day;
  final CqlExpression? month;
  final CqlExpression year;

  DateExpression({
    required this.year,
    this.month,
    this.day,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory DateExpression.fromJson(Map<String, dynamic> json) => DateExpression(
        year: CqlExpression.fromJson(json['year']),
        month: json['month'] == null
            ? null
            : CqlExpression.fromJson(json['month']),
        day: json['day'] == null ? null : CqlExpression.fromJson(json['day']),
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
      'year': year.toJson(),
    };

    if (month != null) {
      data['month'] = month!.toJson();
    }

    if (day != null) {
      data['day'] = day!.toJson();
    }

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
  String get type => 'Date';
}
