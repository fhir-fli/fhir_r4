import '../../cql.dart';

/// The Concept type represents a literal concept selector.
class Concept extends CqlExpression {
  /// The codes that constitute the concept.
  List<Code> code;

  /// An optional display string for the concept.
  String? display;

  Concept({
    required this.code,
    this.display,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Concept.fromJson(Map<String, dynamic> json) {
    return Concept(
      code: (json['code'] as List).map((e) => Code.fromJson(e)).toList(),
      display: json['display'],
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
      'code': code.map((e) => e.toJson()).toList(),
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
  String get type => 'Concept';
}
