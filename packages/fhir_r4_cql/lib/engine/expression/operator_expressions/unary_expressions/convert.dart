import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator for converting a value to a specific type.
/// Converts a value to a specific type.
/// The result of the operator is the value of the argument converted to the
/// target type, if possible.
/// If no valid conversion exists from the actual value to the target type,
/// the result is null.
/// This operator supports conversion between String and each of Boolean,
/// Integer, Decimal, Quantity, Ratio, Date, DateTime, and Time, from Integer
/// to Decimal or Quantity, from Decimal to Quantity, between Date and DateTime,
/// from Code to Concept, and between Concept and List<Code>.
/// Conversion between String and Date/DateTime/Time is performed using the
/// ISO-8601 standard format: YYYY-MM-DDThh:mm:ss(+|-)hh:mm.
class Convert extends UnaryExpression {
  /// Target type to convert to.
  QName? toType;

  /// Type specifier for the target type.
  TypeSpecifierExpression? toTypeSpecifier;

  Convert({
    this.toTypeSpecifier,
    this.toType,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Convert.fromJson(Map<String, dynamic> json) => Convert(
        toTypeSpecifier:
            TypeSpecifierExpression.fromJson(json['toTypeSpecifier']),
        toType: QName.fromFull(json['toType']),
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
      );

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      'type': type,
      'operand': operand.toJson(),
    };

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

    if (toTypeSpecifier != null) {
      data['toTypeSpecifier'] = toTypeSpecifier!.toJson();
    }

    if (toType != null) {
      data['toType'] = toType!.toJson();
    }

    return data;
  }

  @override
  String get type => 'Convert';
}
