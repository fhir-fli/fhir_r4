import '../../cql.dart';

/// The OtherFilterElement type specifies an arbitrarily-typed filter criteria
/// for use within a retrieve, specified as either
/// [property] [comparator] [value] or [search] [comparator] [value].
class OtherFilterElement extends Element {
  /// The comparator attribute specifies the comparison operation for the filter.
  String comparator;

  /// The property attribute specifies which property the filter applies to.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? property;

  /// The search attribute specifies the name of a search path for the filter.
  String? search;

  /// An expression that provides the comparison value for the filter.
  CqlExpression value;

  OtherFilterElement({
    required this.value,
    this.property,
    this.search,
    required this.comparator,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory OtherFilterElement.fromJson(Map<String, dynamic> json) {
    final valueJson = json['value'];
    if (valueJson == null) {
      throw ArgumentError("JSON value cannot be null");
    }

    return OtherFilterElement(
      value: CqlExpression.fromJson(valueJson),
      property: json['property'],
      search: json['search'],
      comparator: json['comparator'],
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
    final Map<String, dynamic> json = {
      'comparator': comparator,
      'value': value.toJson(),
    };
    if (property != null) {
      json['property'] = property;
    }
    if (search != null) {
      json['search'] = search;
    }
    return json;
  }
}
