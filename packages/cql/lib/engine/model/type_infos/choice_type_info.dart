import '../../../cql.dart';

/// Represents a choice type information, extending [TypeInfo].
///
/// The [ChoiceTypeInfo] type represents a choice type, extending TypeInfo,
/// including type and choice elements.
class ChoiceTypeInfo extends TypeInfo {
  /// Choice type elements.
  List<TypeSpecifierModel>? choice;

  /// Deprecated type element.
  List<TypeSpecifierModel>? type;

  ChoiceTypeInfo({
    this.type,
    this.choice,
    super.baseType,
  });

  factory ChoiceTypeInfo.fromJson(Map<String, dynamic> json) {
    return ChoiceTypeInfo(
      type: json['type'] != null
          ? (json['type'] as List)
              .map((i) => TypeSpecifierModel.fromJson(i))
              .toList()
          : null,
      choice: json['choice'] != null
          ? (json['choice'] as List)
              .map((i) => TypeSpecifierModel.fromJson(i))
              .toList()
          : null,
      baseType: json['baseType'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'type': 'ChoiceTypeInfo'};
    if (type != null) {
      data['type'] = type!.map((v) => v.toJson()).toList();
    }
    if (choice != null) {
      data['choice'] = choice!.map((v) => v.toJson()).toList();
    }
    if (baseType != null) {
      data['baseType'] = baseType;
    }
    return data;
  }
}
