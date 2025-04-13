import '../../../cql.dart';

/// Represents an interval type, extending [TypeInfo].
///
/// The [IntervalTypeInfo] type represents an interval type, extending [TypeInfo],
/// incorporating a pointTypeSpecifier element and pointType attribute.
class IntervalTypeInfo extends TypeInfo {
  /// Point type as a string.
  String? pointType;

  /// Point type specifier element.
  TypeSpecifierModel? pointTypeSpecifier;

  final String type = 'IntervalTypeInfo';

  IntervalTypeInfo({
    this.pointTypeSpecifier,
    this.pointType,
    super.baseType,
  });

  factory IntervalTypeInfo.fromJson(Map<String, dynamic> json) {
    return IntervalTypeInfo(
      pointTypeSpecifier: json['pointTypeSpecifier'] != null
          ? TypeSpecifierModel.fromJson(json['pointTypeSpecifier'])
          : null,
      pointType: json['pointType'] as String?,
      baseType: json['baseType'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'type': type};
    if (pointTypeSpecifier != null) {
      data['pointTypeSpecifier'] = pointTypeSpecifier!.toJson();
    }
    if (pointType != null) {
      data['pointType'] = pointType;
    }
    if (baseType != null) {
      data['baseType'] = baseType;
    }
    return data;
  }
}
