import 'package:ucum/ucum.dart';

import '../../cql.dart';

/// The Ratio type defines a ratio between two quantities. For example, the
/// titre 1:128, or the concentration ratio 5 mg/10 mL. The numerator and
/// denominator are both quantities.
class Ratio extends CqlExpression {
  final Quantity denominator;
  final Quantity numerator;

  Ratio({
    required this.numerator,
    required this.denominator,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Ratio.fromJson(Map<String, dynamic> json) => Ratio(
        numerator: Quantity.fromJson(json['numerator']!),
        denominator: Quantity.fromJson(json['denominator']!),
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
    final Map<String, dynamic> json = {};
    json['type'] = type;
    json['numerator'] = numerator.toJson();
    json['denominator'] = denominator.toJson();
    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
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

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Ratio';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else if (other is Ratio) {
      return (numerator.validatedQuantity / denominator.validatedQuantity) ==
          (other.numerator.validatedQuantity /
              other.denominator.validatedQuantity);
    } else {
      return false;
    }
  }

  @override
  int get hashCode => numerator.hashCode ^ denominator.hashCode;

  @override
  ValidatedRatio execute(Map<String, dynamic> context) => ValidatedRatio(
        numerator: numerator.execute(context),
        denominator: denominator.execute(context),
      );
}
