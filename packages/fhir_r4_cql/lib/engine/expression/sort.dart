import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The Sort operator returns a list with all the elements in source, sorted as described by the by element.
/// When the sort elements do not provide a unique ordering, the order of duplicates is unspecified.
/// If the argument is null, the result is null.
class Sort extends CqlExpression {
  final List<SortByItem> by;
  final CqlExpression source;

  Sort({
    required this.source,
    required this.by,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Sort.fromJson(Map<String, dynamic> json) => Sort(
        source: CqlExpression.fromJson(json['source']),
        by: List<SortByItem>.from(
            json['by'].map((x) => SortByItem.fromJson(x))),
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
      'type': type,
      'source': source.toJson(),
      'by': List<dynamic>.from(by.map((x) => x.toJson())),
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
  String get type => 'Sort';
}
