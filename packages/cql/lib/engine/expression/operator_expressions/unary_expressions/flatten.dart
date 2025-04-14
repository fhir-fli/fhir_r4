import '../../../../cql.dart';

/// The Flatten operator flattens a list of lists into a single list.
/// If the argument is null, the result is null.
/// Signature:
///
/// flatten(argument List<List<T>>) List<T>
/// Description:
///
/// The flatten operator flattens a list of lists into a single list.
///
/// If the argument is null, the result is null.
///
/// The following examples illustrate the behavior of the flatten operator:
///
/// define "Flatten": flatten { { 1, 2 }, { 3, 4, 5 } } // { 1, 2, 3, 4, 5 }
/// define "FlattenIsNull": flatten null
class Flatten extends UnaryExpression {
  Flatten({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Flatten.fromJson(Map<String, dynamic> json) => Flatten(
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
  String get type => 'Flatten';
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
    if (returnTypes.length == 1 && returnTypes.contains('List')) {
      return returnTypes.toList();
    }
    return ['List'];
  }

  @override
  Future<List?> execute(Map<String, dynamic> context) async {
    final operandValue = await operand.execute(context);
    return flatten(operandValue);
  }

  List? flatten(dynamic operandValue) {
    if (operandValue == null) {
      return null;
    } else if (operandValue is List &&
        operandValue.every((element) => element is List)) {
      return operandValue.expand((element) => element).toList();
    }
    throw ArgumentError('Invalid argument for Flatten operator');
  }
}
