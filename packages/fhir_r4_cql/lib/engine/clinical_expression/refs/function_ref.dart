import 'package:fhir_r4/fhir_r4.dart' hide Quantity, Ratio;
import 'package:fhir_r4/fhir_r4.dart' as fhir show Quantity, Ratio;
import 'package:ucum/ucum.dart' show ValidatedQuantity, ValidatedRatio;

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

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

    json['type'] = type;

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

  @override
  Future<dynamic> execute(Map<String, dynamic> context) async {
    // Retrieve the CqlLibrary from the context
    var library = context['library'];
    if (library == null || library is! CqlLibrary) {
      throw ArgumentError('CqlLibrary not found in context');
    }

    if (libraryName == null) {
      // Handle well-known CQL system functions that may be parsed as FunctionRef
      final result = await _trySystemFunction(context);
      if (!identical(result, _notHandled)) return result;

      // Try resolving as a local (same-library) function, including fluent functions
      final localFuncDef = library.resolveLocalFunctionDef(name);
      if (localFuncDef != null) {
        final functionContext = Map<String, dynamic>.from(context);
        if (operand != null && localFuncDef.operand != null) {
          for (int i = 0;
              i < operand!.length && i < localFuncDef.operand!.length;
              i++) {
            final paramName = localFuncDef.operand![i].name;
            final operandValue = await operand![i].execute(context);
            functionContext[paramName] = operandValue;
          }
        }
        return await localFuncDef.execute(functionContext);
      }

      throw ArgumentError('Function not found: $name');
    }

    // Try hardcoded fast paths for well-known libraries
    final libLower = libraryName!.toLowerCase();
    if (libLower == 'fhirhelpers') {
      final result = await _fhirHelpers(context);
      if (!identical(result, _notHandled)) return result;
    } else if (libLower == 'fc' || libLower == 'fhircommon') {
      final result = await _fhirCommon(context);
      if (!identical(result, _notHandled)) return result;
    }

    // Generic resolution: resolve function from included library
    final functionDef = await library.resolveFunctionRef(name, libraryName!);

    if (functionDef == null) {
      // For FHIRHelpers, many functions are external stubs — return null
      if (libLower == 'fhirhelpers') return null;
      throw ArgumentError('Function definition not found for $name');
    }

    // Get the included library for setting context correctly
    final includedLib = await library.resolveIncludedLibrary(libraryName!);

    // Create a new context for function execution
    final functionContext = Map<String, dynamic>.from(context);

    // Set the included library as the active library for the function scope
    if (includedLib != null) {
      functionContext['library'] = includedLib;
    }

    // Evaluate operands and add them to the function context with parameter names
    if (operand != null && functionDef.operand != null) {
      for (int i = 0;
          i < operand!.length && i < functionDef.operand!.length;
          i++) {
        final paramName = functionDef.operand![i].name;
        final operandValue = await operand![i].execute(context);
        functionContext[paramName] = operandValue;
      }
    }

    // Execute the function with the prepared context
    final result = await functionDef.execute(functionContext);

    // Restore the original library in context
    context['library'] = library;

    return result;
  }

  static const _notHandled = Object();

  Future<dynamic> _trySystemFunction(Map<String, dynamic> context) async {
    switch (name.toLowerCase()) {
      case 'descendents':
      case 'descendants':
        if (operand != null && operand!.isNotEmpty) {
          final value = await operand![0].execute(context);
          if (value == null) return null;
          final results = <dynamic>[];
          Descendents.collectDescendants(value, results);
          return results;
        }
        return null;
      default:
        return _notHandled;
    }
  }

  Future<dynamic> _fhirHelpers(Map<String, dynamic> context) async {
    switch (name) {
      case 'ToString':
        return _helperToString(context);
      case 'ToConcept':
        return _helperToConcept(context);
      case 'ToBoolean':
        return _helperToBoolean(context);
      case 'ToDate':
        return _helperToDate(context);
      case 'ToDateTime':
        return _helperToDateTime(context);
      case 'ToCode':
        return _helperToCode(context);
      case 'ToInteger':
        return _helperToInteger(context);
      case 'ToDecimal':
        return _helperToDecimal(context);
      case 'ToTime':
        return _helperToTime(context);
      case 'ToInterval':
        return _helperToInterval(context);
      case 'ToQuantity':
        return _helperToQuantity(context);
      case 'ToRatio':
        return _helperToRatio(context);
      case 'ToCalendarUnit':
        return _helperToCalendarUnit(context);
      case 'ToValue':
        return _helperToValue(context);
      case 'ToValueSet':
        return _helperToValueSet(context);
      case 'ToQuantityIgnoringComparator':
        return _helperToQuantity(context);
      // External FHIR functions – not implemented as CQL helpers
      case 'resolve':
      case 'reference':
      case 'extension':
      case 'modifierExtension':
      case 'hasValue':
      case 'getValue':
      case 'ofType':
      case 'is':
      case 'as':
      case 'elementDefinition':
      case 'slice':
      case 'checkModifiers':
      case 'conformsTo':
      case 'memberOf':
      case 'subsumes':
      case 'subsumedBy':
      case 'htmlChecks':
        return null;
      default:
        return _notHandled;
    }
  }

  Future<dynamic> _fhirCommon(Map<String, dynamic> context) async {
    switch (name) {
      case 'ToInterval':
        if (operand == null || operand!.isEmpty) return null;
        final value = await operand![0].execute(context);
        return _toInterval(value);
      case 'ToString':
        return _helperToString(context);
      case 'ToConcept':
        return _helperToConcept(context);
      case 'ToCode':
        return _helperToCode(context);
      case 'ToQuantity':
        return _helperToQuantity(context);
      case 'ToDateTime':
        return _helperToDateTime(context);
      case 'ToDate':
        return _helperToDate(context);
      case 'ToBoolean':
        return _helperToBoolean(context);
      default:
        // Fall through to FHIRHelpers for unrecognized functions
        return await _fhirHelpers(context);
    }
  }

  Future<dynamic> _helperToString(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) {
      return null;
    }
    final results = <String>[];
    for (final op in operand!) {
      final value = await op.execute(context);
      if (value == null) continue;
      final str = value is String
          ? value
          : value is PrimitiveType
              ? value.valueString
              : value.toString();
      if (str != null) results.add(str);
    }
    if (results.isEmpty) return null;
    return results.length == 1 ? results.first : results;
  }

  Future<dynamic> _helperToDateTime(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is FhirDateTime) return value;
    if (value is FhirDate) {
      return FhirDateTime.fromString(value.valueString ?? '');
    }
    if (value is String) return FhirDateTime.fromString(value);
    return null;
  }

  Future<dynamic> _helperToInterval(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    return _toInterval(value);
  }

  dynamic _toInterval(dynamic value) {
    if (value == null) return null;
    if (value is CqlInterval) return value;
    // FHIR Period → CQL Interval<DateTime>
    if (value is Period) {
      return CqlInterval(
        low: value.start != null
            ? FhirDateTime.fromString(value.start.toString())
            : null,
        high: value.end != null
            ? FhirDateTime.fromString(value.end.toString())
            : null,
        lowClosed: true,
        highClosed: true,
      );
    }
    // FHIR Range → CQL Interval<Quantity>
    if (value is Range) {
      ValidatedQuantity? low;
      ValidatedQuantity? high;
      if (value.low != null) {
        final numVal = value.low!.value?.valueNum;
        final unit = value.low!.unit?.valueString ?? value.low!.code?.valueString ?? '1';
        if (numVal != null) low = ValidatedQuantity.fromNumber(numVal, unit: unit);
      }
      if (value.high != null) {
        final numVal = value.high!.value?.valueNum;
        final unit = value.high!.unit?.valueString ?? value.high!.code?.valueString ?? '1';
        if (numVal != null) high = ValidatedQuantity.fromNumber(numVal, unit: unit);
      }
      return CqlInterval(low: low, high: high, lowClosed: true, highClosed: true);
    }
    // FHIR dateTime or instant → point interval
    if (value is FhirDateTime || value is FhirInstant) {
      return CqlInterval(low: value, high: value, lowClosed: true, highClosed: true);
    }
    if (value is FhirDate) {
      return CqlInterval(low: value, high: value, lowClosed: true, highClosed: true);
    }
    // Map with start/end (e.g. from walkFhirPath)
    if (value is Map<String, dynamic>) {
      final start = value['start'];
      final end = value['end'];
      if (start != null || end != null) {
        return CqlInterval(
          low: start != null ? FhirDateTime.fromString(start.toString()) : null,
          high: end != null ? FhirDateTime.fromString(end.toString()) : null,
          lowClosed: true,
          highClosed: true,
        );
      }
      // Map with low/high (Range-like from walkFhirPath)
      final low = value['low'];
      final high = value['high'];
      if (low != null || high != null) {
        return _toInterval(Range.fromJson(value));
      }
    }
    return null;
  }

  Future<dynamic> _helperToQuantity(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is ValidatedQuantity) return value;
    if (value is fhir.Quantity) return _fhirQuantityToValidated(value);
    return null;
  }

  ValidatedQuantity? _fhirQuantityToValidated(fhir.Quantity? q) {
    if (q == null) return null;
    final num? numVal = q.value?.valueNum;
    final unit = q.unit?.valueString ?? q.code?.valueString ?? '1';
    if (numVal != null) {
      return ValidatedQuantity.fromNumber(numVal, unit: unit);
    }
    return null;
  }

  Future<dynamic> _helperToBoolean(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is FhirBoolean) return value;
    if (value is bool) return FhirBoolean(value);
    return null;
  }

  Future<dynamic> _helperToDate(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is FhirDate) return value;
    if (value is FhirDateTime) {
      final str = value.valueString;
      if (str != null && str.length >= 10) {
        return FhirDate.fromString(str.substring(0, 10));
      }
    }
    if (value is String) return FhirDate.fromString(value);
    return null;
  }

  Future<dynamic> _helperToCode(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is CqlCode) return value;
    if (value is Coding) {
      return CqlCode(
        code: value.code?.valueString ?? '',
        system: value.system?.valueString ?? '',
        display: value.display?.valueString,
      );
    }
    if (value is Map<String, dynamic>) {
      return CqlCode(
        code: value['code']?.toString() ?? '',
        system: value['system']?.toString() ?? '',
        display: value['display']?.toString(),
      );
    }
    return null;
  }

  Future<dynamic> _helperToInteger(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is FhirInteger) return value;
    if (value is FhirPositiveInt) {
      return FhirInteger(value.valueInt);
    }
    if (value is FhirUnsignedInt) {
      return FhirInteger(value.valueInt);
    }
    if (value is int) return FhirInteger(value);
    return null;
  }

  Future<dynamic> _helperToDecimal(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is FhirDecimal) return value;
    if (value is double) return FhirDecimal(value);
    if (value is num) return FhirDecimal(value.toDouble());
    return null;
  }

  Future<dynamic> _helperToTime(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is FhirTime) return value;
    if (value is String) return FhirTime(value);
    return null;
  }

  Future<dynamic> _helperToCalendarUnit(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    final str = value is String
        ? value
        : value is PrimitiveType
            ? value.valueString
            : value.toString();
    if (str == null) return null;
    const ucumToCql = {
      'ms': 'millisecond',
      's': 'second',
      'min': 'minute',
      'h': 'hour',
      'd': 'day',
      'wk': 'week',
      'mo': 'month',
      'a': 'year',
    };
    return ucumToCql[str] ?? str;
  }

  Future<dynamic> _helperToRatio(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    if (value is ValidatedRatio) return value;
    if (value is fhir.Ratio) {
      final num = _fhirQuantityToValidated(value.numerator);
      final den = _fhirQuantityToValidated(value.denominator);
      if (num != null && den != null) {
        return ValidatedRatio(numerator: num, denominator: den);
      }
    }
    return null;
  }

  Future<dynamic> _helperToValueSet(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    String? uri;
    if (value is String) {
      uri = value;
    } else if (value is PrimitiveType) {
      uri = value.valueString;
    }
    if (uri != null) {
      return CqlValueSet(id: uri, version: null, name: '');
    }
    return null;
  }

  Future<dynamic> _helperToValue(Map<String, dynamic> context) async {
    if (operand == null || operand!.isEmpty) return null;
    final value = await operand![0].execute(context);
    if (value == null) return null;
    // Primitive unwrapping
    if (value is FhirBoolean) return value;
    if (value is FhirInteger) return value;
    if (value is FhirDecimal) return value;
    if (value is FhirString) return value.valueString;
    if (value is FhirDate) return value;
    if (value is FhirDateTime) return value;
    if (value is FhirTime) return value;
    if (value is FhirUri) return value.valueString;
    if (value is FhirId) return value.valueString;
    if (value is FhirPositiveInt) return FhirInteger(value.valueInt);
    if (value is FhirUnsignedInt) return FhirInteger(value.valueInt);
    // Complex types
    if (value is CodeableConcept) {
      return await _helperToConcept(context);
    }
    if (value is Coding) {
      return await _helperToCode(context);
    }
    if (value is fhir.Quantity) {
      return _fhirQuantityToValidated(value);
    }
    if (value is Period) return _toInterval(value);
    if (value is Range) return _toInterval(value);
    if (value is fhir.Ratio) {
      final num = _fhirQuantityToValidated(value.numerator);
      final den = _fhirQuantityToValidated(value.denominator);
      if (num != null && den != null) {
        return ValidatedRatio(numerator: num, denominator: den);
      }
    }
    // Everything else passthrough
    return value;
  }

  Future<dynamic> _helperToConcept(context) async {
    if (operand == null || operand!.isEmpty) {
      return null;
    } else if (operand!.length == 1) {
      return await ToConcept(operand: operand![0]).execute(context);
    } else {
      final List<dynamic> results = [];
      for (final operand in this.operand!) {
        final result = await ToConcept(operand: operand).execute(context);
        if (result != null) {
          results.add(result);
        }
      }
      if (results.isEmpty) {
        return null;
      } else {
        return results;
      }
    }
  }
}
