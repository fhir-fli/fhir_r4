import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart' show ValueSet;
import 'package:fhir_r4_path/fhir_r4_path.dart'
    show
        CanonicalResourceCache,
        OnlineResourceCache,
        ValidationOptions,
        ValueSetChecker,
        WorkerContext;

/// FHIR R4 [TerminologyProvider]: resolves value-set membership by fetching
/// the FHIR `ValueSet` resource from a [CanonicalResourceCache] and checking
/// it with `fhir_r4_path`'s [ValueSetChecker].
///
/// This is the FHIR-binding half of the terminology contract (the analogue of
/// the engine-fhir / cql-exec-fhir terminology services). The engine never
/// imports `fhir_r4` / `fhir_r4_path`; that coupling lives here.
class R4TerminologyProvider implements TerminologyProvider {
  /// [resourceCache] resolves canonical `ValueSet` references. Defaults to an
  /// [OnlineResourceCache] (network); supply a pre-populated cache to resolve
  /// offline.
  R4TerminologyProvider({CanonicalResourceCache? resourceCache})
      : _resourceCache = resourceCache ?? OnlineResourceCache();

  final CanonicalResourceCache _resourceCache;

  @override
  Future<bool?> codeInValueSet({
    String? system,
    required String? code,
    required CqlValueSet valueSet,
  }) async {
    final resolved = await _resourceCache.getCanonicalResource<ValueSet>(
        valueSet.id, valueSet.version);
    if (resolved == null) return null;

    final checker = ValueSetChecker(
      context: WorkerContext(resourceCache: _resourceCache),
      options: ValidationOptions(),
      valueSet: resolved,
    );
    return checker.codeInValueSet(system, code, null);
  }
}
