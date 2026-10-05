import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// The cache's resources as their fhir_r4 classes. A node a fhir_r4 cache
/// holds IS the typed object (every fhir_r4 class implements FhirNode), so
/// each of these is a cast, null when the resource is not of that type.
extension TypedResourceCache on ResourceCache {
  /// The canonical resource at [url] as [T], or null.
  Future<T?> canonical<T extends CanonicalResource>(
    String url, [
    String? version,
  ]) async {
    final r = await getCanonicalResource(url, version);
    return r is T ? r : null;
  }

  /// The StructureDefinition at [url], or null. Through the cache's own
  /// getStructureDefinition, which a subclass may resolve by more than the
  /// url (the validation tests' caches answer a bare type name).
  Future<StructureDefinition?> structureDefinition(String url) async {
    final r = await getStructureDefinition(url);
    return r is StructureDefinition ? r : null;
  }

  /// The CodeSystem at [url], or null, through getCodeSystem.
  Future<CodeSystem?> codeSystem(String url, [String? version]) async {
    final r = await getCodeSystem(url, version);
    return r is CodeSystem ? r : null;
  }

  /// The ValueSet at [url], or null.
  Future<ValueSet?> valueSet(String url, [String? version]) =>
      canonical<ValueSet>(url, version);
}
