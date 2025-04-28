import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Operator to convert the value of its argument to a DateTime value.
/// For String values, the operator expects the string to be formatted using the ISO-8601 datetime representation: YYYY-MM-DDThh:mm:ss.fff(+|-)hh:mm.
/// If the input string is not formatted correctly or does not represent a valid DateTime value, the result is null.
/// DateTime values may be specified to any precision. If no timezone offset is supplied, the timezone offset of the evaluation request timestamp is assumed.
/// If the argument is null, the result is null.
/// For Date values, the result is a DateTime with the time components unspecified, except the timezone offset, which is set to the timezone offset of the evaluation request timestamp.
class ToDateTime extends UnaryExpression {
  ToDateTime({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToDateTime.fromJson(Map<String, dynamic> json) => ToDateTime(
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
  String get type => 'ToDateTime';
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
