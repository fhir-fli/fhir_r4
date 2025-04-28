import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The InValueSet operator returns true if the given code is in the given value
/// set.
///
/// The first argument is expected to be a String, Code, or Concept.
///
/// Note that this operator explicitly requires a ValueSetRef as its valueset
/// argument. This allows for both static analysis of the value set references
/// within an artifact, as well as the implementation of value set membership by
/// the target environment as a service call to a terminology server, if desired.
class InValueSet extends OperatorExpression {
  final CqlExpression code;
  final ValueSetRef? valueset;
  final CqlExpression? valuesetExpression;

  InValueSet({
    required this.code,
    this.valueset,
    this.valuesetExpression,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory InValueSet.fromJson(Map<String, dynamic> json) {
    return InValueSet(
      code: CqlExpression.fromJson(json['code']!),
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
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      'code': code.toJson(),
    };

    if (valueset != null) {
      final valueSetMap = valueset!.toJson();
      valueSetMap
          .removeWhere((key, value) => key == 'type' && value == 'ValueSetRef');
      json['valueset'] = valueSetMap;
    }

    if (valuesetExpression != null) {
      json['valuesetExpression'] = valuesetExpression!.toJson();
    }

    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
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
  String get type => 'InValueSet';
}
