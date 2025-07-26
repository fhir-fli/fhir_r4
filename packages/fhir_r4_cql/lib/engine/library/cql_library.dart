import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;

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

  /// Internal list of librarires referenced by this library, or available.
  final _libraryManager = LibraryManager();

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

  Future<FunctionDef?> resolveFunctionRef(String name, String libraryId) async {
    List<IncludeDef>? libraries = includes?.def
        .where((include) => include.localIdentifier == libraryId)
        .toList();

    if (libraries == null || libraries.isEmpty) {
      return null;
    }

    final libraryRef = await _libraryManager.resolveLibrary(
        libraryId, libraries.first.version);
    if (libraryRef == null) {
      return null;
    }

    print('LibraryRef: ${libraryRef.identifier?.id}');

    return libraryRef.statements?.def
        .whereType<FunctionDef>()
        .firstWhereOrNull((e) => e.name == name);
  }

  Future<dynamic> execute([Map<String, dynamic>? executionContext]) async {
    final Map<String, dynamic> context =
        executionContext ?? <String, dynamic>{};
    context['library'] = this;
    context['startTimestamp'] = fhir.FhirDateTime.fromDateTime(DateTime.now());
    final statementsExecuted = await statements?.execute(context);
    return statementsExecuted;
  }
}
