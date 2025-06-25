import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Represents a choice type specifier, extending [TypeSpecifier].
///
/// The [ChoiceTypeSpecifier] type represents a choice type,
/// extending TypeInfo and including choice elements.
class ChoiceTypeSpecifier extends TypeSpecifierExpression {
  /// Choice elements.
  List<TypeSpecifierExpression>? choice;

  ChoiceTypeSpecifier({
    this.choice,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ChoiceTypeSpecifier.fromJson(Map<String, dynamic> json) {
    return ChoiceTypeSpecifier(
      choice: json['choice'] != null
          ? (json['choice'] as List)
              .map((i) => TypeSpecifierExpression.fromJson(i))
              .toList()
          : null,
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
    final data = <String, dynamic>{
      'type': type,
    };

    if (choice != null) {
      data['choice'] = choice!.map((e) => e.toJson()).toList();
    }

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
  String toString() => toJson().toString();

  @override
  String get type => 'ChoiceTypeSpecifier';
}
