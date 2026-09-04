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

  /// searchName is part of the key: one FHIR path can back more than one
  /// search parameter — Observation.code serves both `code` and
  /// `combo-code` — and without it the second one collides with the first
  /// on insert, so only one of them could ever be indexed.
  @override
  Set<Column> get primaryKey =>
      {resourceType, id, searchPath, searchName, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract URI search parameters.
extension UriSearchParametersExtension on fhir.FhirBase {
  /// Extracts the URI search-parameter index rows for this resource,
  /// returning the [UriSearchParametersCompanion] entries to persist in the
  /// local Drift store so the resource can be matched by URI FHIR searches.
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

  /// The value as written. R4B 3.1.1.4.9: "matches are precise (e.g. case,
  /// accent, and escape) sensitive, and the entire URI must match." This
  /// used to lower-case the scheme and host and strip a trailing slash, so
  /// a search for the value as written failed to match it.
  String _normalizeUri(String input) => input;
}
