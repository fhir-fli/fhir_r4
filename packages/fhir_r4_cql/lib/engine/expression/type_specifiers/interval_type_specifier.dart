import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Represents an interval type specifier, extending [TypeSpecifier].
///
/// The [IntervalTypeSpecifier] type represents an interval type, inheriting from TypeSpecifier,
/// including a pointTypeSpecifier element and pointType attribute.
class IntervalTypeSpecifier extends TypeSpecifierExpression {
  TypeSpecifierExpression? pointType;

  IntervalTypeSpecifier({
    this.pointType,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IntervalTypeSpecifier.fromJson(Map<String, dynamic> json) {
    return IntervalTypeSpecifier(
      pointType: json['pointType'] == null
          ? null
          : json['pointType'] is Map<String, dynamic>
              ? TypeSpecifierExpression.fromJson(json['pointType'])
              : null,
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
    final data = <String, dynamic>{
      'type': type,
    };

    if (pointType != null) {
      data['pointType'] = pointType!.toJson();
    }

    if (annotation != null) {
      data['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      data['localId'] = localId;
    }

    if (locator != null) {
      data['locator'] = locator;
    }

    if (resultTypeName != null) {
      data['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      data['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'IntervalTypeSpecifier';
}
