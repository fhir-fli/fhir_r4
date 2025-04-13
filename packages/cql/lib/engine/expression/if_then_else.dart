import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';

import '../../cql.dart';

/// If operator evaluating a condition and returning the appropriate argument.
/// If : Expression
///  ¦
///  1..1 --> condition : Expression
///  ¦
///  1..1 --> then : Expression
///  ¦
///  1..1 --> else : Expression
/// The If operator evaluates a condition, and returns the then argument if the
/// condition evaluates to true; if the condition evaluates to false or null,
/// the result of the else argument is returned. The static type of the then
/// argument determines the result type of the conditional, and the else
/// argument must be of that same type.
class IfThenElse extends CqlExpression {
  /// Condition expression.
  CqlExpression condition;

  /// Else expression.
  CqlExpression elseExpr;

  /// Then expression.
  CqlExpression then;

  IfThenElse({
    required this.condition,
    required this.then,
    required this.elseExpr,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IfThenElse.fromJson(Map<String, dynamic> json) => IfThenElse(
        condition: CqlExpression.fromJson(json['condition']!),
        then: CqlExpression.fromJson(json['then']!),
        elseExpr: CqlExpression.fromJson(json['else']!),
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
    final Map<String, dynamic> val = {
      'type': type,
      'condition': condition.toJson(),
      'then': then.toJson(),
      'else': elseExpr.toJson(),
    };
    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'If';

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    final elseReturnTypes = elseExpr.getReturnTypes(library);
    final thenReturnTypes = then.getReturnTypes(library);
    if (const DeepCollectionEquality()
        .equals(elseReturnTypes, thenReturnTypes)) {
      return elseReturnTypes;
    } else {
      throw CqlException(
          message: 'In If..Then..Else statements, the return '
              'types for then and Else must be the same. In this case it was: '
              'then ($thenReturnTypes) and else ($elseReturnTypes)');
    }
  }

  @override
  dynamic execute(Map<String, dynamic> context) {
    final conditionResult = condition.execute(context);
    if (conditionResult is FhirBoolean || conditionResult == null) {
      if (conditionResult == null ||
          !((conditionResult as FhirBoolean).value ?? false)) {
        return elseExpr.execute(context);
      } else {
        return then.execute(context);
      }
    } else {
      throw CqlException(
          message: 'For If..Then..Else statements, the If '
              'econditionResult (Type: ${conditionResult.runtimeType}');
    }
  }
}
