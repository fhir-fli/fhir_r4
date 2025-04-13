import '../../../cql.dart';

/// Represents a list type specifier, extending [TypeSpecifier].
///
/// The [ListTypeSpecifier] type represents a list type, inheriting from TypeSpecifier,
/// including an elementType element and elementType attribute.

class ListTypeSpecifierModel extends TypeSpecifierModel {
  /// Element type specifier.
  TypeSpecifierModel? elementTypeSpecifier;

  String? elementType;

  ListTypeSpecifierModel({
    this.elementTypeSpecifier,
    this.elementType,
  });

  ListTypeSpecifierModel.fromJson(Map<String, dynamic> map)
      : elementTypeSpecifier = map['elementTypeSpecifier'] != null
            ? TypeSpecifierModel.fromJson(map['elementTypeSpecifier'])
            : null,
        elementType = map['elementType'],
        super(type: 'ListTypeSpecifier');

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'type': 'ListTypeSpecifier',
    };
    if (elementTypeSpecifier != null) {
      map['elementTypeSpecifier'] = elementTypeSpecifier!.toJson();
    }
    if (elementType != null) {
      map['elementType'] = elementType;
    }
    return map;
  }
}
