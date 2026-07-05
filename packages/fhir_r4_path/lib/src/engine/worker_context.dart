// ignore_for_file: public_member_api_docs

import 'package:fhir_node/fhir_node.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

import 'package:ucum/ucum.dart';

class WorkerContext {
  WorkerContext({this.txClient, ResourceCache? resourceCache})
      : resourceCache = resourceCache ?? CanonicalResourceCache();
  // Fields to store resources
  final ResourceCache resourceCache;
  final UcumService ucumService = UcumService();
  final ValidatorFetcher locator = ValidatorFetcher();
  final TerminologyCache txCache = TerminologyCache('lock', null);
  final Set<String> codeSystemsUsed = {};
  final ClientLogger txLog = ClientLogger();
  bool noTerminologyServer = true;
  bool tlogging = true;
  bool isTxCaching = false;
  String? cacheId;
  final Set<String> cached = {};
  final LoggingService? logger = LoggingService(debug: true);
  final FhirToolingClient? txClient;
  Parameters? expParameters;

  Future<List<StructureDefinition>> getStructures() async {
    return resourceCache.getStructureDefinitions();
  }

  Future<List<StructureDefinition>> allStructures() async {
    return getStructures();
  }

  Future<List<String>> getResourceNames() async {
    return resourceCache.getResourceNames();
  }

  String getVersion() {
    // Return a placeholder version for now
    return '4.0.1'; // Replace with dynamic version if applicable
  }

  /// Whether [typeName] resolves to a known FHIR type. A neutral type-query
  /// the engine uses instead of inspecting a returned `StructureDefinition`,
  /// so the type metadata (StructureDefinition lookup) stays binding-side.
  Future<bool> isKnownType(String typeName) async {
    try {
      return (await fetchTypeDefinition(typeName)) != null;
    } catch (_) {
      return false;
    }
  }

  /// The FHIRPath type-membership test shared by the `is` operator and the
  /// `is()` function (equivalent per FHIRPath spec §6.3): does [value] belong
  /// to the type named [name] in namespace [ns] (`'System'` or `'FHIR'`)?
  ///
  /// Holds the FHIR-model type semantics binding-side (so the engine names no
  /// FHIR type): a `Resource` is never a System value; a System value is a
  /// value outside the FHIR Element tree or a bare primitive
  /// (`disallowExtensions`, the marker every engine-produced literal/result
  /// carries) matched by its capitalised type name (plus the Date→DateTime
  /// lattice rule); a FHIR-namespace test walks the subtype hierarchy via
  /// [isSubtypeOf] (so `Age` matches `Quantity`, `Patient` matches
  /// `Resource`). Matches the Java reference `FHIRPathEngine.funcIs`
  /// (org.hl7.fhir.r4.fhirpath) and the official test suite's `testType`
  /// group expectations.
  Future<bool> isValueOfType(FhirNode node, String ns, String name) async {
    final value = node as FhirBase;
    if (ns == 'System') {
      if (value is Resource) {
        return false;
      }
      if (value is! Element || (value.disallowExtensions ?? false)) {
        final t = value.fhirType.capitalize();
        if (name == t) {
          return true;
        }
        if (t == 'Date' && name == 'DateTime') {
          return true;
        }
        return false;
      }
      return false;
    } else if (ns == 'FHIR') {
      return isSubtypeOf(value.fhirType, name);
    }
    return false;
  }

  /// The `ofType()` type filter for [value] against the parse-tree type
  /// specifier [tn] (`System.X` or `FHIR.X`), matching the Java reference
  /// `FHIRPathEngine.funcOfType`/`funcAs`: System values match by exact type
  /// name; FHIR values match through the subtype hierarchy, but — unlike the
  /// `is` walk ([isSubtypeOf]) — the `ofType` walk STOPS at primitive-type
  /// definitions, so e.g. `gender.ofType(string)` is false for a `code` even
  /// though `gender.is(string)` is true.
  Future<bool> matchesOfType(FhirNode node, String tn) async {
    final value = node as FhirBase;
    if (tn.startsWith('System.')) {
      return value is Element &&
          (value.disallowExtensions ?? false) &&
          value.hasType([tn.substring(7)]);
    } else if (tn.startsWith('FHIR.')) {
      final tnp = tn.substring(5);
      if (value.fhirType == tnp) {
        return true;
      }
      var sd = await fetchTypeDefinition(value.fhirType);
      while (sd != null) {
        if (sd.type.primitiveValue == tnp) {
          return true;
        }
        if (sd.kind == StructureDefinitionKind.primitiveType) {
          return false;
        }
        final base = sd.baseDefinition?.primitiveValue;
        if (base == null) {
          return false;
        }
        sd = await fetchResource<StructureDefinition>(
          uri: base,
          canonicalForSource: sd,
        );
      }
      return false;
    }
    return false;
  }

