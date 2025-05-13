import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to convert the value of its argument to a String value.
/// The operator uses specific string representations for each type:
/// Boolean: true|false
/// Integer: (-)?#0
/// Decimal: (-)?#0.0#
/// Quantity: (-)?#0.0# '<unit>'
/// Date: YYYY-MM-DD
/// DateTime: YYYY-MM-DDThh:mm:ss.fff(+|-)hh:mm
/// Time: hh:mm:ss.fff
/// Ratio: <quantity>:<quantity>
/// If the argument is null, the result is null.
class ToString extends UnaryExpression {
  ToString({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToString.fromJson(Map<String, dynamic> json) => ToString(
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
  String get type => 'ToString';



  /// Boolean: true|false
/// Integer: (-)?#0
/// Decimal: (-)?#0.0#
/// Quantity: (-)?#0.0# '<unit>'
/// Date: YYYY-MM-DD
/// DateTime: YYYY-MM-DDThh:mm:ss.fff(+|-)hh:mm
/// Time: hh:mm:ss.fff
/// Ratio: <quantity>:<quantity>
/// If the argument is null, the result is null.
}
