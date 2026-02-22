import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Operator to return the length of its argument.
/// For strings, the length is the number of characters in the string.
/// For lists, the length is the number of elements in the list.
/// If the argument is null, the result is 0.
/// Signature:
///
///Length(argument String) Integer
///Description:
///
///The Length operator returns the number of characters in a string.
///
///If the argument is null, the result is null.
///
///The following examples illustrate the behavior of the Length operator:
///
///define "Length14": Length('ABCDE') // 5
///define "LengthIsNull": Length(null as String) // null
class Length extends UnaryExpression {
  Length({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Length.fromJson(Map<String, dynamic> json) => Length(
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
  String get type => 'Length';
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
  List<String> getReturnTypes(CqlLibrary library) => ['Integer'];

  @override
  Future<FhirInteger?> execute(Map<String, dynamic> context) async {
    final operand = await this.operand.execute(context);
    if (operand == null) {
      // CQL spec: Length has two overloads:
      //   Length(argument String) Integer - returns null if argument is null
      //   Length(argument List<T>) Integer - returns 0 if argument is null
      // Determine which overload by inspecting the operand's type information.
      if (_operandIsList()) {
        return FhirInteger(0);
      }
      return null;
    }
    if (operand is String) {
      return FhirInteger(operand.length);
    }
    if (operand is List) {
      return FhirInteger(operand.length);
    }
    return null;
  }

  /// Determines whether the operand is typed as a list by checking various
  /// type indicators on the operand expression.
  bool _operandIsList() {
    final op = operand;
    // Check if the operand is a ListExpression
    if (op is ListExpression) {
      return true;
    }
    // Check resultTypeName on the operand
    final rtn = op.resultTypeName;
    if (rtn != null &&
        (rtn.startsWith('List') || rtn.startsWith('list') ||
         rtn.contains('List<') || rtn.contains('list<'))) {
      return true;
    }
    // Check resultTypeSpecifier on the operand
    final rts = op.resultTypeSpecifier;
    if (rts is ListTypeSpecifier) {
      return true;
    }
    // Check if the operand is an As expression with a list type
    if (op is As) {
      final asTypeName = op.asType?.localPart;
      if (asTypeName != null &&
          (asTypeName.startsWith('List') || asTypeName.startsWith('list'))) {
        return true;
      }
      if (op.asTypeSpecifier is ListTypeSpecifier) {
        return true;
      }
    }
    return false;
  }
}
