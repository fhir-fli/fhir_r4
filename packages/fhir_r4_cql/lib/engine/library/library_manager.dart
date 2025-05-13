import 'package:fhir_r4_cql/fhir_r4_cql.dart' show CqlLibrary;

class LibraryManager {
  // Cache of loaded libraries by name and version
  final Map<String, Map<String, CqlLibrary>> _libraryCache = {};

  LibraryManager();

  void addLibrary(String libraryName, String version, CqlLibrary library) {
    if (_libraryCache.containsKey(libraryName)) {
      _libraryCache[libraryName]![version] = library;
    } else {
      _libraryCache[libraryName] = {version: library};
    }
  }

  Future<CqlLibrary?> resolveLibrary(
      String libraryName, String? version) async {
    version = version ?? '';
    return _libraryCache[libraryName]?[version];
  }
}
