import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to return the integer component of its argument.
/// If the argument is null, the result is null.
/// Signature:
///
///Truncate(argument Decimal) Integer
///Description:
///
///The Truncate operator returns the integer component of its argument.
///
///When invoked with an Integer argument, the argument will be implicitly
///converted to Decimal.
///
///If the argument is null, the result is null.
///
///The following examples illustrate the behavior of the Truncate operator:
///
///define "IntegerTruncate": Truncate(101) // 101
///define "DecimalTruncate": Truncate(1.00000001) // 1
///define "TruncateIsNull": Truncate(null)
class Truncate extends UnaryExpression {
  Truncate({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory Truncate.fromJson(Map<String, dynamic> json) => Truncate(
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
  String get type => 'Truncate';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['FhirInteger'];

  @override
  Future<FhirInteger?> execute(Map<String, dynamic> context) async {
    final value = await operand.execute(context);
    if (value == null) {
      return null;
    } else if (value is FhirInteger) {
      return value;
    } else if (value is FhirInteger64) {
      return FhirInteger.tryParse(value.valueString!);
    } else if (value is FhirDecimal) {
      return FhirInteger(value.valueDouble!.truncate());
    } else {
      throw ArgumentError(
          'Truncate operator can only be used with Decimal or Integer');
    }
  }
}
