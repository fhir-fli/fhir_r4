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
            json['asType'] == null ? null : QName.parse(json['asType'])
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
    // 1) Evaluate the operand
    final dynamic value = await operand.execute(context);

    // 2) If null, always null
    if (value == null) {
      return null;
    }

    // 3) If there's an asTypeSpecifier, we must cast _each_ element of a list
    if (asTypeSpecifier != null) {
      // 1) If the operand evaluated to a List, cast every element
      if (value is List) {
        return value
            .map((e) => _applySpecifier(e, asTypeSpecifier!))
            .where((e) => e != null)
            .toList();
      }
      // 2) Otherwise, cast the single value
      return _applySpecifier(value, asTypeSpecifier!);
    }

    // 4) If there's a simple asType, run your atomic‐cast logic
    if (asType != null) {
      switch (asType!.localPart) {
        case 'Integer':
          return value is FhirInteger ? value : null;
        case 'Decimal':
          return value is FhirDecimal ? value : null;
        case 'String':
          return value is String ? value : null;
        case 'Boolean':
          return value is FhirBoolean ? value : null;
        case 'Quantity':
          return value is ValidatedQuantity ? value : null;
        case 'Ratio':
          return value is ValidatedRatio ? value : null;
        case 'DateTime':
          return value is FhirDateTime ? value : null;
        case 'Date':
          return value is FhirDate ? value : null;
        case 'Time':
          return value is FhirTime ? value : null;
        case 'Code':
          return value is Code ? value : null;
        case 'Concept':
          return value is Concept ? value : null;
        case 'Interval':
          return value is CqlInterval ? value : null;
        case 'Interval<Integer>':
          return value is CqlInterval<FhirInteger> ? value : null;
        case 'Interval<Long>':
          return value is CqlInterval<FhirInteger64> ? value : null;
        case 'Interval<Decimal>':
          return value is CqlInterval<FhirDecimal> ? value : null;
        case 'Interval<FhirDate>':
          return value is CqlInterval<FhirDate> ? value : null;
        case 'Interval<FhirDateTime>':
          return value is CqlInterval<FhirDateTime> ? value : null;
        case 'Interval<FhirTime>':
          return value is CqlInterval<FhirTime> ? value : null;
        case 'Interval<Quantity>':
          return value is CqlInterval<ValidatedQuantity> ? value : null;
        case 'ValueSet':
          return value is ValueSet ? value : null;
        default:
          return null;
      }
    }

    // 5) No specifier or asType: just pass the value through
    return value;
  }

  /// Recursively applies a TypeSpecifierExpression to a single element,
  /// returning the element if it matches, or null if it doesn't.
  dynamic _applySpecifier(dynamic element, TypeSpecifierExpression spec) {
    // 1) ListTypeSpecifier: unwrap and reapply to the same element
    if (spec is ListTypeSpecifier && spec.elementType != null) {
      return _applySpecifier(element, spec.elementType!);
    }

    // 2) ChoiceTypeSpecifier: succeed if ANY choice matches
    if (spec is ChoiceTypeSpecifier) {
      for (final choice in spec.choice ?? <TypeSpecifierExpression>[]) {
        final matched = _applySpecifier(element, choice);
        if (matched != null) return matched;
      }
      return null;
    }

    // 3) NamedTypeSpecifier: atomic check
    if (spec is NamedTypeSpecifier) {
      final name = spec.namespace.localPart;
      switch (name) {
        case 'Integer':
          return element is FhirInteger ? element : null;
        case 'Decimal':
          return element is FhirDecimal ? element : null;
        case 'String':
          return element is String ? element : null;
        case 'Boolean':
          return element is FhirBoolean ? element : null;
        case 'Quantity':
          return element is ValidatedQuantity ? element : null;
        case 'Ratio':
          return element is ValidatedRatio ? element : null;
        case 'DateTime':
          return element is FhirDateTime ? element : null;
        case 'Date':
          return element is FhirDate ? element : null;
        case 'Time':
          return element is FhirTime ? element : null;
        case 'Code':
          return element is Code ? element : null;
        case 'Concept':
          return element is Concept ? element : null;
        case 'Interval':
          return element is CqlInterval ? element : null;
        case 'Interval<Integer>':
          return element is CqlInterval<FhirInteger> ? element : null;
        case 'Interval<Long>':
          return element is CqlInterval<FhirInteger64> ? element : null;
        case 'Interval<Decimal>':
          return element is CqlInterval<FhirDecimal> ? element : null;
        case 'Interval<FhirDate>':
          return element is CqlInterval<FhirDate> ? element : null;
        case 'Interval<FhirDateTime>':
          return element is CqlInterval<FhirDateTime> ? element : null;
        case 'Interval<FhirTime>':
          return element is CqlInterval<FhirTime> ? element : null;
        case 'Interval<Quantity>':
          return element is CqlInterval<ValidatedQuantity> ? element : null;
        case 'ValueSet':
          return element is ValueSet ? element : null;
        default:
          return null;
      }
    }

    // Unknown specifier type → null
    return null;
  }

  @override
  String toString() {
    return 'As { asType: $asType, asTypeSpecifier: $asTypeSpecifier, strict: $strict, operand: $operand }';
  }
}
