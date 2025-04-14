import '../../../cql.dart';

/// Expression that invokes a previously defined function.
class FunctionRef extends ExpressionRef {
  /// Operands passed to the function.
  List<CqlExpression>? operand;

  /// Declared signature of the function being called.
  List<TypeSpecifierExpression>? signature;

  FunctionRef({
    this.operand,
    this.signature,
    required super.name,
    super.libraryName,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory FunctionRef.fromJson(Map<String, dynamic> json) => FunctionRef(
        operand: json['operand'] != null
            ? List<CqlExpression>.from(
                json['operand'].map((x) => CqlExpression.fromJson(x)))
            : null,
        signature: json['signature'] != null
            ? List<TypeSpecifierExpression>.from(json['signature']
                .map((x) => TypeSpecifierExpression.fromJson(x)))
            : null,
        name: json['name']!,
        libraryName: json['libraryName'],
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
    final Map<String, dynamic> json = {
      'name': name,
    };

    if (libraryName != null) {
      json['libraryName'] = libraryName;
    }

    if (signature != null) {
      json['signature'] = signature!.map((x) => x.toJson()).toList();
    }

    if (operand != null) {
      json['operand'] = operand!.map((x) => x.toJson()).toList();
    }

    if (annotation != null) {
      json['annotation'] = annotation!.map((x) => x.toJson()).toList();
    }

    if (localId != null) {
      json['localId'] = localId;
    }

    if (locator != null) {
      json['locator'] = locator;
    }

    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return json;
  }

  @override
  String get type => 'FunctionRef';
}
