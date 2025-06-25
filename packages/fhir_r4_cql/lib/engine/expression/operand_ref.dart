import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Expression allowing the value of an operand to be referenced within the body of a function definition.
class OperandRef extends CqlExpression {
  /// Name of the referenced operand.
  String name;

  OperandRef({
    required this.name,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory OperandRef.fromRef(Ref ref) => OperandRef(
        name: ref.name,
        annotation: ref.annotation,
        localId: ref.localId,
        locator: ref.locator,
        resultTypeName: ref.resultTypeName,
        resultTypeSpecifier: ref.resultTypeSpecifier,
      );

  factory OperandRef.fromJson(Map<String, dynamic> json) => OperandRef(
        name: json['name']!,
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
  String toString() => toJson().toString();

  @override
  String get type => 'OperandRef';
}
