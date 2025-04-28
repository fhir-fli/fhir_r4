import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The CodeFilterElement type specifies a terminology filter criteria for use
/// within a retrieve, specified as either [property] [comparator] [value] or
/// [search] [comparator] [value].
class CodeFilterElement extends Element {
  /// The codeComparator attribute specifies how elements of the code
  /// property should be matched to the terminology. One of 'in', '=', or '~'.
  /// Note that 'in' will resolve to the appropriate terminology matching
  /// operator, resulting in equivalence semantics for value set and code
  /// system membership testing.
  String comparator;

  /// The property attribute specifies which property the filter applies to.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? property;

  /// The search attribute specifies the name of a search path for the filter.
  String? search;

  /// An expression that provides the comparison value for the filter. The
  /// expression is expected to result in a List&lt;Code&gt; to match against.
  /// Only the clinical statements that match at least one of the specified
  /// codes will be returned.
  CqlExpression value;

  /// The valueSetProperty attribute optionally specifies which property of
  /// the model contains a value set identifier that can be used as an
  /// alternative mechanism for matching the value set of the retrieve, in the
  /// case when no code is specified in the source data.
  /// This attribute is intended to address the case where systems
  /// representing negation rationale for an activity not performed do so by
  /// indicating a valueset identifier rather than a code. For example, when
  /// indicating that a medication was not administered, the set identifier
  /// for the expected medication is used, rather than indicating a specific
  /// medication that was not administered. In this case, the valueSetProperty
  /// attribute allows the retrieve to specify where to look for the value set
  /// identifier without needing to change the conceptual data model or the
  /// CQL logic describing the negated activity.
  /// Note that implementers could also specify this information elsewhere as
  /// part of an implementation catalog, rather than on each Retrieve
  /// expression, but allowing it to be specified in the retrieve expression
  /// gives the most flexibility. From the perspective of ELM, the
  /// specification ensures that ELM can be processed without reference to the
  /// model information. This property may be specified as a path, including
  /// qualifiers and constant indexers. The &lt;simplePath&gt; production rule
  /// in the CQL grammar provides the formal semantics for this path.
  String? valueSetProperty;

  CodeFilterElement({
    required this.value,
    this.property,
    this.valueSetProperty,
    this.search,
    required this.comparator,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CodeFilterElement.fromJson(Map<String, dynamic> json) =>
      CodeFilterElement(
        value: CqlExpression.fromJson(json['value']),
        property: json['property'],
        valueSetProperty: json['valueSetProperty'],
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

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'value': value.toJson(),
      'comparator': comparator,
    };

    if (property != null) {
      json['property'] = property;
    }

    if (valueSetProperty != null) {
      json['valueSetProperty'] = valueSetProperty;
    }

    if (search != null) {
      json['search'] = search;
    }

    if (annotation != null) {
      json['annotation'] = annotation!.map((x) => x.toJson()).toList();
    }

    if (localId != null) {
      json['localId'] = localId;
    }

    if (locator != null) {
      json['locator'] = locator;
    }

    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return json;
  }
}