  /// Whether [type] is [superType] or descends from it through the FHIR type
  /// inheritance chain. A neutral type-query the engine uses for `is` (and
  /// bare type-name navigation) instead of walking `StructureDefinition`
  /// `baseDefinition` links itself, so the type metadata stays binding-side.
  ///
  /// The walk does NOT stop at primitive-type definitions, matching the Java
  /// reference `funcIs`/`isAncestor`/name-navigation walks — this is what
  /// makes `Patient.gender.is(string)` true for a `code` (official
  /// testFHIRPathIsFunction2). Only the `ofType`/`as` walk ([matchesOfType])
  /// stops at primitives.
  Future<bool> isSubtypeOf(String type, String superType) async {
    if (type == superType) {
      return true;
    }
    var sd = await fetchTypeDefinition(type);
    while (sd != null) {
      if (sd.type.primitiveValue == superType) {
        return true;
      }
      final base = sd.baseDefinition?.primitiveValue;
      if (base == null) {
        return false;
      }
      sd = await fetchResource<StructureDefinition>(
        uri: base,
        canonicalForSource: sd,
      );
    }
    return false;
  }

  // ===========================================================================
  // STATIC TYPE ANALYSIS
  //
  // Relocated from the FHIRPath engine so that every StructureDefinition /
  // ElementDefinition snapshot walk stays binding-side. The engine drives these
  // through neutral calls (type-name strings in, model-neutral `TypeDetails`
  // out) and never inspects a `StructureDefinition`/`ElementDefinition` itself.
  // ===========================================================================

  Set<String>? _primitiveTypeCache;

  /// The set of FHIR primitive type names, derived from the loaded structure
  /// definitions. This is type metadata, so it is owned by the worker rather
  /// than recomputed engine-side.
  Future<Set<String>> primitiveTypeNames() async {
    if (_primitiveTypeCache != null) {
      return _primitiveTypeCache!;
    }
    final set = <String>{};
    for (final sd in await getStructures()) {
      if (sd.derivation == TypeDerivationRule.specialization &&
          sd.kind == StructureDefinitionKind.primitiveType &&
          sd.name.valueString != null) {
        set.add(sd.name.valueString!);
      }
    }
    return _primitiveTypeCache = set;
  }

  PathEngineException _makeException(
    ExpressionNode? holder,
    String constName,
    List<Object> args,
  ) {
    final fmt = formatMessage(constName, args);
    if (holder != null) {
      return PathEngineException(
        fmt,
        location: holder.start,
        expression: holder.toString(),
      );
    }
    return PathEngineException(fmt);
  }

