import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Element within a Tuple expression providing the value of a specific element within a tuple literal expression.
class TupleElement extends Element {
  /// Name of the tuple element.
  String name;

  /// Value expression of the tuple element.
  CqlExpression value;

  TupleElement({
    required this.value,
    required this.name,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory TupleElement.fromJson(Map<String, dynamic> json) => TupleElement(
        value: CqlExpression.fromJson(json['value']),
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
    final Map<String, dynamic> val = {
      'name': name,
      'value': value.toJson(),
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
  String toString() => toJson().toString();

  String get type => 'TupleElement';
}
