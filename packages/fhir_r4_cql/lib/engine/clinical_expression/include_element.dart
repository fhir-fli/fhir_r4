import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// The IncludeElement type specifies include information for an include within
/// a retrieve.
class IncludeElement extends Element {
  /// The localId of another Retrieve that specifies the data to be included in
  /// this retrieve. The target Retrieve will have an includedIn attribute
  /// referencing this includeElement.
  String? includeFrom;

  /// The isReverse attribute indicates that the include is reverse, i.e. that
  /// the relatedDataType is referencing the data being retrieved, rather than
  /// the retrieved data referencing the relatedDataType.
  bool? isReverse;

  /// The relatedDataType attribute specifies the type of the related data
  /// being requested.
  QName relatedDataType;

  /// The relatedProperty attribute specifies which property of the
  /// relatedDataType contains the relatedId for the clinical statement.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? relatedProperty;

  /// The relatedSearch attribute specifies the name of the search path to use
  /// for searching for data of the relatedDataType.
  String? relatedSearch;

  IncludeElement({
    this.includeFrom,
    required this.relatedDataType,
    this.relatedProperty,
    this.relatedSearch,
    this.isReverse,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IncludeElement.fromJson(Map<String, dynamic> json) => IncludeElement(
        includeFrom: json['includeFrom'],
        relatedDataType: QName.parse(json['relatedDataType']),
        relatedProperty: json['relatedProperty'],
        relatedSearch: json['relatedSearch'],
        isReverse: json['isReverse'],
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
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('includeFrom', includeFrom);
    val['relatedDataType'] = relatedDataType.toJson();
    writeNotNull('relatedProperty', relatedProperty);
    writeNotNull('relatedSearch', relatedSearch);
    writeNotNull('isReverse', isReverse);
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }
}