  /// Computes the possible FHIR types reachable by navigating [name] from
  /// [type], accumulating them into [result]. This is the static type-analysis
  /// counterpart of runtime child navigation (used by `checkParamTypes`), and
  /// it is the sole home of `snapshot.element` walking.
  Future<void> getChildTypesByName(
    String? type,
    String name,
    TypeDetails result,
    ExpressionNode expr, {
    required bool allowPolymorphicNames,
  }) async {
    if (type == null || type.isEmpty) {
      throw _makeException(expr, 'FHIRPATH_NO_TYPE', ['getChildTypesByName']);
    }
    if (type == 'http://hl7.org/fhir/StructureDefinition/xhtml') {
      return;
    }
    if (type.startsWith(NS_SYSTEM_TYPE)) {
      return;
    }

    if (type == TypeDetails.FP_SimpleTypeInfo) {
      getSimpleTypeChildTypesByName(name, result);
    } else if (type == TypeDetails.FP_ClassInfo) {
      getClassInfoChildTypesByName(name, result);
    } else {
      String? url;
      if (type.contains('#')) {
        url = type.substring(0, type.indexOf('#'));
      } else {
        url = type;
      }
      var tail = '';
      final sd = await fetchResource<StructureDefinition>(uri: url);
      if (sd == null) {
        throw _makeException(
          expr,
          'FHIRPATH_NO_TYPE',
          [url, 'getChildTypesByName'],
        );
      }
      final sdl = <StructureDefinition>[];
      ElementDefinitionMatch? m;
      if (type.contains('#')) {
        m = await getElementDefinition(
          sd,
          type.substring(type.indexOf('#') + 1),
          false,
          expr,
        );
      }
      if (m?.definition != null && hasDataType(m!.definition!)) {
        if (m.fixedType != null) {
          final dt = await fetchResource<StructureDefinition>(
            uri: m.fixedType!.sdNs(getOverrideVersionNs()),
          );
          if (dt == null) {
            throw _makeException(expr, 'FHIRPATH_NO_TYPE', [
              m.fixedType!.sdNs(getOverrideVersionNs()),
              'getChildTypesByName',
            ]);
          }
          sdl.add(dt);
        } else {
          for (final t in m.definition!.type ?? <ElementDefinitionType>[]) {
            final dt = await fetchResource<StructureDefinition>(
              uri: t.code.toString().sdNs(getOverrideVersionNs()),
            );
            if (dt == null) {
              throw _makeException(expr, 'FHIRPATH_NO_TYPE', [
                t.code.toString().sdNs(getOverrideVersionNs()),
                'getChildTypesByName',
              ]);
            }
            addTypeAndDescendents(sdl, dt, await allStructures());
          }
        }
      } else {
        addTypeAndDescendents(sdl, sd, await allStructures());
        if (type.contains('#')) {
          tail = type.substring(type.indexOf('#') + 1);
          tail = tail.substring(tail.indexOf('.'));
        }
      }

      for (final sdi in sdl) {
        var path = '${sdi.snapshot?.element[0].path ?? ''}$tail.';
        if (name == '**') {
          assert(
            result.collectionStatus == CollectionStatus.unordered,
            'CollectionStatus.unordered',
          );
          for (final ed in sdi.snapshot?.element ?? <ElementDefinition>[]) {
            if (ed.path.valueString?.startsWith(path) ?? false) {
              for (final t in ed.type ?? <ElementDefinitionType>[]) {
                if (t.code.toString().isNotEmpty) {
                  String? tn;
                  if (t.code.toString() == 'Element' ||
                      t.code.toString() == 'BackboneElement') {
                    tn = '${sdi.type}#${ed.path}';
                  } else {
                    tn = t.code.toString();
                  }
                  if (t.code.toString() == 'Resource') {
                    for (final rn in await getResourceNames()) {
                      if (!(await result.hasTypeFromWorker(this, [rn]))) {
                        await getChildTypesByName(
                          result.addType(rn),
                          '**',
                          result,
                          expr,
                          allowPolymorphicNames: allowPolymorphicNames,
                        );
                      }
                    }
                  } else if (!(await result.hasTypeFromWorker(this, [tn]))) {
                    await getChildTypesByName(
                      result.addType(tn),
                      '**',
                      result,
                      expr,
                      allowPolymorphicNames: allowPolymorphicNames,
                    );
                  }
                }
              }
            }
          }
        } else if (name == '*') {
          assert(
            result.collectionStatus == CollectionStatus.unordered,
            'CollectionStatus.unordered',
          );
          for (final ed in sdi.snapshot?.element ?? <ElementDefinition>[]) {
            if ((ed.path.valueString?.startsWith(path) ?? false) &&
                !(ed.path.valueString?.substring(path.length).contains('.') ??
                    false)) {
              for (final t in ed.type ?? <ElementDefinitionType>[]) {
                if (t.code.toString().isEmpty) {
                  result.addType('System.string');
                } else if (t.code.toString() == 'Element' ||
                    t.code.toString() == 'BackboneElement') {
                  result.addType('${sdi.type}#${ed.path}');
                } else if (t.code.toString() == 'Resource') {
                  result.addTypes(await getResourceNames());
                } else {
                  result.addType(t.code.toString());
                }
              }
            }
          }
        } else {
          path = '${sdi.snapshot?.element[0].path ?? ''}$tail.$name';

          final ed = await getElementDefinition(
            sdi,
            path,
            allowPolymorphicNames,
            expr,
          );
          if (ed != null) {
            if (ed.fixedType?.isNotEmpty ?? false) {
              result.addType(ed.fixedType!);
            } else {
              for (final t
                  in ed.definition?.type ?? <ElementDefinitionType>[]) {
                if (t.code.toString().isEmpty) {
                  if ((ed.definition?.id?.valueString != null &&
                          [
                            'Element.id',
                            'Extension.url',
                          ].contains(ed.definition!.id!.valueString)) ||
                      (ed.definition?.base?.path.valueString != null &&
                          [
                            'Resource.id',
                            'Element.id',
                            'Extension.url',
                          ].contains(ed.definition!.base!.path.valueString))) {
                    result.addTypeWithProfile(TypeDetails.FP_NS, 'string');
                  }
                  break;
                }

                ProfiledType? pt;
                if (t.code.toString() == 'Element' ||
                    t.code.toString() == 'BackboneElement') {
                  pt = ProfiledType('${sdi.url}#$path');
                } else if (t.code.toString() == 'Resource') {
                  result.addTypes(await getResourceNames());
                } else {
                  pt = ProfiledType(t.code.toString());
                }
                if (pt != null) {
                  if (t.profile?.isNotEmpty ?? false) {
                    pt.addProfiles(t.profile!);
                  }
                  if (ed.definition?.binding != null) {
                    pt.addBinding(ed.definition!.binding);
                  }
                  result.addProfiledType(pt);
                }
              }
            }
          }
        }
      }
    }
  }

  void getClassInfoChildTypesByName(String name, TypeDetails result) {
    if (name == 'namespace') {
      result.addType(TypeDetails.FP_String);
    }
    if (name == 'name') {
      result.addType(TypeDetails.FP_String);
    }
  }

  void getSimpleTypeChildTypesByName(String name, TypeDetails result) {
    if (name == 'namespace') {
      result.addType(TypeDetails.FP_String);
    }
    if (name == 'name') {
      result.addType(TypeDetails.FP_String);
    }
  }

