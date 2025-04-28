import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// An abstract type containing a base type specifier element.
///
/// The [TypeInfo] abstract type serves as a base for other types,
/// containing a baseTypeSpecifier element and baseType attribute.
abstract class TypeInfo {
  /// Base type as a string.
  String? baseType;

  /// Base type specifier element.
  TypeSpecifierModel? baseTypeSpecifier;

  TypeInfo({
    this.baseTypeSpecifier,
    this.baseType,
  });

  factory TypeInfo.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      case 'ChoiceTypeInfo':
        return ChoiceTypeInfo.fromJson(json);
      case 'ClassInfo':
        return ClassInfo.fromJson(json);
      case 'IntervalTypeInfo':
        return IntervalTypeInfo.fromJson(json);
      case 'ListTypeInfo':
        return ListTypeInfo.fromJson(json);
      case 'ProfileInfo':
        return ProfileInfo.fromJson(json);
      case 'SimpleTypeInfo':
        return SimpleTypeInfo.fromJson(json);
      case 'TupleTypeInfo':
        return TupleTypeInfo.fromJson(json);
      default:
        throw ArgumentError('Unknown type: $type');
    }
  }

  Map<String, dynamic> toJson() => {
        if (baseTypeSpecifier != null)
          'baseTypeSpecifier': baseTypeSpecifier!.toJson(),
        if (baseType != null) 'baseType': baseType,
      };
}
