import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The AnyInCodeSystem operator returns true if any of the given codes are in
/// the given code system.
///
/// The first argument is expected to be a list of String, Code, or Concept.
///
/// Note that this operator explicitly requires a CodeSystemRef as its codesystem
/// argument. This allows for both static analysis of the code system references
/// within an artifact, as well as the implementation of code system membership
/// by the target environment as a service call to a terminology server, if
/// desired.
class AnyInCodeSystem extends OperatorExpression {
  final CqlExpression codes;
  final CodeSystemRef codesystem;

  AnyInCodeSystem({
    required this.codes,
    required this.codesystem,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory AnyInCodeSystem.fromJson(Map<String, dynamic> json) =>
      AnyInCodeSystem(
        codes: CqlExpression.fromJson(json['codes']!),
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
      'codes': codes.toJson(),
      'codesystem': codesystem.toJson(),
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
  String get type => 'AnyInCodeSystem';
}
