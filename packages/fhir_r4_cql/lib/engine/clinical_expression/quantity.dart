import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// The Quantity type defines a clinical quantity. For example, the quantity 10
/// days or 30 mmHg. The value is a decimal, while the unit is expected to be a
/// valid UCUM unit.
class Quantity extends CqlExpression {
  final String unit;
  final num value;

  Quantity({
    required this.value,
    required this.unit,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Quantity.fromJson(Map<String, dynamic> json) => Quantity(
        value: json['value'] is String
            ? num.parse(json['value'])
            : json['value'] is num
                ? json['value']
                : throw ArgumentError('Quantity value must be a number'),
        unit: json['unit']!,
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
    json['value'] = value;
    json['unit'] = unit;
    json['type'] = type;
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
  String get type => 'Quantity';

  ValidatedQuantity get validatedQuantity => ValidatedQuantity(
      value: UcumDecimal.fromString(value.toString()), unit: unit);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    } else if (other is Quantity) {
      return validatedQuantity == other.validatedQuantity;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => value.hashCode ^ unit.hashCode;

  @override
  Future<ValidatedQuantity> execute(Map<String, dynamic> context) async =>
      validatedQuantity;
}