  Future<ElementDefinitionMatch?> getElementDefinition(
    StructureDefinition sd,
    String path,
    bool allowTypedName,
    ExpressionNode expr,
  ) async {
    for (final ed in sd.snapshot?.element ?? <ElementDefinition>[]) {
      if (ed.path.valueString == path) {
        if (ed.hasContentReference()) {
          return getElementDefinitionById(sd, ed.contentReference!.toString());
        } else {
          return ElementDefinitionMatch(ed, null);
        }
      }

      if ((ed.path.valueString?.endsWith('[x]') ?? false) &&
          path.startsWith(
            ed.path.valueString!.substring(0, ed.path.valueString!.length - 3),
          ) &&
          path.length == ed.path.valueString!.length - 3) {
        return ElementDefinitionMatch(ed, null);
      }

      if (allowTypedName &&
          (ed.path.valueString?.endsWith('[x]') ?? false) &&
          path.startsWith(
            ed.path.valueString!.substring(0, ed.path.valueString!.length - 3),
          ) &&
          path.length > ed.path.valueString!.length - 3) {
        final s = path.substring(ed.path.valueString!.length - 3).uncapitalize();
        if ((await primitiveTypeNames()).contains(s)) {
          return ElementDefinitionMatch(ed, s);
        } else {
          return ElementDefinitionMatch(
            ed,
            path.substring(ed.path.valueString!.length - 3),
          );
        }
      }

      if ((ed.path.valueString?.contains('.') ?? false) &&
          path.startsWith('${ed.path.valueString}.') &&
          ed.type != null &&
          ed.type!.isNotEmpty &&
          !isAbstractType(ed.type!)) {
        if (ed.type!.length > 1) {
          throw StateError('Internal typing issue...');
        }

        final nsd = await fetchResource<StructureDefinition>(
          uri: ed.type![0].code.toString().sdNs(getOverrideVersionNs()),
        );

        if (nsd == null) {
          throw _makeException(expr, 'FHIRPATH_NO_TYPE', [
            ed.type![0].code.valueString ?? '',
            'getElementDefinition',
          ]);
        }

        return getElementDefinition(
          nsd,
          '${nsd.id?.valueString}'
          '${path.substring(ed.path.valueString!.length)}',
          allowTypedName,
          expr,
        );
      }

      if (ed.hasContentReference() &&
          path.startsWith('${ed.path.valueString}.')) {
        final m = getElementDefinitionById(sd, ed.contentReference!.toString());
        if (m?.definition?.path.valueString != null) {
          return getElementDefinition(
            sd,
            '${m!.definition!.path.valueString}'
            '${path.substring(ed.path.valueString!.length)}',
            allowTypedName,
            expr,
          );
        }
      }
    }
    return null;
  }

  ElementDefinitionMatch? getElementDefinitionById(
    StructureDefinition sd,
    String ref,
  ) {
    for (final ed in sd.snapshot?.element ?? <ElementDefinition>[]) {
      if (ref == '#${ed.id}') {
        return ElementDefinitionMatch(ed, null);
      }
    }
    return null;
  }

  void addTypeAndDescendents(
    List<StructureDefinition> sdl,
    StructureDefinition dt,
    List<StructureDefinition> types,
  ) {
    sdl.add(dt);
    for (final sd in types) {
      if (sd.baseDefinition != null &&
          sd.baseDefinition.toString() == dt.url.toString() &&
          sd.derivation == TypeDerivationRule.specialization) {
        addTypeAndDescendents(sdl, sd, types);
      }
    }
  }

  bool isAbstractType(List<ElementDefinitionType> list) {
    return list.length != 1 ||
        list.first.code.toString().existsInList(
          {'Element', 'BackboneElement', 'Resource', 'DomainResource'},
        );
  }

  bool hasDataType(ElementDefinition ed) {
    return ed.hasType([]) &&
        !(ed.getType().first.code.toString() == 'Element' ||
            ed.getType().first.code.toString() == 'BackboneElement');
  }

  /// Resolves the [context] element path against [sd] and returns the neutral
  /// [TypeDetails] used by the type-checking entrypoints (the `check` API), so
  /// the engine no longer inspects an `ElementDefinition`. [abstractTypePrefix]
  /// is the type URL to synthesize a nested-type name from when the element is
  /// abstract/untyped. Returns null when the element can't be resolved (the
  /// caller raises its own site-specific error).
  Future<TypeDetails?> resolveContextTypeDetails(
    StructureDefinition sd,
    String context,
    String abstractTypePrefix,
    ExpressionNode expr,
  ) async {
    final ed = await getElementDefinition(sd, context, true, expr);
    if (ed == null) {
      return null;
    }
    if (ed.fixedType != null) {
      return TypeDetails(CollectionStatus.singleton, [ed.fixedType!]);
    }
    if ((ed.definition?.type?.isEmpty ?? true) ||
        isAbstractType(ed.definition!.type!)) {
      return TypeDetails(
        CollectionStatus.singleton,
        ['$abstractTypePrefix#$context'],
      );
    }
    final types = TypeDetails(CollectionStatus.singleton);
    for (final t in ed.definition?.type ?? <ElementDefinitionType>[]) {
      types.addType(t.code.toString());
    }
    return types;
  }

  Future<StructureDefinition?> fetchTypeDefinition(String typeName) async {
    var sd = await resourceCache.getStructureDefinition(typeName);
    if (sd != null) {
      return sd;
    }
    sd = await resourceCache.getStructureDefinition(
      'http://hl7.org/fhir/StructureDefinition/$typeName',
    );
    if (sd != null) {
      return sd;
    }
    return resourceCache.getStructureDefinition(
      'http://terminology.hl7.org/StructureDefinition/$typeName',
    );
  }

  Future<T?> fetchResource<T extends CanonicalResource>({
    String? uri,
    String? version,
    CanonicalResource? canonicalForSource,
  }) async {
    if (uri == null) {
      return null;
    }
    final resource = await resourceCache.getCanonicalResource(uri, version);
    if (resource is T) {
      return resource;
    }
    return null;
  }

