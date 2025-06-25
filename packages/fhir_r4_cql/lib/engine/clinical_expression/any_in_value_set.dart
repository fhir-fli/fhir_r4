import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The AnyInValueSet operator returns true if any of the given codes are in the
/// given value set.
///
/// The first argument is expected to be a list of String, Code, or Concept.
///
/// Note that this operator explicitly requires a ValueSetRef as its valueset
/// argument. This allows for both static analysis of the value set references
/// within an artifact, as well as the implementation of value set membership by
/// the target environment as a service call to a terminology server, if desired.
class AnyInValueSet extends OperatorExpression {
  final CqlExpression codes;
  final ValueSetRef? valueset;
  final CqlExpression? valuesetExpression;

  AnyInValueSet({
    required this.codes,
    this.valueset,
    this.valuesetExpression,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory AnyInValueSet.fromJson(Map<String, dynamic> json) => AnyInValueSet(
        codes: CqlExpression.fromJson(json['codes']!),
        valueset: json['valueset'] == null
            ? null
            : ValueSetRef.fromJson(json['valueset']!),
        valuesetExpression: json['valuesetExpression'] == null
            ? null
            : CqlExpression.fromJson(json['valuesetExpression']!),
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
      'type': type,
      'codes': codes.toJson(),
    };

    if (valueset != null) {
      json['valueset'] = valueset!.toJson();
    }

    if (valuesetExpression != null) {
      json['valuesetExpression'] = valuesetExpression!.toJson();
    }

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
  String get type => 'AnyInValueSet';
}
