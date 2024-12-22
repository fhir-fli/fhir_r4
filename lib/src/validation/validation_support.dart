/// Validation Support Interface
abstract class ValidationSupport {
  /// Fetch a StructureDefinition by URL
  Future<Map<String, dynamic>?> fetchStructureDefinition(String url);

  /// Fetch a ValueSet by URL
  Future<Map<String, dynamic>?> fetchValueSet(String url);

  /// Fetch a CodeSystem by URL
  Future<Map<String, dynamic>?> fetchCodeSystem(String url);
}
