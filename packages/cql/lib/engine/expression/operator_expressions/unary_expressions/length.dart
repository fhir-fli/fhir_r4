import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

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
  List<String> getReturnTypes(CqlLibrary library) => ['FhirInteger'];

  @override
  Future<FhirInteger?> execute(Map<String, dynamic> context) async {
    final operand = await this.operand.execute(context);
    if (operand == null) {
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
}
