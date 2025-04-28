import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The Subsumes operator returns true if the given codes are equivalent, or if
/// the first code subsumes the second (i.e. the first code is an ancestor of
/// the second in a subsumption hierarchy), and false otherwise.
///
/// For the Concept overload, this operator returns true if any code in the first
/// concept subsumes any code in the second.
///
/// If either or both arguments are null, the result is null.
class Subsumes extends BinaryExpression {
  Subsumes({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Subsumes.fromJson(Map<String, dynamic> json) => Subsumes(
        operand: (json['operand']! as List)
            .map((e) => CqlExpression.fromJson(e))
            .toList(),
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
      'operand': operand.map((e) => e.toJson()).toList(),
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
  String get type => 'Subsumes';
}
