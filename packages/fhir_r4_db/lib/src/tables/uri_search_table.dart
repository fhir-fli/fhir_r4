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

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  TextColumn get searchName => text().withDefault(const Constant(''))();

  /// Index for multiple values from the same path
  IntColumn get paramIndex => integer()();

  /// The URI value, stored as text
  TextColumn get uriValue => text()();

  /// No declared key: a rowid table. The key used to be
  /// `(resource_type, id, search_path, search_name, param_index)`, which
  /// stored the FHIRPath of every row in a second copy inside a unique
  /// index that no search read (measured 2026-09-06 on 929k MIMIC
  /// resources: 1.16 GB of key indexes across the nine tables, REVIEW
  /// §4.4-4.5). What a search reads is the covering indexes and what a
  /// re-index deletes by is the owner index, both in
  /// `FhirDb.createValueIndexes`. Two rows that only differed in their path
  /// (Observation.code and Observation.component.code under `combo-code`)
  /// are simply two rows.
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
