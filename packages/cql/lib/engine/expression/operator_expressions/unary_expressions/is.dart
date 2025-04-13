import '../../../../cql.dart';

/// Is operator allowing testing the type of a result.
class Is extends UnaryExpression {
  /// Type to test against.
  QName? isType;

  /// Type specifier for testing.
  TypeSpecifierExpression? isTypeSpecifier;

  Is({
    this.isTypeSpecifier,
    this.isType,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Is.fromJson(Map<String, dynamic> json) => Is(
        isTypeSpecifier: json['isTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(json['isTypeSpecifier'])
            : null,
        isType: json['isType'] != null ? QName.fromJson(json['isType']) : null,
        operand: CqlExpression.fromJson(json['operand']!),
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
      'operand': operand.toJson(),
    };
    if (isTypeSpecifier != null) {
      data['isTypeSpecifier'] = isTypeSpecifier!.toJson();
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
  String get type => 'Is';
}