  Future<CodeSystem?> fetchCodeSystem(String? system) async {
    if (system == null) return null;

    if (system.contains('|')) {
      final s = system.substring(0, system.indexOf('|'));
      final v = system.substring(system.indexOf('|') + 1);
      return fetchCodeSystemWithVersion(s, v);
    }

    // Fetch from local cache
    final codeSystem = await resourceCache.getCodeSystem(system);
    if (codeSystem != null) return codeSystem;

    // Fallback: Try to locate and load the resource
    locator.findResource(this, system);
    return resourceCache.getCodeSystem(system); // Recheck after locator runs
  }

  Future<CodeSystem?> fetchCodeSystemWithVersion(
    String system,
    String version,
  ) async {
    // Attempt to fetch the CodeSystem from the local cache with the specified
    // version
    var codeSystem = await resourceCache.getCodeSystem(system, version);

    // If the CodeSystem is not found and a locator exists, try to find the
    // resource
    if (codeSystem == null) {
      locator.findResource(this, system);

      // Recheck the cache after the locator runs
      codeSystem = await resourceCache.getCodeSystem(system, version);
    }

    return codeSystem;
  }

  String formatMessage(String theMessage, List<dynamic> theMessageArguments) {
    // Include argument information in the output
    final argumentsInfo = theMessageArguments
        .asMap()
        .entries
        .map(
          (entry) =>
              '[${entry.key}]: (${entry.value.runtimeType}) ${entry.value}',
        )
        .join(', ');

    // Replace placeholders with the arguments
    final formattedMessage = theMessageArguments.asMap().entries.fold(
          theMessage,
          (msg, entry) =>
              msg.replaceAll('{$entry.key}', entry.value.toString()),
        );

    // Add the arguments info to the message
    return '$formattedMessage\nArguments: $argumentsInfo';
  }

  String formatMessagePlural(
    int pl,
    String theMessage,
    List<dynamic> theMessageArguments,
  ) {
    final message = formatMessage(theMessage, theMessageArguments);
    return '$message (plural count: $pl)';
  }

  String getOverrideVersionNs() {
    return 'http://hl7.org/fhir';
  }

  // Utility methods for loading resources
  void loadStructureDefinition(StructureDefinition sd) {
    if (sd.name.valueString != null && sd.url?.valueString != null) {
      resourceCache.saveCanonicalResource(sd);
    }
  }

  void loadStructureDefinitions(List<StructureDefinition> sds) {
    sds.forEach(loadStructureDefinition);
  }

  Future<void> loadResource(CanonicalResource resource) async {
    final uri =
        resource.id?.valueString ?? resource.meta?.versionId?.valueString;
    if (uri != null) {
      await resourceCache.saveCanonicalResource(resource);
    }
  }

  bool laterVersion(String newVersion, String oldVersion) {
    final trimmedNewVersion = newVersion.trim();
    final trimmedOldVersion = oldVersion.trim();

    if (_isNumeric(trimmedNewVersion) && _isNumeric(trimmedOldVersion)) {
      return double.parse(trimmedNewVersion) > double.parse(trimmedOldVersion);
    } else if (hasDelimiter(trimmedNewVersion, trimmedOldVersion, '.')) {
      return laterDelimitedVersion(trimmedNewVersion, trimmedOldVersion, r'\.');
    } else if (hasDelimiter(trimmedNewVersion, trimmedOldVersion, '-')) {
      return laterDelimitedVersion(trimmedNewVersion, trimmedOldVersion, r'\-');
    } else if (hasDelimiter(trimmedNewVersion, trimmedOldVersion, '_')) {
      return laterDelimitedVersion(trimmedNewVersion, trimmedOldVersion, r'\_');
    } else if (hasDelimiter(trimmedNewVersion, trimmedOldVersion, ':')) {
      return laterDelimitedVersion(trimmedNewVersion, trimmedOldVersion, r'\:');
    } else if (hasDelimiter(trimmedNewVersion, trimmedOldVersion, ' ')) {
      return laterDelimitedVersion(trimmedNewVersion, trimmedOldVersion, r'\s');
    } else {
      return trimmedNewVersion.compareTo(trimmedOldVersion) > 0;
    }
  }

  bool hasDelimiter(String s1, String s2, String delimiter) {
    return s1.contains(delimiter) &&
        s2.contains(delimiter) &&
        s1.split(delimiter).length == s2.split(delimiter).length;
  }

  bool laterDelimitedVersion(
    String newVersion,
    String oldVersion,
    String delimiter,
  ) {
    final newParts = newVersion.split(RegExp(delimiter));
    final oldParts = oldVersion.split(RegExp(delimiter));
    for (var i = 0; i < newParts.length; i++) {
      if (newParts[i] != oldParts[i]) {
        return laterVersion(newParts[i], oldParts[i]);
      }
    }
    throw Exception('Delimited versions have an exact match for delimiter.');
  }

  bool _isNumeric(String s) {
    return double.tryParse(s) != null;
  }

  Future<ValidationResult> validateCode(
    ValidationOptions options,
    String? system,
    String? version,
    String code,
    String? display,
  ) async {
    final coding = Coding(
      system: system?.toFhirUri,
      version: version?.toFhirString,
      code: code.toFhirCode,
      display: display?.toFhirString,
    );
    return validateCodeWithCoding(options, coding, null);
  }

