import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The Code type represents a literal code selector.
class Code extends CqlExpression {
  /// The code.
  String code;

  /// An optional display string for the code.
  String? display;

  /// The system of the code.
  CodeSystemRef system;

  Code({
    required this.code,
    this.display,
    required this.system,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Code.fromJson(Map<String, dynamic> json) {
    return Code(
      code: json['code'] as String,
      display: json['display'] as String?,
      system: CodeSystemRef.fromJson(json['system'] as Map<String, dynamic>),
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
      'code': code,
      'system': system.toJson(),
    };

    if (display != null) {
      json['display'] = display;
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
  String get type => 'Code';
}
