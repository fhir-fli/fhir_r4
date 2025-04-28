import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Expression allowing tuples of any type to be built up as an expression.
class Tuple extends CqlExpression {
  /// List of tuple elements specifying values for the elements of the tuple.
  List<TupleElement>? element;

  Tuple({
    this.element,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Tuple.fromJson(Map<String, dynamic> json) => Tuple(
        element: json['element'] != null
            ? (json['element'] as List)
                .map((e) => TupleElement.fromJson(e))
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

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> val = {'type': type};
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('element', element?.map((e) => e.toJson()).toList());
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());

    return val;
  }

  @override
  String get type => 'Tuple';

  @override
  Future<Map<String, dynamic>> execute(Map<String, dynamic> context) async {
    final Map<String, dynamic> result = {};
    for (final e in element!) {
      result[e.name] = await e.value.execute(context);
    }
    return result;
  }
}
