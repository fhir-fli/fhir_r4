import '../../../../cql.dart';

/// Operator to perform string concatenation of its arguments.
/// If any argument is null, the result is null.
/// Signature:

/// +(left String, right String) String
/// &(left String, right String) String
/// Description:
///
/// The concatenate (+ or &) operator performs string concatenation of its
/// arguments.
///
/// When using +, if either argument is null, the result is null.
///
/// When using &, null arguments are treated as an empty string ('').
///
/// The following examples illustrate the behavior of the concatenate operator:
///
/// define "ConcatenatePlus": 'John' + ' Doe' // 'John Doe'
/// define "ConcatenateAnd": 'John' & null & ' Doe' // 'John Doe'
/// define "ConcatenateFunction": Concatenate('John', ' Doe') // 'John Doe'
/// define "ConcatenateIsNull": 'John' + null + 'Doe' // null
class Concatenate extends NaryExpression {
  final bool plus;
  Concatenate({
    this.plus = true,
    super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Concatenate.compareFirst({
    required CqlExpression first,
    required CqlExpression second,
    List<CqlToElmBase>? annotation,
    String? localId,
    String? locator,
    String? resultTypeName,
    TypeSpecifierExpression? resultTypeSpecifier,
    required CqlLibrary library,
  }) {
    List<CqlExpression> operand = [];
    if (first is LiteralString) {
      operand.add(first);
    } else if (first is LiteralNull) {
      operand.add(As(operand: first, asType: QName.fromDataType('String')));
    } else {
      final return1 = first.getReturnTypes(library);
      if (return1.length == 1) {
        if (return1.first == 'LiteralString') {
          operand.add(first);
        } else if (return1.first == 'LiteralNull') {
          operand.add(As(operand: first, asType: QName.fromDataType('String')));
        }
      }
    }

    if (second is LiteralString) {
      operand.add(second);
    } else if (second is LiteralNull) {
      operand.add(As(operand: second, asType: QName.fromDataType('String')));
    } else {
      final return2 = second.getReturnTypes(library);
      if (return2.length == 1) {
        if (return2.first == 'LiteralString') {
          operand.add(second);
        } else if (return2.first == 'LiteralNull') {
          operand
              .add(As(operand: second, asType: QName.fromDataType('String')));
        }
      }
    }

    if (operand.length != 2) {
      throw ArgumentError('There were not 2 ');
    }

    return Concatenate(
      operand: operand,
      annotation: annotation,
      localId: localId,
      locator: locator,
      resultTypeName: resultTypeName,
      resultTypeSpecifier: resultTypeSpecifier,
    );
  }

  factory Concatenate.fromJson(Map<String, dynamic> json) => Concatenate(
        operand: List<CqlExpression>.from(
          json['operand'].map(
            (x) => CqlExpression.fromJson(x),
          ),
        ),
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
  String get type => 'Concatenate';

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

  String? concatenatePlus(dynamic left, dynamic right) {
    // For '+', if either argument is null or not a string, the result is null.
    if (left == null || right == null || left is! String || right is! String) {
      return null;
    } else {
      return left + right;
    }
  }

  String? concatenateAnd(dynamic left, dynamic right) {
    // Convert non-null and non-string types to strings, or treat null as an empty string.
    final leftStr = left is String
        ? left
        : left == null
            ? ''
            : null;
    final rightStr = right is String
        ? right
        : right == null
            ? ''
            : null;
    return leftStr == null || rightStr == null ? null : leftStr + rightStr;
  }

// Assuming you want to integrate this into your existing method with a 'plus' flag
  @override
  Future<String?> execute(Map<String, dynamic> context) async {
    if (operand == null || operand!.length != 2) {
      throw ArgumentError('Concatenate operator requires exactly 2 operands');
    } else {
      final left = await operand!.first.execute(context);
      final right = await operand!.last.execute(context);
      // Use the plus flag to decide which function to use
      return plus ? concatenatePlus(left, right) : concatenateAnd(left, right);
    }
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['String'];
}
