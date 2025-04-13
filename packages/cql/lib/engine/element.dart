import '../cql.dart';

class Element {
  // The annotation element provides a mechanism for decorating expressions
  // with application-specific information such as translation hints, visual
  // designer information, or debug symbols.
  List<CqlToElmBase>? annotation;

  // The localId for an ELM node identifies the location in the source document
  // that produced the ELM. The format is L:C[-L:C], where L is a line number
  // and C is a column number. For locators that span a range, an optional
  // range can be given to an ending line and column number. Line and column
  // numbers are 1-based.
  String? localId;

  // The locator for an ELM node identifies the location in the source document
  // that produced the ELM. The format is L:C[-L:C], where L is a line number
  // and C is a column number. For locators that span a range, an optional
  // range can be given to an ending line and column number. Line and column
  // numbers are 1-based.
  String? locator;

  // The resultTypeName attribute is part of type information for an ELM document.
  // ELM documents are not required to specify result type information, but if they
  // do, the result type of each node is specified using this attribute for named
  // types, or the resultTypeSpecifier element for non-named types.
  String? resultTypeName;

  // The resultTypeSpecifier element describes the type information for this ELM node.
  // ELM documents are not required to contain result type information, but if they do,
  // the result type of each node is specified using the resultTypeName attribute for
  // named types, and this resultTypeSpecifier element for non-named types.
  TypeSpecifierExpression? resultTypeSpecifier;

  Element({
    this.annotation,
    this.resultTypeSpecifier,
    this.resultTypeName,
    this.localId,
    this.locator,
  });

  factory Element.fromJson(Map<String, dynamic> json) => Element(
        annotation: (json['annotation'] as List<dynamic>?)
            ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
            .toList(),
        resultTypeSpecifier: json['resultTypeSpecifier'] == null
            ? null
            : TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>),
        resultTypeName: json['resultTypeName'] as String?,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
      );

  dynamic toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    return val;
  }
}
