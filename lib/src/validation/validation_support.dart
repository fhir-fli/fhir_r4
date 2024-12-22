/// Validation Support Interface
abstract class ValidationSupport {
  /// Fetch a StructureDefinition by URL
  Future<Map<String, Object>?> fetchStructureDefinition(String url);

  /// Fetch a ValueSet by URL
  Future<Map<String, Object>?> fetchValueSet(String url);

  /// Fetch a CodeSystem by URL
  Future<Map<String, Object>?> fetchCodeSystem(String url);
}
