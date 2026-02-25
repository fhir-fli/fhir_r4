import 'dart:convert';
import 'dart:io';

/// Parses FHIR ValueSet JSON resources and extracts code expansions
/// for use as `context['_valueSets']` in CQL execution.
class ValueSetLoader {
  /// Extracts `{system, code}` pairs from a FHIR ValueSet resource.
  ///
  /// Checks `expansion.contains` first, then falls back to
  /// `compose.include[].concept[]`.
  static List<Map<String, String>> extractCodes(Map<String, dynamic> valueSet) {
    final codes = <Map<String, String>>[];

    // Prefer expansion if available
    final expansion = valueSet['expansion'];
    if (expansion is Map<String, dynamic>) {
      final contains = expansion['contains'];
      if (contains is List) {
        for (final entry in contains) {
          if (entry is Map<String, dynamic>) {
            final system = entry['system']?.toString();
            final code = entry['code']?.toString();
            if (system != null && code != null) {
              codes.add({'system': system, 'code': code});
            }
          }
        }
        if (codes.isNotEmpty) return codes;
      }
    }

    // Fall back to compose.include
    final compose = valueSet['compose'];
    if (compose is Map<String, dynamic>) {
      final includes = compose['include'];
      if (includes is List) {
        for (final include in includes) {
          if (include is! Map<String, dynamic>) continue;
          final system = include['system']?.toString();
          final concepts = include['concept'];
          if (concepts is List && system != null) {
            for (final concept in concepts) {
              if (concept is Map<String, dynamic>) {
                final code = concept['code']?.toString();
                if (code != null) {
                  codes.add({'system': system, 'code': code});
                }
              }
            }
          }
        }
      }
    }

    return codes;
  }

  /// Loads all ValueSet JSON files from a directory into a `_valueSets` map.
  ///
  /// The returned map is keyed by each ValueSet's `url` field, with values
  /// being lists of `{system, code}` maps.
  static Map<String, dynamic> loadFromDirectory(String dirPath) {
    final valueSets = <String, dynamic>{};
    final dir = Directory(dirPath);
    if (!dir.existsSync()) return valueSets;

    for (final file in dir.listSync().whereType<File>()) {
      if (!file.path.endsWith('.json')) continue;
      try {
        final content = file.readAsStringSync();
        final json = jsonDecode(content);
        if (json is Map<String, dynamic> &&
            json['resourceType'] == 'ValueSet') {
          final url = json['url']?.toString();
          if (url != null) {
            final codes = extractCodes(json);
            if (codes.isNotEmpty) {
              valueSets[url] = codes;
            }
          }
        }
      } catch (_) {
        // Skip files that can't be parsed
      }
    }

    return valueSets;
  }

  /// Loads a single ValueSet JSON file and returns a map entry
  /// `{url: List<{system, code}>}`, or null if not a valid ValueSet.
  static MapEntry<String, List<Map<String, String>>>? loadFromFile(
      String filePath) {
    try {
      final content = File(filePath).readAsStringSync();
      final json = jsonDecode(content);
      if (json is Map<String, dynamic> && json['resourceType'] == 'ValueSet') {
        final url = json['url']?.toString();
        if (url != null) {
          final codes = extractCodes(json);
          if (codes.isNotEmpty) {
            return MapEntry(url, codes);
          }
        }
      }
    } catch (_) {
      // Skip files that can't be parsed
    }
    return null;
  }
}
