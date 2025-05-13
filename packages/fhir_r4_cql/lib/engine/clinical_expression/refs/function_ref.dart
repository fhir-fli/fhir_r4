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
      throw ArgumentError('Library name cannot be null for FunctionRef');
    }

    if (libraryName!.toLowerCase() == 'fhirhelpers') {
      return await _fhirHelpers(context);
    }

    final functionDef = await library.resolveFunctionRef(name, libraryName!);

    if (functionDef == null) {
      throw ArgumentError('Function definition not found for $name');
    }

    // Create a new context for function execution
    final functionContext = Map<String, dynamic>.from(context);

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
    return await functionDef.execute(functionContext);
  }

  Future<dynamic> _fhirHelpers(Map<String, dynamic> context) async {
    switch (name) {
      case 'ToString':
        return _helperToString(context);
      case 'ToConcept':
        return _helperToConcept(context);
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
      case 'ToValue':
      case 'ToValueSet':
      case 'ToCode':
      case 'ToInterval':
      case 'ToRatio':
      case 'ToCalendarUnit':
      default:
        // Handle other FHIR helpers as needed
        return null;
    }
  }

  Future<dynamic> _helperToString(context) async {
    if (this.operand == null || this.operand!.isEmpty) {
      return null;
    } else if (this.operand!.length == 1) {
      return await ToString(operand: this.operand![0]).execute(context);
    } else {
      final List<dynamic> results = [];
      for (final operand in this.operand!) {
        final result = await ToString(operand: operand).execute(context);
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

  Future<dynamic> _helperToConcept(context) async {
    if (this.operand == null || this.operand!.isEmpty) {
      return null;
    } else if (this.operand!.length == 1) {
      return await ToConcept(operand: this.operand![0]).execute(context);
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
