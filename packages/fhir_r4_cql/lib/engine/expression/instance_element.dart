import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Instance element used within an Instance expression.
class InstanceElement extends Element {
  /// Required name of the instance element.
  String name;

  /// Value expression of the instance element.
  CqlExpression value;

  InstanceElement({
    required this.name,
    required this.value,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory InstanceElement.fromJson(Map<String, dynamic> json) =>
      InstanceElement(
        name: json['name'],
        value: CqlExpression.fromJson(json['value']),
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

  String get type => 'InstanceElement';
}
