import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to check if a value can be converted to a specific type.
/// Returns true if the given value can be converted to a specific type,
/// and false otherwise.
/// This operator returns true for conversion between String and each of
/// Boolean, Integer, Decimal, Quantity, Ratio, Date, DateTime, and Time, from
/// Integer to Decimal or Quantity, from Decimal to Quantity, between Date and
/// DateTime, from Code to Concept, and between Concept and List<Code>.
/// Conversion between String and Date/DateTime/Time is checked using the
/// ISO-8601 standard format: YYYY-MM-DDThh:mm:ss(+|-)hh:mm.
class CanConvert extends UnaryExpression {
  /// Target type to convert to.
  QName? toType;

  /// Type specifier for the target type.
  TypeSpecifierExpression? toTypeSpecifier;

  CanConvert({
    this.toTypeSpecifier,
    this.toType,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory CanConvert.fromJson(Map<String, dynamic> json) => CanConvert(
        operand: CqlExpression.fromJson(json['operand']!),
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
      )
        ..toTypeSpecifier = json['toTypeSpecifier']
        ..toType = json['toType'];

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
    };

    if (toTypeSpecifier != null) {
      data['toTypeSpecifier'] = toTypeSpecifier!.toJson();
    }

    if (toType != null) {
      data['toType'] = toType!.toJson();
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
  String get type => 'CanConvert';
}
