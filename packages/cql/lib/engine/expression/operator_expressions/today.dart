import 'package:fhir_r4/fhir_r4.dart';

import '../../../cql.dart';

/// Operator to return the date (with no time component) of the start timestamp
/// associated with the evaluation request.
/// Signature:
///
/// Today() Date
/// Description:
///
/// The Today operator returns the date of the start timestamp associated with
/// the evaluation request. See the Now operator for more information on the
/// rationale for defining the Today operator in this way.
class Today extends OperatorExpression {
  Today({
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Today.fromJson(Map<String, dynamic> json) => Today(
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
  String get type => 'Today';

  @override
  Future<FhirDate> execute(Map<String, dynamic> context) async {
    final startTimestamp = context['startTimestamp'] as FhirDateTime;
    return FhirDate.fromString(
        startTimestamp.toIso8601String()!.substring(0, 10));
  }
}
