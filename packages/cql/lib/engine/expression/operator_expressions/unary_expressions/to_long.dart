import 'package:fhir_r4/fhir_r4.dart';

import '../../../../cql.dart';

/// Operator to convert the value of its argument to an Long value.
/// The operator accepts strings using the format: (+|-)?#0, meaning an optional
/// polarity indicator,
/// followed by any number of digits (including none), followed by at least one
/// digit.
/// If the input string is not formatted correctly or cannot be interpreted as a
/// valid Long value, the result is null.
/// If the argument is null, the result is null.
/// The Long type is a new feature being introduced in CQL 1.5, and has
/// trial-use status.
///
/// Signature:
///
/// ToLong(argument Boolean) Long
/// ToLong(argument Integer) Long
/// ToLong(argument String) Long
/// Description:
///
/// The ToLong operator converts the value of its argument to a Long value. The operator accepts strings using the following format:
///
/// (+|-)?#0
///
/// Meaning an optional polarity indicator, followed by any number of digits
/// (including none), followed by at least one digit.
///
/// See Formatting Strings for a description of the formatting strings used in
/// this specification.
///
/// Note that the long value returned by this operator must be a valid value in
/// the range representable for Long values in CQL.
///
/// If the input string is not formatted correctly, or cannot be interpreted as
/// a valid Long value, the result is null.
///
/// If the argument is null, the result is null.
///
/// The following examples illustrate the behavior of the ToLong operator:
///
/// define "IsValid": ToLong('-1')
/// define "IsNull": ToLong('one')
class ToLong extends UnaryExpression {
  ToLong({
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory ToLong.fromJson(Map<String, dynamic> json) => ToLong(
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
  String get type => 'ToLong';
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
  Future<FhirInteger64?> execute(Map<String, dynamic> context) async {
    final result = await operand.execute(context);
    switch (result) {
      case null:
        return null;
      case FhirBoolean _:
        {
          if (result.valueBoolean == null) {
            return null;
          } else {
            return result.valueBoolean!
                ? FhirInteger64.fromNum(1)
                : FhirInteger64.fromNum(0);
          }
        }
      case String _:
        {
          final value = BigInt.tryParse(result);
          if (value == null) {
            return null;
          } else {
            return FhirInteger64(value);
          }
        }
      case FhirInteger _:
        {
          return result.valueInt == null
              ? null
              : FhirInteger64.fromNum(result.valueInt!);
        }
      case FhirInteger64 _:
        {
          return result;
        }
      default:
        return null;
    }
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) => ['FhirInteger64'];
}
