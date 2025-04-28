import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Literal expression defining a single scalar value.
class Literal extends CqlExpression {
  /// Qualified name of the value type.
  QName valueType;

  LiteralType? value;

  Literal({
    required this.valueType,
    this.value,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Literal.fromJson(Map<String, dynamic> json) {
    final String valueType = json['valueType'];
    LiteralType? value;
    switch (valueType) {
      case 'Null':
      case '{urn:hl7-org:elm-types:r1}Null':
        value = json['value'] == null
            ? null
            : LiteralBoolean.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Boolean':
        value = json['value'] == null
            ? null
            : LiteralBoolean.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Code':
        value =
            json['value'] == null ? null : LiteralCode.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Concept':
        value = json['value'] == null
            ? null
            : LiteralConcept.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}ValueSet':
        value = json['value'] == null
            ? null
            : LiteralValueSet.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}CodeSystem':
        value = json['value'] == null
            ? null
            : LiteralCodeSystem.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Date':
        value =
            json['value'] == null ? null : LiteralDate.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}DateTime':
        value = json['value'] == null
            ? null
            : LiteralDateTime.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Decimal':
        value = json['value'] == null
            ? null
            : LiteralDecimal.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Integer':
        value = json['value'] == null
            ? null
            : LiteralInteger.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Long':
        value =
            json['value'] == null ? null : LiteralLong.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Quantity':
        value = json['value'] == null
            ? null
            : LiteralQuantity.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Ratio':
        value =
            json['value'] == null ? null : LiteralRatio.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}String':
        value = json['value'] == null
            ? null
            : LiteralString.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}Time':
        value =
            json['value'] == null ? null : LiteralTime.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}IntegerInterval':
        value = json['value'] == null
            ? null
            : LiteralIntegerInterval.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}DecimalInterval':
        value = json['value'] == null
            ? null
            : LiteralDecimalInterval.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}QuantityInterval':
        value = json['value'] == null
            ? null
            : LiteralQuantityInterval.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}DateTimeInterval':
        value = json['value'] == null
            ? null
            : LiteralDateTimeInterval.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}DateInterval':
        value = json['value'] == null
            ? null
            : LiteralDateInterval.fromJson(json['value']);
        break;
      case '{urn:hl7-org:elm-types:r1}TimeInterval':
        value = json['value'] == null
            ? null
            : LiteralTimeInterval.fromJson(json['value']);
        break;
    }
    return Literal(
      valueType: QName.fromFull(valueType),
      value: value,
    );
  }

  factory Literal.fromType(LiteralType type) {
    switch (type) {
      case LiteralBoolean _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Boolean'),
          value: type,
        );
      case LiteralCode _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Code'),
          value: type,
        );
      case LiteralConcept _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Concept'),
          value: type,
        );
      case LiteralValueSet _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}ValueSet'),
          value: type,
        );
      case LiteralCodeSystem _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}CodeSystem'),
          value: type,
        );
      case LiteralDate _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Date'),
          value: type,
        );
      case LiteralDateTime _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}DateTime'),
          value: type,
        );
      case LiteralDecimal _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Decimal'),
          value: type,
        );
      case LiteralInteger _:
        {
          return Literal(
            valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Integer'),
            value: type,
          );
        }
      case LiteralLong _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Long'),
          value: type,
        );
      case LiteralQuantity _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Quantity'),
          value: type,
        );
      case LiteralRatio _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Ratio'),
          value: type,
        );
      case LiteralString _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}String'),
          value: type,
        );
      case LiteralTime _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Time'),
          value: type,
        );
      case LiteralIntegerInterval _:
        return Literal(
          valueType:
              QName.fromFull('{urn:hl7-org:elm-types:r1}IntegerInterval'),
          value: type,
        );
      case LiteralDecimalInterval _:
        return Literal(
          valueType:
              QName.fromFull('{urn:hl7-org:elm-types:r1}DecimalInterval'),
          value: type,
        );
      case LiteralQuantityInterval _:
        return Literal(
          valueType:
              QName.fromFull('{urn:hl7-org:elm-types:r1}QuantityInterval'),
          value: type,
        );
      case LiteralDateTimeInterval _:
        return Literal(
          valueType:
              QName.fromFull('{urn:hl7-org:elm-types:r1}DateTimeInterval'),
          value: type,
        );
      case LiteralDateInterval _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}DateInterval'),
          value: type,
        );
      case LiteralTimeInterval _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}TimeInterval'),
          value: type,
        );
      case NullExpression _:
        return Literal(
          valueType: QName.fromFull('{urn:hl7-org:elm-types:r1}Null'),
          value: type as Null,
        );
    }
    throw ArgumentError(
        'Invalid LiteralType, was passed $type (${type.runtimeType})');
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'valueType': valueType.toJson(),
      if (value != null) 'value': value!.toJson(),
      'type': type,
    };
  }

  @override
  String toString() {
    return 'Literal(type: $type, valueType: ${valueType.toJson()}, value: $value)';
  }

  @override
  String get type => 'Literal';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async =>
      value?.execute(context);
}