  Future<ValidationResult> validateCodeWithCoding(
    ValidationOptions options,
    Coding coding,
    ValueSet? valueSet,
  ) async {
    try {
      // Validate locally if client-side validation is enabled
      if (options.useClient) {
        final checker = ValueSetChecker(
          options: options,
          valueSet: valueSet,
          context: this,
        );

        final codeSystem = await fetchCodeSystem(coding.system?.primitiveValue);

        if (codeSystem == null) {
          return ValidationResult.error(
            message: 'Code system not found: ${coding.system}',
          );
        }
        return checker.validateCodeAgainstCodeSystem(coding, codeSystem);
      }

      // Validate with server if server-side validation is enabled
      if (options.useServer) {
        return validateCodeOnServer(options, coding, valueSet);
      }

      // If neither client nor server validation is enabled
      return ValidationResult.error(
        message: 'No validation methods (client/server) enabled.',
      );
    } catch (e) {
      // Catch and return any unexpected errors during validation
      return ValidationResult.error(
        message: 'Validation failed: $e',
      );
    }
  }

  /// Validates a code-carrying value (a `Coding`, or a `code`/`string`/`uri`
  /// primitive) against [valueSet].
  ///
  /// The value→`Coding` adaptation is FHIR-version-specific, so it lives here
  /// at the model boundary (the worker) rather than in the FHIRPath engine —
  /// the engine passes the node and lets the worker interpret it.
  Future<ValidationResult> validateCodeForCodingValue(
    ValidationOptions options,
    FhirNode node,
    ValueSet? valueSet,
  ) async {
    final value = node as FhirBase;
    final coding = TypeConvertor.castToCoding(value);
    if (coding == null) {
      return ValidationResult.error(
        message: 'Unable to interpret a ${value.fhirType} as a Coding',
      );
    }
    return validateCodeWithCoding(options, coding, valueSet);
  }

  /// As [validateCodeForCodingValue], but for a `CodeableConcept`-typed value.
  Future<ValidationResult> validateCodeForCodeableConceptValue(
    ValidationOptions options,
    FhirNode node,
    ValueSet valueSet,
  ) async {
    final value = node as FhirBase;
    final concept = TypeConvertor.castToCodeableConcept(value);
    if (concept == null) {
      return ValidationResult.error(
        message: 'Unable to interpret a ${value.fhirType} as a CodeableConcept',
      );
    }
    return validateCodeWithCodeableConcept(options, concept, valueSet);
  }

  Future<ValidationResult> validateCodeWithCodeableConcept(
    ValidationOptions options,
    CodeableConcept code,
    ValueSet vs,
  ) async {
    // Generate a cache token for validation
    final cacheToken =
        txCache.generateValidationTokenForCodeableConcept(options, code, vs);

    // Check if validation result is already cached
    final cachedResult = txCache.getValidation(cacheToken);
    if (cachedResult != null) {
      return cachedResult;
    }

    // Collect code systems used for validation
    for (final coding in code.coding ?? <Coding>[]) {
      if (coding.system?.primitiveValue != null) {
        codeSystemsUsed.add(coding.system!.primitiveValue!);
      }
    }

    // Attempt client-side validation
    if (options.useClient) {
      try {
        final checker = ValueSetChecker(
          options: options,
          valueSet: vs,
          context: this,
        );

        // Perform local validation
        final result = await checker.validateCode(code);

        // Cache and return the result
        txCache.cacheValidation(cacheToken, result, TerminologyCache.transient);
        return result;
      } catch (e) {
        if (e is NoTerminologyServiceException) {
          return ValidationResult.error(
            message: 'No Terminology Service available',
            errorClass: TerminologyServiceErrorClass.noservice,
          );
        }
      }
    }

    // If client-side validation fails and server-side validation is disabled
    if (!options.useServer) {
      return ValidationResult(
        severity: IssueSeverity.warning,
        message: 'Unable to validate code without using server',
        errorClass: TerminologyServiceErrorClass.blockedByOptions,
      );
    }

    // Attempt server-side validation
    if (noTerminologyServer) {
      return ValidationResult.error(
        message: 'Error validating code: running without terminology services',
        errorClass: TerminologyServiceErrorClass.noservice,
      );
    }

    tlog(
      'Validating ${txCache.summaryForCodeableConcept(code)} for '
      '${txCache.summaryForValueSet(vs)}',
    );

    try {
      // Prepare parameters for server validation
      final params = Parameters(
        parameter: [
          ParametersParameter(
            name: 'codeableConcept'.toFhirString,
            valueX: code,
          ),
        ],
      );

      // Set terminology options
      setTerminologyOptions(options, params);

      // Perform server validation
      final result = validateOnServer(vs, params, options);

      // Cache and return the result
      txCache.cacheValidation(cacheToken, result, TerminologyCache.permanent);
      return result;
    } catch (e) {
      return ValidationResult.error(
        message: e.toString(),
      )..txLink = txLog.getLastId();
    }
  }

  void tlog(String msg) {
    if (tlogging) {
      logger?.logDebugMessage(LogCategory.tx, msg);
    }
  }

