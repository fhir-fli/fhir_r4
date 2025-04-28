import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The InCodeSystem operator returns true if the given code is in the given
/// code system.
///
/// The first argument is expected to be a String, Code, or Concept.
///
/// Note that this operator explicitly requires a CodeSystemRef as its codesystem
/// argument. This allows for both static analysis of the code system references
/// within an artifact, as well as the implementation of code system membership
/// by the target environment as a service call to a terminology server, if
/// desired.
class InCodeSystem extends OperatorExpression {
  final CqlExpression code;
  final CodeSystemRef codesystem;

  InCodeSystem({
    required this.code,
    required this.codesystem,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory InCodeSystem.fromJson(Map<String, dynamic> json) => InCodeSystem(
        code: CqlExpression.fromJson(json['code']!),
        codesystem: CodeSystemRef.fromJson(json['codesystem']!),
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
      'code': code.toJson(),
      'codesystem': codesystem.toJson(),
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
  String get type => 'InCodeSystem';
}
