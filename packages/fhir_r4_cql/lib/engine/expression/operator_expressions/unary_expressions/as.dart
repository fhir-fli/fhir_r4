import 'package:fhir_r4/fhir_r4.dart' hide Quantity;
import 'package:fhir_r4/fhir_r4.dart' as fhir show Quantity;
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
/// `as<T>`(argument Any) T
/// cast `as<T>`(argument Any) T
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
        ..asType = json['asType'] == null ? null : QName.parse(json['asType'])
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
    if (strict != null) {
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
            .where((e) => e != _notMatched)
            .toList();
      }
      // 2) Otherwise, cast the single value
      final result = _applySpecifier(value, asTypeSpecifier!);
      return result == _notMatched ? null : result;
    }

    // 4) If there's a simple asType, run your atomic‐cast logic
    if (asType != null) {
      switch (asType!.localPart) {
        case 'Integer':
        case 'integer':
          return value is FhirInteger ? value : null;
        case 'Decimal':
        case 'decimal':
          return value is FhirDecimal ? value : null;
        case 'String':
          return value is String ? value : null;
        case 'string':
          // FHIR string: accept FhirString and subtypes (FhirCode, etc.)
          return (value is String || value is FhirString) ? value : null;
        case 'Boolean':
        case 'boolean':
          return value is FhirBoolean ? value : null;
        case 'Quantity':
          if (value is ValidatedQuantity) return value;
          if (value is fhir.Quantity) return _fhirQuantityToValidated(value);
          return null;
        case 'Ratio':
          return value is ValidatedRatio ? value : null;
        case 'DateTime':
        case 'dateTime':
          return value is FhirDateTime ? value : null;
        case 'Date':
        case 'date':
          return value is FhirDate ? value : null;
        case 'Time':
        case 'time':
          return value is FhirTime ? value : null;
        case 'Code':
          return value is Code ? value : null;
        case 'code':
          return value is FhirCode ? value : null;
        case 'Concept':
          return value is Concept ? value : null;
        case 'Interval':
        case 'CqlInterval':
          return value is CqlInterval ? value : null;
        case 'Interval<Integer>':
        case 'CqlInterval<Integer>':
          return value is CqlInterval ? value : null;
        case 'Interval<Long>':
        case 'CqlInterval<Long>':
          return value is CqlInterval<FhirInteger64> ? value : null;
        case 'Interval<Decimal>':
        case 'CqlInterval<Decimal>':
          return value is CqlInterval ? value : null;
        case 'Interval<FhirDate>':
        case 'CqlInterval<FhirDate>':
        case 'CqlInterval<Date>':
          return value is CqlInterval ? value : null;
        case 'Interval<FhirDateTime>':
        case 'CqlInterval<FhirDateTime>':
        case 'CqlInterval<DateTime>':
          return value is CqlInterval ? value : null;
        case 'Interval<FhirTime>':
        case 'CqlInterval<FhirTime>':
        case 'CqlInterval<Time>':
          return value is CqlInterval ? value : null;
        case 'Interval<Quantity>':
        case 'CqlInterval<Quantity>':
          return value is CqlInterval ? value : null;
        case 'ValueSet':
          return value is ValueSet ? value : null;
        case 'uri':
          return value is FhirUri ? value : null;
        case 'base64Binary':
          return value is FhirBase64Binary ? value : null;
        case 'Coding':
        case 'coding':
          return value is Coding ? value : null;
        case 'CodeableConcept':
        case 'codeableConcept':
          return value is CodeableConcept ? value : null;
        default:
          return null;
      }
    }

    // 5) No specifier or asType: just pass the value through
    return value;
  }

  /// Sentinel value used to distinguish "element does not match the type"
  /// from a legitimate null element value. Uses a unique object rather than
  /// a String to avoid triggering type coercion in FHIR type == operators.
  static final Object _notMatched = Object();

  /// Recursively applies a TypeSpecifierExpression to a single element,
  /// returning the element if it matches, or [_notMatched] if it doesn't.
  /// A null element that passes through validly will remain null.
  dynamic _applySpecifier(dynamic element, TypeSpecifierExpression spec) {
    // 1) ListTypeSpecifier: unwrap and reapply to the same element
    if (spec is ListTypeSpecifier && spec.elementType != null) {
      return _applySpecifier(element, spec.elementType!);
    }

    // 2) ChoiceTypeSpecifier: succeed if ANY choice matches
    if (spec is ChoiceTypeSpecifier) {
      for (final choice in spec.choice ?? <TypeSpecifierExpression>[]) {
        final matched = _applySpecifier(element, choice);
        if (matched != _notMatched) return matched;
      }
      return _notMatched;
    }

    // 3) NamedTypeSpecifier: atomic check
    if (spec is NamedTypeSpecifier) {
      final name = spec.namespace.localPart;
      switch (name) {
        // Null type: only match null elements
        case 'Null':
          return element == null ? null : _notMatched;
        // Any/Unknown: match any element (pass through)
        case 'Any':
        case 'Unknown':
          return element;
        case 'Integer':
        case 'integer':
          return element is FhirInteger ? element : _notMatched;
        case 'Decimal':
        case 'decimal':
          return element is FhirDecimal ? element : _notMatched;
        case 'String':
          return element is String ? element : _notMatched;
        case 'string':
          return (element is String || element is FhirString)
              ? element
              : _notMatched;
        case 'Boolean':
        case 'boolean':
          return element is FhirBoolean ? element : _notMatched;
        case 'Quantity':
          if (element is ValidatedQuantity) return element;
          if (element is fhir.Quantity) {
            return _fhirQuantityToValidated(element) ?? _notMatched;
          }
          return _notMatched;
        case 'Ratio':
          return element is ValidatedRatio ? element : _notMatched;
        case 'DateTime':
        case 'dateTime':
          return element is FhirDateTime ? element : _notMatched;
        case 'Date':
        case 'date':
          return element is FhirDate ? element : _notMatched;
        case 'Time':
        case 'time':
          return element is FhirTime ? element : _notMatched;
        case 'Code':
          return element is Code ? element : _notMatched;
        case 'code':
          return element is FhirCode ? element : _notMatched;
        case 'Concept':
          return element is Concept ? element : _notMatched;
        case 'Interval':
        case 'CqlInterval':
          return element is CqlInterval ? element : _notMatched;
        case 'Interval<Integer>':
        case 'CqlInterval<Integer>':
          return element is CqlInterval ? element : _notMatched;
        case 'Interval<Long>':
        case 'CqlInterval<Long>':
          return element is CqlInterval<FhirInteger64> ? element : _notMatched;
        case 'Interval<Decimal>':
        case 'CqlInterval<Decimal>':
          return element is CqlInterval ? element : _notMatched;
        case 'Interval<FhirDate>':
        case 'CqlInterval<FhirDate>':
        case 'CqlInterval<Date>':
          return element is CqlInterval ? element : _notMatched;
        case 'Interval<FhirDateTime>':
        case 'CqlInterval<FhirDateTime>':
        case 'CqlInterval<DateTime>':
          return element is CqlInterval ? element : _notMatched;
        case 'Interval<FhirTime>':
        case 'CqlInterval<FhirTime>':
        case 'CqlInterval<Time>':
          return element is CqlInterval ? element : _notMatched;
        case 'Interval<Quantity>':
        case 'CqlInterval<Quantity>':
          return element is CqlInterval ? element : _notMatched;
        case 'ValueSet':
          return element is ValueSet ? element : _notMatched;
        case 'uri':
          return element is FhirUri ? element : _notMatched;
        case 'base64Binary':
          return element is FhirBase64Binary ? element : _notMatched;
        case 'Coding':
        case 'coding':
          return element is Coding ? element : _notMatched;
        case 'CodeableConcept':
        case 'codeableConcept':
          return element is CodeableConcept ? element : _notMatched;
        default:
          return _notMatched;
      }
    }

    // Unknown specifier type → not matched
    return _notMatched;
  }

  /// Converts a FHIR Quantity to a CQL ValidatedQuantity.
  static ValidatedQuantity? _fhirQuantityToValidated(fhir.Quantity fhirQty) {
    final num? value = fhirQty.value?.valueNum;
    final unit = fhirQty.unit?.valueString ?? fhirQty.code?.valueString ?? '1';
    if (value != null) {
      return ValidatedQuantity.fromNumber(value, unit: unit);
    }
    return null;
  }

  @override
  String toString() {
    return 'As { asType: $asType, asTypeSpecifier: $asTypeSpecifier, strict: $strict, operand: $operand }';
  }
}
