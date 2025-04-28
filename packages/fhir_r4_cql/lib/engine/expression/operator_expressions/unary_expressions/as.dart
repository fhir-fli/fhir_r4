import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// As operator allowing casting the result of an expression to a given target
/// type.
/// As : UnaryExpression
///  ¦
///  0..1 --> asTypeSpecifier : TypeSpecifier
///  ¦
///  0..1 --> asType
///  ¦
///  0..1 --> strict
/// The As operator allows the result of an expression to be cast as a given
/// target type. This allows expressions to be written that are statically
/// typed against the expected run-time type of the argument. If the argument
/// is not of the specified type, and the strict attribute is false (the
/// default), the result is null. If the argument is not of the specified type
/// and the strict attribute is true, an exception is thrown.
///
/// Signature:
///
/// as<T>(argument Any) T
/// cast as<T>(argument Any) T
/// Description:
///
/// The as operator allows the result of an expression to be cast as a given
/// target type. This allows expressions to be written that are statically
/// typed against the expected run-time type of the argument.
///
/// If the argument is not of the specified type at run-time the result is null.
///
/// The cast prefix indicates that if the argument is not of the specified type
/// at run-time then an exception is thrown.
///
/// Example:
///
/// The following examples illustrate the use of the as operator.
///
/// define "AllProcedures": [Procedure]
///
/// define "ImagingProcedures":
///   AllProcedures P
///     where P is ImagingProcedure
///     return P as ImagingProcedure
///
/// define "RuntimeError":
///   ImagingProcedures P
///     return cast P as Observation
class As extends UnaryExpression {
  /// Target type for casting.
  QName? asType;

  /// Type specifier for casting.
  TypeSpecifierExpression? asTypeSpecifier;

  /// Determines if strict type checking should be enforced.
  bool? strict;

  As({
    this.asType,
    this.asTypeSpecifier,
    required super.operand,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory As.fromJson(Map<String, dynamic> json) => As(
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
      )
        ..asTypeSpecifier = json['asTypeSpecifier'] == null
            ? null
            : TypeSpecifierExpression.fromJson(json['asTypeSpecifier'])
        ..asType =
            json['asType'] == null ? null : QName.fromFull(json['asType'])
        ..strict = json['strict'];

  @override
  String get type => 'As';

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{
      if (asType != null) 'asType': asType!.toJson(),
      'type': type,
      'operand': operand.toJson(),
    };
    if (operand is! NullExpression &&
        operand is! Property &&
        operand is! LiteralNull &&
        strict != null) {
      data['strict'] = strict;
    }

    if (asTypeSpecifier != null) {
      data['asTypeSpecifier'] = asTypeSpecifier!.toJson();
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

    if (asTypeSpecifier != null) {
      data['asTypeSpecifier'] = asTypeSpecifier!.toJson();
    }

    return data;
  }

  @override
  List<String> getReturnTypes(CqlLibrary library) {
    return asType?.getReturnTypes(library) ?? ['Unknown'];
  }

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    final result = await operand.execute(context);
    if (result == null) {
      return null;
    }

    if (asType != null) {
      switch (asType!.localPart) {
        case 'Integer':
          {
            if (result is FhirInteger) {
              return result;
            }
            break;
          }
        case 'Decimal':
          {
            if (result is FhirDecimal) {
              return result;
            }
            break;
          }
        case 'String':
          {
            if (result is String) {
              return result;
            }
            break;
          }
        case 'Boolean':
          {
            if (result is FhirBoolean) {
              return result;
            }
            break;
          }
        case 'Quantity':
          {
            if (result is ValidatedQuantity) {
              return result;
            }
            break;
          }
        case 'Ratio':
          {
            if (result is ValidatedRatio) {
              return result;
            }
            break;
          }
        case 'DateTime':
          {
            if (result is FhirDateTime) {
              return result;
            }
            break;
          }
        case 'Time':
          {
            if (result is FhirTime) {
              return result;
            }
            break;
          }
        case 'Date':
          {
            if (result is FhirDate) {
              return result;
            }
            break;
          }
        case 'Code':
          {
            if (result is Code) {
              return result;
            }
            break;
          }
        case 'Concept':
          {
            if (result is Concept) {
              return result;
            }
            break;
          }
        case 'Interval':
          {
            if (result is IntervalExpression) {
              return result;
            }
            break;
          }
        case 'Interval<Integer>':
          {
            if (result is CqlInterval<FhirInteger>) {
              return result;
            }
            break;
          }
        case 'Interval<Long>':
          {
            if (result is CqlInterval<FhirInteger64>) {
              return result;
            }
            break;
          }

        case 'Interval<Decimal>':
          {
            if (result is CqlInterval<FhirDecimal>) {
              return result;
            }
            break;
          }
        case 'Interval<FhirDate>':
          {
            if (result is CqlInterval<FhirDate>) {
              return result;
            }
            break;
          }
        case 'Interval<FhirDateTime>':
          {
            if (result is CqlInterval<FhirDateTime>) {
              return result;
            }
            break;
          }
        case 'Interval<FhirTime>':
          {
            if (result is CqlInterval<FhirTime>) {
              return result;
            }
            break;
          }
        case 'Interval<Quantity>':
          {
            if (result is CqlInterval<ValidatedQuantity>) {
              return result;
            }
            break;
          }
        case 'ValueSet':
          {
            if (result is ValueSet) {
              return result;
            }
            break;
          }
      }
    }
  }

  @override
  String toString() {
    return 'As { asType: $asType, asTypeSpecifier: $asTypeSpecifier, strict: $strict, operand: $operand }';
  }
}
