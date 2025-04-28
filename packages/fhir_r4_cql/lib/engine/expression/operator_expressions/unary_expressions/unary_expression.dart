import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Abstract base class for expressions that take a single argument.
abstract class UnaryExpression extends OperatorExpression {
  /// CqlExpression as the operand.
  CqlExpression operand;

  UnaryExpression({
    required this.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory UnaryExpression.fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    switch (type) {
      case 'Abs':
        return Abs.fromJson(json);
      case 'As':
        return As.fromJson(json);
      case 'CanConvert':
        return CanConvert.fromJson(json);
      case 'Ceiling':
        return Ceiling.fromJson(json);
      case 'Convert':
        return Convert.fromJson(json);
      case 'ConvertsToBoolean':
        return ConvertsToBoolean.fromJson(json);
      case 'ConvertsToDateTime':
        return ConvertsToDateTime.fromJson(json);
      case 'ConvertsToDate':
        return ConvertsToDate.fromJson(json);
      case 'ConvertsToDecimal':
        return ConvertsToDecimal.fromJson(json);
      case 'ConvertsToInteger':
        return ConvertsToInteger.fromJson(json);
      case 'ConvertsToQuantity':
        return ConvertsToQuantity.fromJson(json);
      case 'ConvertsToRatio':
        return ConvertsToRatio.fromJson(json);
      case 'ConvertsToString':
        return ConvertsToString.fromJson(json);
      case 'ConvertsToTime':
        return ConvertsToTime.fromJson(json);
      case 'DateFrom':
        return DateFrom.fromJson(json);
      case 'DateTimeComponentFrom':
        return DateTimeComponentFrom.fromJson(json);
      case 'Distinct':
        return Distinct.fromJson(json);
      case 'End':
        return End.fromJson(json);
      case 'Exists':
        return Exists.fromJson(json);
      case 'Exp':
        return Exp.fromJson(json);
      case 'Flatten':
        return Flatten.fromJson(json);
      case 'Floor':
        return Floor.fromJson(json);
      case 'IsFalse':
        return IsFalse.fromJson(json);
      case 'IsNull':
        return IsNull.fromJson(json);
      case 'IsTrue':
        return IsTrue.fromJson(json);
      case 'Is':
        return Is.fromJson(json);
      case 'Length':
        return Length.fromJson(json);
      case 'Ln':
        return Ln.fromJson(json);
      case 'Lower':
        return Lower.fromJson(json);
      case 'Negate':
        return Negate.fromJson(json);
      case 'Not':
        return Not.fromJson(json);
      case 'PointFrom':
        return PointFrom.fromJson(json);
      case 'Precision':
        return Precision.fromJson(json);
      case 'Predecessor':
        return Predecessor.fromJson(json);
      case 'SingletonFrom':
        return SingletonFrom.fromJson(json);
      case 'Size':
        return Size.fromJson(json);
      case 'Start':
        return Start.fromJson(json);
      case 'Successor':
        return Successor.fromJson(json);
      case 'Tail':
        return Tail.fromJson(json);
      case 'TimeFrom':
        return TimeFrom.fromJson(json);
      case 'TimezoneOffsetFrom':
        return TimezoneOffsetFrom.fromJson(json);
      case 'ToBoolean':
        return ToBoolean.fromJson(json);
      case 'ToConcept':
        return ToConcept.fromJson(json);
      case 'ToDateTime':
        return ToDateTime.fromJson(json);
      case 'ToDate':
        return ToDate.fromJson(json);
      case 'ToDecimal':
        return ToDecimal.fromJson(json);
      case 'ToInteger':
        return ToInteger.fromJson(json);
      case 'ToList':
        return ToList.fromJson(json);
      case 'ToQuantity':
        return ToQuantity.fromJson(json);
      case 'ToRatio':
        return ToRatio.fromJson(json);
      case 'ToString':
        return ToString.fromJson(json);
      case 'ToTime':
        return ToTime.fromJson(json);
      case 'Truncate':
        return Truncate.fromJson(json);
      case 'Upper':
        return Upper.fromJson(json);
      case 'Width':
        return Width.fromJson(json);
      default:
        throw ArgumentError('Unknown type: $type');
    }
  }

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

    return data;
  }
}
