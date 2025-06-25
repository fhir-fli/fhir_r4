import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the date and time of the start timestamp associated with
/// the evaluation request.
/// Now is defined to always return the same value within any given evaluation.
/// Signature:
///
/// Now() DateTime
/// Description:
///
/// The Now operator returns the date and time of the start timestamp
/// associated with the evaluation request. Now is defined in this way for two
/// reasons:
/// 1. The operation will always return the same value within any given
/// evaluation, ensuring that the result of an expression containing Now will
/// always return the same result.
/// 2. The operation will return the timestamp associated with the evaluation
/// request, allowing the evaluation to be performed with the same timezone
/// offset information as the data delivered with the evaluation request.
class Now extends OperatorExpression {
  Now({
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Now.fromJson(Map<String, dynamic> json) => Now(
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
  String get type => 'Now';

  @override
  Future<FhirDateTime> execute(Map<String, dynamic> context) async {
    return context['startTimestamp'];
  }
}
