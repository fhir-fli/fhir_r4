import '../../../../cql.dart';

/// The Distinct operator returns a list containing only the unique elements
/// within the input list.
/// The operator uses equality comparison semantics as defined in the Equal
/// operator.
/// Nulls are considered equal for the purposes of distinct determination.
/// If the source argument is null, the result is null.
/// Signature:
///
/// distinct(argument List<T>) List<T>
/// Description:
///
/// The distinct operator returns the given list with duplicates eliminated
/// using equality semantics.
///
/// If the argument is null, the result is null.
///
/// The operator uses equality comparison semantics as defined in the Equal
/// operator, with the exception that nulls are considered equal for the
/// purposes of distinct determination. This means that multiple nulls in the
/// input will result in a single null in the output.
///
/// The following examples illustrate the behavior of the distinct operator:
///
/// define "Distinct": distinct { 1, 3, 3, 5, 5 } // { 1, 3, 5 }
/// define "DistinctIsNull": distinct null // null
class Distinct extends UnaryExpression {
  Distinct({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Distinct.fromJson(Map<String, dynamic> json) => Distinct(
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
  String get type => 'Distinct';
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
  List<String> getReturnTypes(CqlLibrary library) {
    final returnTypes = operand.getReturnTypes(library).toSet();
    if (returnTypes.length == 1) {
      return ['List<${returnTypes.first}>'];
    }
    return ['List'];
  }

  @override
  List<dynamic>? execute(Map<String, dynamic> context) {
    final operandValue = operand.execute(context);
    return distinct(operandValue);
  }

  List<dynamic>? distinct(dynamic operandValue) {
    if (operandValue == null) {
      return null;
    } else if (operandValue is List) {
      return operandValue.toSet().toList();
    }
    throw ArgumentError('Invalid argument for Combine operator');
  }
}
