import '../../cql.dart';

/// Null operator returning a null or missing information marker.
class NullExpression extends Literal {
  final QName? resultType;
  NullExpression({
    required super.valueType,
    this.resultType,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory NullExpression.fromJson(Map<String, dynamic> json) => NullExpression(
        valueType: json['valueType'] != null
            ? QName.fromJson(json['valueType'])
            : QName.fromLocalPart('Null'),
        resultType: json['resultTypeName'] != null
            ? QName.fromJson(json['resultTypeName'])
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

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> val = {
      if (resultType != null) 'resultTypeName': resultType!.toJson(),
      'type': type,
    };
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String get type => 'Null';

  @override
  dynamic execute(Map<String, dynamic> context) => null;
}