  /// Validates a ValueSet on a server using the given parameters and options.
  ValidationResult validateOnServer(
    ValueSet? vs,
    Parameters pin,
    ValidationOptions options,
  ) {
    var cache = false;

    if (vs != null) {
      for (final inc in vs.compose?.include ?? <ValueSetInclude>[]) {
        if (inc.system?.primitiveValue != null) {
          codeSystemsUsed.add(inc.system!.primitiveValue!);
        }
      }
      for (final exc in vs.compose?.exclude ?? <ValueSetInclude>[]) {
        if (exc.system?.primitiveValue != null) {
          codeSystemsUsed.add(exc.system!.primitiveValue!);
        }
      }
    }

    if (vs != null) {
      if (isTxCaching &&
          cacheId != null &&
          vs.url != null &&
          cached
              .contains('${vs.url!.valueString}|${vs.version?.valueString}')) {
        pin.parameter?.add(
          ParametersParameter(
            name: 'url'.toFhirString,
            valueX: FhirUri(
              '${vs.url!.valueString}'
              '${vs.version != null ? '|${vs.version!.valueString}' : ''}',
            ),
          ),
        );
      } else if (options.vsAsUrl) {
        pin.parameter?.add(
          ParametersParameter(
            name: 'url'.toFhirString,
            valueX: vs.url?.primitiveValue == null
                ? null
                : FhirString(vs.url!.primitiveValue),
          ),
        );
      } else {
        pin.parameter?.add(
          ParametersParameter(
            name: 'valueSet'.toFhirString,
            resource: vs,
          ),
        );
        if (vs.url != null) {
          cached.add('${vs.url!.valueString}|${vs.version?.valueString}');
        }
      }
      cache = true;
      addDependentResources(pin, vs);
    }

    if (cache) {
      pin.parameter?.add(
        ParametersParameter(
          name: 'cache-id'.toFhirString,
          valueX: FhirString(cacheId),
        ),
      );
    }

    for (final pp in pin.parameter ?? <ParametersParameter>[]) {
      if (pp.name.primitiveValue == 'profile') {
        throw ArgumentError(
          formatMessage('CAN_ONLY_SPECIFY_PROFILE_IN_THE_CONTEXT', []),
        );
      }
    }

    if (expParameters == null) {
      throw ArgumentError(
        formatMessage('NO_EXPANSIONPROFILE_PROVIDED', []),
      );
    }

    pin.parameter?.add(
      ParametersParameter(
        name: 'profile'.toFhirString,
        resource: expParameters,
      ),
    );

    txLog.clearLastId();

    if (txClient == null) {
      throw ArgumentError(
        formatMessage(
          // ignore: lines_longer_than_80_chars
          'ATTEMPT_TO_USE_TERMINOLOGY_SERVER_WHEN_NO_TERMINOLOGY_SERVER_IS_AVAILABLE',
          [],
        ),
      );
    }

    return ValidationResult.error(message: 'Not yet Implemented');
    // TODO(Dokotela): Implement actual server validation
    // Parameters pOut;
    // if (vs == null) {
    //   pOut = txClient!.validateCS(pin);
    // } else {
    //   pOut = txClient!.validateVS(pin);
    // }

    // return processValidationResult(pOut);
  }

  Future<(bool, Parameters)> addDependentResources(
    Parameters oldPin,
    ValueSet vs,
  ) async {
    var cache = false;
    var pin = oldPin;
    for (final inc in vs.compose?.include ?? <ValueSetInclude>[]) {
      final tempCachePin = await addDependentResourcesForComponent(pin, inc);
      cache = tempCachePin.$1 || cache;
      pin = tempCachePin.$2;
    }
    for (final inc in vs.compose?.exclude ?? <ValueSetInclude>[]) {
      final tempCachePin = await addDependentResourcesForComponent(pin, inc);
      cache = tempCachePin.$1 || cache;
      pin = tempCachePin.$2;
    }
    return (cache, pin);
  }

  Future<(bool, Parameters)> addDependentResourcesForComponent(
    Parameters oldPin,
    ValueSetInclude inc,
  ) async {
    var cache = false;
    var pin = oldPin;

    for (final canonical in inc.valueSet ?? <FhirCanonical>[]) {
      final vs = await fetchResource<ValueSet>(uri: canonical.primitiveValue);
      if (vs != null) {
        pin = pin.copyWith(
          parameter: [
            ...pin.parameter ?? [],
            ParametersParameter(
              name: 'tx-resource'.toFhirString,
              resource: vs,
            ),
          ],
        );
        if (isTxCaching && cacheId == null ||
            !cached.contains(vs.url?.primitiveValue)) {
          cached.add(vs.url!.primitiveValue!);
          cache = true;
        }
        await addDependentResources(pin, vs);
      }
    }

    final cs = await fetchResource<CodeSystem>(uri: inc.system?.primitiveValue);
    if (cs != null) {
      pin = pin.copyWith(
        parameter: [
          ...pin.parameter ?? [],
          ParametersParameter(
            name: 'tx-resource'.toFhirString,
            resource: cs,
          ),
        ],
      );
      if (isTxCaching && cacheId == null ||
          !cached.contains(cs.url?.primitiveValue)) {
        cached.add(cs.url!.primitiveValue!);
        cache = true;
      }
      // TODO(Dokotela): handle supplements
    }
    return (cache, pin);
  }

