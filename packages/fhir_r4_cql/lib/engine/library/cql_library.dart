import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Library represents a serialized library of CQL-Expression Logic Model.
class CqlLibrary extends Element {
  String? type;

  /// The code systems defined within this library.
  CodeSystemDefs? codeSystems;

  CodeDefs? codes;

  /// The concepts defined within this library.
  ConceptDefs? concepts;

  ContextDefs? contexts;

  /// A Library is an instance of a CQL-ELM library.

  /// It contains various elements such as identifier, schemaIdentifier, usings, includes, parameters, codeSystems, valueSets, codes, concepts, and statements.
  VersionedIdentifier? identifier;

  /// Set of libraries referenced by this artifact. Components of referenced libraries may be used within this artifact.
  IncludeDefs? includes;

  /// The parameters defined within this library.
  ParameterDefs? parameters;

  /// This is the identifier of the XML schema (and its version) which governs the structure of this Library.
  VersionedIdentifier? schemaIdentifier;

  /// The statements section contains the expression and function definitions for the library.
  ExpressionDefs? statements;

  /// Set of data models referenced in the Expression objects in this knowledge artifact.
  UsingDefs? usings;

  /// The value sets defined within this library.
  ValueSetDefs? valueSets;

  /// Internal list of libraries referenced by this library, or available.
  LibraryManager libraryManager = LibraryManager();

  CqlLibrary({
    this.type,
    this.identifier,
    VersionedIdentifier? schemaIdentifier,
    UsingDefs? usings,
    this.includes,
    this.parameters,
    this.codeSystems,
    this.valueSets,
    this.codes,
    this.contexts,
    this.concepts,
    this.statements,
    List<CqlToElmBase>? annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  })  : schemaIdentifier = schemaIdentifier ??
            VersionedIdentifier(
              id: 'urn:hl7-org:elm',
              version: 'r1',
            ),
        usings = usings ??
            (UsingDefs()
              ..def = [
                UsingDef(
                    localIdentifier: 'System', uri: 'urn:hl7-org:elm-types:r1')
              ]),
        super(annotation: annotation ?? [CqlToElmInfo()]);

