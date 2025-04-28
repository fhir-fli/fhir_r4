import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class OperandDefs {
  List<OperandDef>? operands;

  OperandDefs({this.operands});

  factory OperandDefs.fromJson(Map<String, dynamic> json) {
    return OperandDefs(
      operands: json['operands'] != null
          ? (json['operands'] as List)
              .map((i) => OperandDef.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (operands != null) {
      data['operands'] = operands!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

/// Operand definition to a function within the body of a function definition.
class OperandDef extends Element {
  /// Name of the operand.
  String name;

  /// Qualified name of the operand type, optional.
  QName? operandType;

  /// Type specifier for the operand.
  TypeSpecifierExpression? operandTypeSpecifier;

  OperandDef({this.operandTypeSpecifier, required this.name, this.operandType});

  factory OperandDef.fromJson(Map<String, dynamic> json) {
    return OperandDef(
      operandTypeSpecifier: json['operandTypeSpecifier'] != null
          ? TypeSpecifierExpression.fromJson(json['operandTypeSpecifier'])
          : null,
      name: json['name'] as String,
      operandType: json['operandType'] != null
          ? QName.fromJson(json['operandType'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{'name': name};
    if (operandTypeSpecifier != null) {
      data['operandTypeSpecifier'] = operandTypeSpecifier!.toJson();
    }
    if (operandType != null) {
      data['operandType'] = operandType!.toJson();
    }
    return data;
  }
}
