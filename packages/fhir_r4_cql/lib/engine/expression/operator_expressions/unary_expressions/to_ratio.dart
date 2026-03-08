import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:ucum/ucum.dart';

/// Operator to convert the value of its argument to a Ratio value.
/// The operator accepts strings using the format: `<quantity>`:`<quantity>`,
/// where it's a quantity, followed by a colon (:), followed by another quantity.
/// The operator accepts quantity strings using the same format as the ToQuantity operator.
/// If the input string is not formatted correctly or cannot be interpreted as a valid Ratio value, the result is null.
/// If the argument is null, the result is null.
class ToRatio extends UnaryExpression {
  ToRatio({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToRatio.fromJson(Map<String, dynamic> json) => ToRatio(
        operand: CqlExpression.fromJson(json['operand']),
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

    return data;
  }

  @override
  String get type => 'ToRatio';

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) return null;
    if (value is Ratio) return value;
    String? str;
    if (value is String) {
      str = value;
    } else if (value is fhir.FhirString) {
      str = value.primitiveValue;
    }
    if (str == null) return null;
    final parts = str.split(':');
    if (parts.length != 2) return null;
    final numQty = ValidatedQuantity.fromString(parts[0].trim());
    final denQty = ValidatedQuantity.fromString(parts[1].trim());
    if (!numQty.isValid() || !denQty.isValid()) return null;
    return Ratio(
      numerator: Quantity(
        value: numQty.value.asDouble,
        unit: numQty.unit.toString(),
      ),
      denominator: Quantity(
        value: denQty.value.asDouble,
        unit: denQty.unit.toString(),
      ),
    );
  }
}
