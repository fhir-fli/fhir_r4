import 'package:fhir_r4/fhir_r4.dart';

import '../../../cql.dart';

/// Operator to return the time-of-day of the start timestamp associated with
/// the evaluation request.
/// Signature:
///
/// TimeOfDay() Time
/// Description:
///
/// The TimeOfDay operator returns the time of day of the start timestamp
/// associated with the evaluation request. See the Now operator for more
/// information on the rationale for defining the TimeOfDay operator in this way.
class TimeOfDay extends OperatorExpression {
  TimeOfDay({
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TimeOfDay.fromJson(Map<String, dynamic> json) => TimeOfDay(
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
  String get type => 'TimeOfDay';

  @override
  FhirTime execute(Map<String, dynamic> context) {
    final startTimestamp = context['startTimestamp'] as FhirDateTime;
    return FhirTime(startTimestamp.toIso8601String()!.substring(11, 23));
  }
}
