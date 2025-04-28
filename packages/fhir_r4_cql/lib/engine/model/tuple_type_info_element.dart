import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Models an element within [TupleTypeInfo].
///
/// The [TupleTypeInfoElement] defines an element within the TupleTypeInfo,
/// indicating its type and associated attributes.
class TupleTypeInfoElement {
  /// Element type as a string.
  String? elementType;

  /// Element type specifier.
  TypeSpecifierModel? elementTypeSpecifier;

  /// Name of the element.
  String name;

  /// Indicates if the starting index for a list-valued element is one.
  bool? oneBased;

  /// Specifies whether the element is prohibited.
  bool? prohibited;

  /// Deprecated attribute.
  String? type;

  /// Deprecated element.
  TypeSpecifierModel? typeSpecifier;

  TupleTypeInfoElement({
    required this.name,
    this.typeSpecifier,
    this.elementTypeSpecifier,
    this.type,
    this.elementType,
    this.prohibited,
    this.oneBased,
  });

  factory TupleTypeInfoElement.fromJson(Map<String, dynamic> json) {
    return TupleTypeInfoElement(
      name: json['name'] as String,
      typeSpecifier: json['typeSpecifier'] != null
          ? TypeSpecifierModel.fromJson(json['typeSpecifier'])
          : null,
      elementTypeSpecifier: json['elementTypeSpecifier'] != null
          ? TypeSpecifierModel.fromJson(json['elementTypeSpecifier'])
          : null,
      type: json['type'] as String?,
      elementType: json['elementType'] as String?,
      prohibited: json['prohibited'] as bool?,
      oneBased: json['oneBased'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    if (typeSpecifier != null) {
      data['typeSpecifier'] = typeSpecifier!.toJson();
    }
    if (elementTypeSpecifier != null) {
      data['elementTypeSpecifier'] = elementTypeSpecifier!.toJson();
    }
    if (type != null) {
      data['type'] = type;
    }
    if (elementType != null) {
      data['elementType'] = elementType;
    }
    if (prohibited != null) {
      data['prohibited'] = prohibited;
    }
    if (oneBased != null) {
      data['oneBased'] = oneBased;
    }
    return data;
  }
}