  ValidationResult processValidationResult(Parameters pOut) {
    var ok = false;
    var message = 'No Message returned';
    String? display;
    String? system;
    String? code;
    var errorClass = TerminologyServiceErrorClass.unknown;

    for (final parameter in pOut.parameter ?? <ParametersParameter>[]) {
      if (parameter.valueX != null) {
        final name = parameter.name;
        final value = parameter.valueX;
        if (name.valueString == 'result' && value is FhirBoolean) {
          ok = value.valueBoolean ?? false;
        } else if (name.valueString == 'message' && value is FhirString) {
          message = value.valueString ?? 'No Message returned';
        } else if (name.valueString == 'display' && value is FhirString) {
          display = value.valueString;
        } else if (name.valueString == 'system' && value is FhirString) {
          system = value.valueString;
        } else if (name.valueString == 'code' && value is FhirString) {
          code = value.valueString;
        } else if (name.valueString == 'cause' && value is FhirString) {
          try {
            final issueType = value.valueString ?? '';
            switch (issueType) {
              case 'unknown':
                errorClass = TerminologyServiceErrorClass.unknown;
              case 'not_found':
                errorClass = TerminologyServiceErrorClass.codeSystemUnsupported;
              case 'code_invalid':
                errorClass = TerminologyServiceErrorClass.valueSetUnsupported;
              default:
                errorClass = TerminologyServiceErrorClass.unknown;
            }
          } catch (e) {
            // Handle exceptions gracefully
          }
        }
      }
    }

    if (!ok) {
      return ValidationResult(
        severity: IssueSeverity.error,
        message: '$message (from ${txClient?.getAddress()})',
        errorClass: errorClass,
        txLink: txLog.getLastId(),
      );
    } else if (message != 'No Message returned') {
      if (code == null) {
        throw ArgumentError('Code is required when message is present');
      }
      return ValidationResult(
        severity: IssueSeverity.warning,
        message: '$message (from ${txClient?.getAddress()})',
        system: system,
        definition: CodeSystemConcept(
          display: display?.toFhirString,
          code: code.toFhirCode,
        ),
        txLink: txLog.getLastId(),
      );
    } else if (display != null) {
      if (code == null) {
        throw ArgumentError('Code is required when display is present');
      }
      return ValidationResult(
        system: system,
        definition: CodeSystemConcept(
          display: display.toFhirString,
          code: code.toFhirCode,
        ),
        txLink: txLog.getLastId(),
      );
    } else {
      if (code == null) {
        throw ArgumentError('Code is required when display is present');
      }
      return ValidationResult(
        system: system,
        definition: CodeSystemConcept(code: code.toFhirCode),
        txLink: txLog.getLastId(),
      );
    }
  }

  Parameters setTerminologyOptions(ValidationOptions options, Parameters pIn) {
    return pIn.copyWith(
      parameter: [
        ...(pIn.parameter ?? []),
        if (options.hasLanguages())
          ParametersParameter(
            name: 'displayLanguage'.toFhirString,
            valueX: options.getLanguages().toString().toFhirString,
          ),
        if (options.membershipOnly)
          ParametersParameter(
            name: 'valueset-membership-only'.toFhirString,
            valueX: true.toFhirBoolean,
          ),
        if (options.displayWarningMode)
          ParametersParameter(
            name: 'lenient-display-validation'.toFhirString,
            valueX: true.toFhirBoolean,
          ),
        if (options.versionFlexible)
          ParametersParameter(
            name: 'default-to-latest-version'.toFhirString,
            valueX: true.toFhirBoolean,
          ),
      ],
    );
  }

  ValidationResult validateCodeOnServer(
    ValidationOptions options,
    Coding coding,
    ValueSet? valueSet,
  ) {
    // Prepare parameters for server-side validation
    // final params = Parameters(
    //   parameter: [
    //     ParametersParameter(name: 'coding'.toFhirString, valueX: coding),
    //     if (options.guessSystem)
    //       ParametersParameter(
    //         name: 'inferSystem'.toFhirString,
    //         valueX: true.toFhirBoolean,
    //       ),
    //     if (valueSet != null)
    //       ParametersParameter(
    //         name: 'valueSet'.toFhirString,
    //         resource: valueSet,
    //       ),
    //   ],
    // );

    try {
      // Simulate sending request to the terminology server
      // TODO(Dokotela): Implement actual server validation
      // final response = _sendValidationRequestToServer(params);
      // return processValidationResponse(response);
      throw Exception('Not yet implemented');
    } catch (e) {
      return ValidationResult.error(
        message: 'Server validation failed: $e',
      );
    }
  }

  // Future<Map<String, dynamic>> _sendValidationRequestToServer(
  //   Parameters params,
  // ) async {
  //   // Mock response for now; integrate with an actual server later
  //   try {
  //     return {'result': true, 'message': 'Code is valid'};
  //   } catch (e) {
  //     throw Exception('Failed to send validation request: $e');
  //   }
  // }

  ValidationResult processValidationResponse(Map<String, dynamic> response) {
    if (response['result'] == true) {
      return ValidationResult.success(message: response['message'] as String?);
    } else {
      return ValidationResult.error(
        message: response['message'] as String? ??
            'Unknown error during server validation.',
      );
    }
  }
}
