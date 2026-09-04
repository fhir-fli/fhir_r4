import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart'
    show SpecialSearchParametersCompanion;

/// Special Search Parameter Table
class SpecialSearchParameters extends Table {
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

  /// A generic storage column for special search parameters
  TextColumn get specialValue => text()();

  /// `Location.position.latitude`, for `near` (R4B 3.1.1.4.21).
  RealColumn get latitude => real().nullable()();

  /// `Location.position.longitude`, for `near`.
  RealColumn get longitude => real().nullable()();

  @override

  /// searchName is part of the key: one FHIR path can back more than one
  /// search parameter — Observation.code serves both `code` and
  /// `combo-code` — and without it the second one collides with the first
  /// on insert, so only one of them could ever be indexed.
  @override
  Set<Column> get primaryKey =>
      {resourceType, id, searchPath, searchName, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract special search parameters.
extension SpecialSearchParametersExtension on fhir.FhirBase {
  /// Extracts the special search-parameter index rows for this resource,
  /// returning the [SpecialSearchParametersCompanion] entries to persist in the
  /// local Drift store so the resource can be matched by special FHIR search
  /// parameters that do not fit the other typed categories.
  List<SpecialSearchParametersCompanion> toSpecialSearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    // R4B 3.1.1.4.21 lists two special parameters, `_filter` (the server's)
    // and `near` on Location. `near` reads Location.position: the latitude
    // and longitude are kept as numbers so the distance test can run in
    // SQL. This used to write nothing, so `Location?near=` found nothing.
    final position = this;
    if (position is! fhir.LocationPosition) return const [];
    final latitude = position.latitude.valueNum?.toDouble();
    final longitude = position.longitude.valueNum?.toDouble();
    if (latitude == null || longitude == null) return const [];
    return [
      SpecialSearchParametersCompanion(
        resourceType: Value(resourceType),
        id: Value(id),
        lastUpdated: Value(lastUpdated),
        searchPath: Value(searchPath),
        searchName: Value(searchName),
        paramIndex:
            paramIndex == null ? const Value.absent() : Value(paramIndex),
        specialValue: Value('$latitude|$longitude'),
        latitude: Value(latitude),
        longitude: Value(longitude),
      ),
    ];
  }
}
