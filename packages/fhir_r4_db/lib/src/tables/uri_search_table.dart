import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart' show UriSearchParametersCompanion;

/// URI Search Parameter Table
class UriSearchParameters extends Table {
  /// FHIR resource type name
  TextColumn get resourceType => text()();

  /// Resource logical id
  TextColumn get id => text()();

  /// When the resource was last updated
  IntColumn get lastUpdated => integer()();

  /// FHIRPath expression identifying the source field
  TextColumn get searchPath => text()();

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  TextColumn get searchName => text().withDefault(const Constant(''))();

  /// Index for multiple values from the same path
  IntColumn get paramIndex => integer()();

  /// The URI value, stored as text
  TextColumn get uriValue => text()();

  @override
  Set<Column> get primaryKey => {resourceType, id, searchPath, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract URI search parameters.
extension UriSearchParametersExtension on fhir.FhirBase {
  List<UriSearchParametersCompanion> toUriSearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    final results = <UriSearchParametersCompanion>[];

    switch (this) {
      case final fhir.FhirUrl url:
        if (url.valueString != null) {
          results.add(
            UriSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              searchName: Value(searchName),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              uriValue: Value(_normalizeUri(url.valueString!)),
            ),
          );
        }
        return results;

      case final fhir.FhirCanonical canonical:
        if (canonical.valueString != null) {
          results.add(
            UriSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              searchName: Value(searchName),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              uriValue: Value(_normalizeUri(canonical.valueString!)),
            ),
          );
        }
        return results;

      case final fhir.FhirUri uri:
        if (uri.valueString != null) {
          results.add(
            UriSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              searchName: Value(searchName),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              uriValue: Value(_normalizeUri(uri.valueString!)),
            ),
          );
        }
        return results;

      default:
        return [];
    }
  }

  /// Normalize URI for consistent searching.
  String _normalizeUri(String input) {
    var normalized =
        input.endsWith('/') ? input.substring(0, input.length - 1) : input;

    try {
      final uri = Uri.parse(normalized);
      if (uri.scheme.isNotEmpty && uri.host.isNotEmpty) {
        normalized = '${uri.scheme.toLowerCase()}://${uri.host.toLowerCase()}';
        if (uri.port != 80 && uri.port != 443 && uri.port != 0) {
          normalized += ':${uri.port}';
        }
        if (uri.path.isNotEmpty) {
          normalized += uri.path;
        }
        if (uri.query.isNotEmpty) {
          normalized += '?${uri.query}';
        }
        if (uri.fragment.isNotEmpty) {
          normalized += '#${uri.fragment}';
        }
      }
    } catch (_) {
      // If URI parsing fails, return with minimal normalization
    }

    return normalized;
  }
}
