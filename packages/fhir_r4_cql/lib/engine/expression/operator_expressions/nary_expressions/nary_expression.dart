import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// Abstract base class for an expression that takes any number of arguments,
/// including zero.
abstract class NaryExpression extends OperatorExpression {
  /// List of expressions as operands, can be zero or more.
  List<CqlExpression>? operand;

  NaryExpression({
    this.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory NaryExpression.fromJson(Map<String, dynamic> json) =>
      json['type'] == 'Concatenate'
          ? Concatenate.fromJson(json)
          : json['type'] == 'Union'
              ? Union.fromJson(json)
              : json['type'] == 'Intersect'
                  ? Intersect.fromJson(json)
                  : json['type'] == 'Except'
                      ? Except.fromJson(json)
                      : json['type'] == 'Coalesce'
                          ? Coalesce.fromJson(json)
                          : throw StateError('Invalid type for NaryExpression');

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    if (operand != null) {
      data['operand'] = operand!.map((e) => e.toJson()).toList();
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
  String get type;
}