  factory CqlLibrary.fromJson(Map<String, dynamic> json) {
    return CqlLibrary(
        type: json['type'] as String?,
        identifier: json['identifier'] == null
            ? null
            : VersionedIdentifier.fromJson(
                json['identifier'] as Map<String, dynamic>),
        schemaIdentifier: json['schemaIdentifier'] == null
            ? null
            : VersionedIdentifier.fromJson(
                json['schemaIdentifier'] as Map<String, dynamic>),
        usings: json['usings'] == null
            ? null
            : UsingDefs.fromJson(json['usings'] as Map<String, dynamic>),
        includes: json['includes'] == null
            ? null
            : IncludeDefs.fromJson(json['includes'] as Map<String, dynamic>),
        parameters: json['parameters'] == null
            ? null
            : ParameterDefs.fromJson(
                json['parameters'] as Map<String, dynamic>),
        codeSystems: json['codeSystems'] == null
            ? null
            : CodeSystemDefs.fromJson(
                json['codeSystems'] as Map<String, dynamic>),
        valueSets: json['valueSets'] == null
            ? null
            : ValueSetDefs.fromJson(json['valueSets'] as Map<String, dynamic>),
        codes: json['codes'] == null
            ? null
            : CodeDefs.fromJson(json['codes'] as Map<String, dynamic>),
        contexts: json['contexts'] == null
            ? null
            : ContextDefs.fromJson(json['contexts'] as Map<String, dynamic>),
        concepts: json['concepts'] == null
            ? null
            : ConceptDefs.fromJson(json['concepts'] as Map<String, dynamic>),
        statements: json['statements'] == null
            ? null
            : ExpressionDefs.fromJson(
                json['statements'] as Map<String, dynamic>),
        annotation: (json['annotation'] as List<dynamic>?)
            ?.map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
            .toList())
      ..localId = json['localId'] as String?
      ..locator = json['locator'] as String?
      ..resultTypeName = json['resultTypeName'] as String?
      ..resultTypeSpecifier = json['resultTypeSpecifier'] == null
          ? null
          : TypeSpecifierExpression.fromJson(
              json['resultTypeSpecifier'] as Map<String, dynamic>);
  }

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('type', type);
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('identifier', identifier?.toJson());
    writeNotNull('schemaIdentifier', schemaIdentifier?.toJson());
    writeNotNull('usings', usings?.toJson());
    writeNotNull('includes', includes?.toJson());
    writeNotNull('parameters', parameters?.toJson());
    writeNotNull('codeSystems', codeSystems?.toJson());
    writeNotNull('valueSets', valueSets?.toJson());
    writeNotNull('codes', codes?.toJson());
    writeNotNull('concepts', concepts?.toJson());
    writeNotNull('contexts', contexts?.toJson());
    writeNotNull('statements', statements?.toJson());
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }

  CqlCode? resolveCodeRef(String name) {
    // Find the code definition in the library JSON
    List<CodeDef>? codes = this.codes?.def;

    CodeDef? codeDef =
        codes?.firstWhere((code) => code.name == name, orElse: () {
      throw Exception("CodeRef not found");
    });

    final codeSystemDef = codeSystems?.def.firstWhereOrNull(
        (codeSystem) => codeSystem.name == codeDef?.codeSystem?.name);

    return codeDef == null
        ? null
        : CqlCode.fromCodeDef(codeDef, codeSystemDef?.id);
  }

  CqlValueSet? resolveValueSetRef(String name) {
    // Find the code definition in the library JSON
    List<ValueSetDef>? valueSets = this.valueSets?.def;

    ValueSetDef? valueSetDef =
        valueSets?.firstWhere((valueSet) => valueSet.name == name, orElse: () {
      throw Exception("ValueSetRef not found");
    });

    return valueSetDef == null
        ? null
        : CqlValueSet.fromValueSetDef(valueSetDef);
  }

  CqlCodeSystem? resolveCodeSystemRef(String name) {
    // Find the code definition in the library JSON
    List<CodeSystemDef>? codeSystems = this.codeSystems?.def;

    CodeSystemDef? codeSystemDef = codeSystems
        ?.firstWhere((valueSet) => valueSet.name == name, orElse: () {
      throw Exception("ValueSetRef not found");
    });

    return codeSystemDef == null
        ? null
        : CqlCodeSystem.fromCodeSystemDef(codeSystemDef);
  }

  /// Find the IncludeDef matching a local alias (e.g. "FC" → FHIRCommon).
  IncludeDef? _findInclude(String libraryId) {
    return includes?.def
        .firstWhereOrNull((inc) => inc.localIdentifier == libraryId);
  }

  /// Resolve the CqlLibrary for an included library by local alias.
  Future<CqlLibrary?> resolveIncludedLibrary(String libraryId) async {
    final include = _findInclude(libraryId);
    if (include?.path == null) return null;
    return libraryManager.resolveLibrary(include!.path!, include.version ?? '');
  }

  FunctionDef? resolveLocalFunctionDef(String name,
      {int? operandCount,
      List<TypeSpecifierExpression>? signature,
      List<dynamic>? operandValues}) {
    final candidates = statements?.def
            .whereType<FunctionDef>()
            .where((e) => e.name == name)
            .toList() ??
        [];
    if (candidates.isEmpty) return null;
    if (candidates.length == 1) return candidates.first;

    // Filter by arity first
    final byArity = operandCount != null
        ? candidates
            .where((e) => (e.operand?.length ?? 0) == operandCount)
            .toList()
        : candidates;
    if (byArity.isEmpty) return candidates.first;
    if (byArity.length == 1) return byArity.first;

    // Match by signature type specifiers if available
    if (signature != null && signature.isNotEmpty) {
      final match = byArity.firstWhereOrNull(
        (funcDef) => _signatureMatches(funcDef, signature),
      );
      if (match != null) return match;
    }

    // Match by runtime operand values if available
    if (operandValues != null && operandValues.isNotEmpty) {
      final match = byArity.firstWhereOrNull(
        (funcDef) => _runtimeTypeMatches(funcDef, operandValues),
      );
      if (match != null) return match;
    }

    return byArity.first;
  }

  /// Check if a FunctionDef's declared operand types match runtime values.
  static bool _runtimeTypeMatches(
      FunctionDef funcDef, List<dynamic> operandValues) {
    final operands = funcDef.operand;
    if (operands == null || operands.length != operandValues.length) {
      return false;
    }
    for (var i = 0; i < operandValues.length; i++) {
      final declared = operands[i].operandTypeSpecifier;
      if (declared == null) continue; // No type info — can't filter
      if (!_valueMatchesTypeSpecifier(operandValues[i], declared)) {
        return false;
      }
    }
    return true;
  }

  /// Check if a runtime value matches a declared TypeSpecifierExpression.
  static bool _valueMatchesTypeSpecifier(
      dynamic value, TypeSpecifierExpression typeSpec) {
    if (value == null) return true; // null matches any type

    if (typeSpec is NamedTypeSpecifier) {
      final typeName = typeSpec.namespace.localPart;
      return _valueMatchesTypeName(value, typeName);
    }
    if (typeSpec is ListTypeSpecifier) {
      if (value is! List) return false;
      if (typeSpec.elementType == null || value.isEmpty) return true;
      // Check element type of first non-null element
      final firstNonNull = value.firstWhereOrNull((e) => e != null);
      if (firstNonNull == null) return true;
      return _valueMatchesTypeSpecifier(firstNonNull, typeSpec.elementType!);
    }
    if (typeSpec is IntervalTypeSpecifier) {
      if (value is! CqlInterval) return false;
      if (typeSpec.pointType == null) return true;
      final point = value.low ?? value.high;
      if (point == null) return true;
      return _valueMatchesTypeSpecifier(point, typeSpec.pointType!);
    }
    if (typeSpec is TupleTypeSpecifier) {
      return value is Map || value is CqlTuple;
    }
    return true; // Unknown type specifier — assume match
  }

  /// Check if a runtime value matches a CQL type name.
  static bool _valueMatchesTypeName(dynamic value, String typeName) {
    switch (typeName) {
      case 'Boolean':
        return value is fhir.FhirBoolean || value is bool;
      case 'Integer':
        return value is fhir.FhirInteger || value is int;
      case 'Decimal':
        return value is fhir.FhirDecimal || value is double;
      case 'String':
        return value is String || value is fhir.FhirString;
      case 'DateTime':
        return value is fhir.FhirDateTime;
      case 'Date':
        return value is fhir.FhirDate;
      case 'Time':
        return value is fhir.FhirTime;
      case 'Quantity':
        return value is ValidatedQuantity || value is fhir.Quantity;
      case 'Code':
        return value is CqlCode;
      case 'Concept':
        return value is CqlConcept;
      case 'Any':
        return true;
      default:
        return true; // Unknown type — assume match
    }
  }

  /// Check if a FunctionDef's operand types match the given signature.
  static bool _signatureMatches(
      FunctionDef funcDef, List<TypeSpecifierExpression> signature) {
    final operands = funcDef.operand;
    if (operands == null || operands.length != signature.length) return false;
    for (var i = 0; i < signature.length; i++) {
      if (!_typeSpecifierMatches(
          operands[i].operandTypeSpecifier, signature[i])) {
        return false;
      }
    }
    return true;
  }

  /// Compare two TypeSpecifierExpressions for structural equality.
  static bool _typeSpecifierMatches(
      TypeSpecifierExpression? declared, TypeSpecifierExpression? callSite) {
    if (declared == null || callSite == null) return false;
    if (declared.runtimeType != callSite.runtimeType) return false;

    if (declared is NamedTypeSpecifier && callSite is NamedTypeSpecifier) {
      return declared.namespace.localPart == callSite.namespace.localPart &&
          (declared.namespace.namespaceURI == callSite.namespace.namespaceURI ||
              declared.namespace.namespaceURI.isEmpty ||
              callSite.namespace.namespaceURI.isEmpty);
    }
    if (declared is ListTypeSpecifier && callSite is ListTypeSpecifier) {
      return _typeSpecifierMatches(declared.elementType, callSite.elementType);
    }
    if (declared is IntervalTypeSpecifier &&
        callSite is IntervalTypeSpecifier) {
      return _typeSpecifierMatches(declared.pointType, callSite.pointType);
    }
    if (declared is TupleTypeSpecifier && callSite is TupleTypeSpecifier) {
      return true; // Tuple matching is structural, good enough for overloads
    }
    if (declared is ChoiceTypeSpecifier && callSite is ChoiceTypeSpecifier) {
      return true;
    }
    return true; // Unknown type specifier subtypes — assume match
  }

  Future<FunctionDef?> resolveFunctionRef(String name, String libraryId,
      {int? operandCount,
      List<TypeSpecifierExpression>? signature,
      List<dynamic>? operandValues}) async {
    final libraryRef = await resolveIncludedLibrary(libraryId);
    if (libraryRef == null) return null;

    return libraryRef.resolveLocalFunctionDef(name,
        operandCount: operandCount,
        signature: signature,
        operandValues: operandValues);
  }

  /// Search all included libraries for a fluent function definition.
  /// Returns the (FunctionDef, CqlLibrary) pair if found, null otherwise.
  Future<(FunctionDef, CqlLibrary)?> resolveFluentFunction(String name,
      {int? operandCount,
      List<TypeSpecifierExpression>? signature,
      List<dynamic>? operandValues,
      Set<String>? visited}) async {
    final includeDefs = includes?.def;
    if (includeDefs == null) return null;

    // Guard against circular includes
    final myId = identifier?.id ?? '';
    visited ??= <String>{};
    if (visited.contains(myId)) return null;
    visited.add(myId);

    for (final inc in includeDefs) {
      if (inc.localIdentifier == null) continue;
      final lib = await resolveIncludedLibrary(inc.localIdentifier!);
      if (lib == null) continue;
      final funcDef = lib.resolveLocalFunctionDef(name,
          operandCount: operandCount,
          signature: signature,
          operandValues: operandValues);
      if (funcDef != null) {
        return (funcDef, lib);
      }
    }
    // Also search transitively: included libraries' includes
    for (final inc in includeDefs) {
      if (inc.localIdentifier == null) continue;
      final lib = await resolveIncludedLibrary(inc.localIdentifier!);
      if (lib == null) continue;
      final result = await lib.resolveFluentFunction(name,
          operandCount: operandCount,
          signature: signature,
          operandValues: operandValues,
          visited: visited);
      if (result != null) return result;
    }
    return null;
  }

  /// Resolve an ExpressionDef (define statement) from an included library.
  Future<ExpressionDef?> resolveExpressionRef(
      String name, String libraryId) async {
    final libraryRef = await resolveIncludedLibrary(libraryId);
    if (libraryRef == null) return null;

    return libraryRef.statements?.def.firstWhereOrNull((e) => e.name == name);
  }

  /// Resolve a CodeRef from an included library.
  Future<CqlCode?> resolveCodeRefFromLibrary(
      String name, String libraryId) async {
    final libraryRef = await resolveIncludedLibrary(libraryId);
    if (libraryRef == null) return null;
    try {
      return libraryRef.resolveCodeRef(name);
    } catch (_) {
      return null;
    }
  }

  /// Resolve a ValueSetRef from an included library.
  Future<CqlValueSet?> resolveValueSetRefFromLibrary(
      String name, String libraryId) async {
    final libraryRef = await resolveIncludedLibrary(libraryId);
    if (libraryRef == null) return null;
    try {
      return libraryRef.resolveValueSetRef(name);
    } catch (_) {
      return null;
    }
  }

  /// Resolve a CodeSystemRef from an included library.
  Future<CqlCodeSystem?> resolveCodeSystemRefFromLibrary(
      String name, String libraryId) async {
    final libraryRef = await resolveIncludedLibrary(libraryId);
    if (libraryRef == null) return null;
    try {
      return libraryRef.resolveCodeSystemRef(name);
    } catch (_) {
      return null;
    }
  }

  Future<dynamic> execute([Map<String, dynamic>? executionContext]) async {
    final Map<String, dynamic> context =
        executionContext ?? <String, dynamic>{};
    context['library'] = this;
    context['startTimestamp'] ??=
        fhir.FhirDateTime.fromDateTime(DateTime.now());
    final statementsExecuted = await statements?.execute(context);
    return statementsExecuted;
  }
}
