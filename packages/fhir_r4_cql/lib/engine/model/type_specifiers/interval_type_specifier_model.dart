import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Represents an interval type specifier, extending [TypeSpecifier].
///
/// The [IntervalTypeSpecifier] type represents an interval type, inheriting from TypeSpecifier,
/// including a pointTypeSpecifier element and pointType attribute.
class IntervalTypeSpecifierModel extends TypeSpecifierModel {
  TypeSpecifierModel? pointTypeSpecifier;

  String? pointType;

  IntervalTypeSpecifierModel({
    this.pointTypeSpecifier,
    this.pointType,
  });

  IntervalTypeSpecifierModel.fromJson(Map<String, dynamic> map)
      : pointTypeSpecifier = map['pointTypeSpecifier'] != null
            ? TypeSpecifierModel.fromJson(map['pointTypeSpecifier'])
            : null,
        pointType = map['pointType'],
        super(type: 'IntervalTypeSpecifier');

  @override
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'type': 'IntervalTypeSpecifier',
    };
    if (pointTypeSpecifier != null) {
      map['pointTypeSpecifier'] = pointTypeSpecifier!.toJson();
    }
    if (pointType != null) {
      map['pointType'] = pointType;
    }
    return map;
  }
}
