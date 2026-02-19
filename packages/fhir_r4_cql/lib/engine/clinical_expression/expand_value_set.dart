import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The operation exoects a single argument of type ValueSet. This may be a
/// static reference to a value set (i.e. a ValueSetRef), or a ValueSet value
/// to support dynamic value set usage. The operation is used as the implicit
/// conversion from a ValueSet reference to a list of codes.
/// If the argument is null, the result is null.

class ExpandValueSet extends UnaryExpression {
  ExpandValueSet({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ExpandValueSet.fromJson(Map<String, dynamic> json) => ExpandValueSet(
        operand: CqlExpression.fromJson(json['operand']),
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
      'operand': operand.toJson(),
    };

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
  String get type => 'ExpandValueSet';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) return null;
    if (value is CqlValueSet) {
      // Check local value set expansions
      final valueSets = context['_valueSets'];
      if (valueSets is Map<String, dynamic>) {
        final expansion = valueSets[value.id];
        if (expansion is List) {
          return expansion.map((ec) {
            if (ec is Map<String, dynamic>) {
              return CqlCode(
                code: ec['code']?.toString() ?? '',
                system: ec['system']?.toString(),
                display: ec['display']?.toString(),
              );
            }
            return ec;
          }).toList();
        }
      }
    }
    return null;
  }
}
