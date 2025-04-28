import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// TupleElementDefinition defines the name and type of a single element within a TupleTypeSpecifier.
class TupleElementDefinition extends Element {
  /// The type of the tuple element.
  TypeSpecifierExpression? elementType;

  /// The name of the tuple element.
  String? name;

  /// This element is deprecated. New implementations should use the new elementType element.
  TypeSpecifierExpression? type;

  TupleElementDefinition({
    this.type,
    this.elementType,
    this.name,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TupleElementDefinition.fromJson(Map<String, dynamic> json) =>
      TupleElementDefinition(
        type: json['type'] != null
            ? TypeSpecifierExpression.fromJson(json['type'])
            : null,
        elementType: json['elementType'] != null
            ? TypeSpecifierExpression.fromJson(json['elementType'])
            : null,
        name: json['name'],
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
    final Map<String, dynamic> val = {};
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('type', type?.toJson());
    writeNotNull('elementType', elementType?.toJson());
    writeNotNull('name', name);
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());

    return val;
  }
}
