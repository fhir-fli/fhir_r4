import '../../cql.dart';

/// Represents type parameter information.
///
/// The [TypeParameterInfo] type specifies details regarding a generic class parameter,
/// including its name, constraint, and optional constraint type.
class TypeParameterInfo {
  /// Parameter constraint (NONE, CLASS, VALUE, TUPLE, INTERVAL, CHOICE, TYPE).
  String constraint;

  /// Type this parameter should be assignable from.
  String? constraintType;

  /// Name of the parameter.
  String name;

  /// Type specifier.
  TypeSpecifierModel? typeSpecifier;

  TypeParameterInfo({
    required this.name,
    required this.constraint,
    this.constraintType,
    this.typeSpecifier,
  });

  factory TypeParameterInfo.fromJson(Map<String, dynamic> json) {
    return TypeParameterInfo(
      name: json['name'] as String,
      constraint: json['constraint'] as String,
      constraintType: json['constraintType'] as String?,
      typeSpecifier: json['typeSpecifier'] != null
          ? TypeSpecifierModel.fromJson(json['typeSpecifier'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['constraint'] = constraint;
    if (constraintType != null) {
      data['constraintType'] = constraintType;
    }
    if (typeSpecifier != null) {
      data['typeSpecifier'] = typeSpecifier!.toJson();
    }
    return data;
  }

  @override
  String toString() => toJson().toString();
}
