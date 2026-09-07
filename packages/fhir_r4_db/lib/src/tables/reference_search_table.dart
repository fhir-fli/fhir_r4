import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart'
    show ReferenceSearchParametersCompanion;

/// Enhanced Reference Search Parameter Table
class ReferenceSearchParameters extends Table {
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

  /// Original reference string as it appears in the resource.
  /// Nullable for identifier-only references (no URL, just identifier).
  TextColumn get referenceValue => text().nullable()();

  /// Parsed target resource type (e.g. 'Patient')
  TextColumn get referenceResourceType => text().nullable()();

  /// Parsed target resource id
  TextColumn get referenceIdPart => text().nullable()();

  /// Parsed version from versioned references
  TextColumn get referenceVersion => text().nullable()();

  /// Parsed base URL for absolute references
  TextColumn get referenceBaseUrl => text().nullable()();

  /// Identifier system for identifier-based references
  TextColumn get identifierSystem => text().nullable()();

  /// Identifier value for identifier-based references
  TextColumn get identifierValue => text().nullable()();

  @override

  /// searchName is part of the key: one FHIR path can back more than one
  /// search parameter — Observation.code serves both `code` and
  /// `combo-code` — and without it the second one collides with the first
  /// on insert, so only one of them could ever be indexed.
  @override
  Set<Column> get primaryKey =>
      {resourceType, id, searchPath, searchName, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract reference search parameters.
extension ReferenceSearchParametersExtension on fhir.FhirBase {
  /// Extracts the reference search-parameter index rows for this resource,
  /// returning the [ReferenceSearchParametersCompanion] entries to persist in
  /// the local Drift store so the resource can be matched by reference FHIR
  /// searches that target links to other resources.
  List<ReferenceSearchParametersCompanion> toReferenceSearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    final results = <ReferenceSearchParametersCompanion>[];

    switch (this) {
      case final fhir.Reference ref:
        // Skip display-only references (no reference string and no identifier)
        if (ref.reference?.valueString == null &&
            ref.identifier?.value?.valueString == null) {
          return results;
        }
        final referenceComponents = _parseReference(ref.reference?.valueString);

        results.add(
          ReferenceSearchParametersCompanion(
            resourceType: Value(resourceType),
            id: Value(id),
            lastUpdated: Value(lastUpdated),
            searchPath: Value(searchPath),
            searchName: Value(searchName),
            paramIndex:
                paramIndex == null ? const Value.absent() : Value(paramIndex),
            referenceValue: ref.reference?.valueString == null
                ? const Value.absent()
                : Value(ref.reference!.valueString),
            referenceResourceType: referenceComponents.resourceType == null
                ? const Value.absent()
                : Value(referenceComponents.resourceType),
            referenceIdPart: referenceComponents.id == null
                ? const Value.absent()
                : Value(referenceComponents.id),
            referenceVersion: referenceComponents.version == null
                ? const Value.absent()
                : Value(referenceComponents.version),
            referenceBaseUrl: referenceComponents.baseUrl == null
                ? const Value.absent()
                : Value(referenceComponents.baseUrl),
            identifierSystem: ref.identifier?.system?.valueString == null
                ? const Value.absent()
                : Value(ref.identifier!.system!.valueString),
            identifierValue: ref.identifier?.value?.valueString == null
                ? const Value.absent()
                : Value(ref.identifier!.value!.valueString),
          ),
        );

      case final fhir.FhirCanonical canonical:
        final referenceComponents =
            _parseReference(canonical.valueString?.toString());

        results.add(
          ReferenceSearchParametersCompanion(
            resourceType: Value(resourceType),
            id: Value(id),
            lastUpdated: Value(lastUpdated),
            searchPath: Value(searchPath),
            searchName: Value(searchName),
            paramIndex:
                paramIndex == null ? const Value.absent() : Value(paramIndex),
            referenceValue: canonical.valueString == null
                ? const Value.absent()
                : Value(canonical.valueString),
            referenceResourceType: referenceComponents.resourceType == null
                ? const Value.absent()
                : Value(referenceComponents.resourceType),
            referenceIdPart: referenceComponents.id == null
                ? const Value.absent()
                : Value(referenceComponents.id),
            referenceVersion: referenceComponents.version == null
                ? const Value.absent()
                : Value(referenceComponents.version),
            referenceBaseUrl: referenceComponents.baseUrl == null
                ? const Value.absent()
                : Value(referenceComponents.baseUrl),
          ),
        );

      // R4B 3.1.1.9's cross-map: a reference parameter also searches an
      // element of type uri, and the R4B CodeableReference through its
      // reference. Neither wrote a row before.
      case final fhir.FhirUri uri:
        final written = uri.valueString;
        if (written == null) return results;
        final referenceComponents = _parseReference(written);
        results.add(
          ReferenceSearchParametersCompanion(
            resourceType: Value(resourceType),
            id: Value(id),
            lastUpdated: Value(lastUpdated),
            searchPath: Value(searchPath),
            searchName: Value(searchName),
            paramIndex:
                paramIndex == null ? const Value.absent() : Value(paramIndex),
            referenceValue: Value(written),
            referenceResourceType: Value(referenceComponents.resourceType),
            referenceIdPart: Value(referenceComponents.id),
            referenceVersion: Value(referenceComponents.version),
            referenceBaseUrl: Value(referenceComponents.baseUrl),
          ),
        );
        return results;

      case final fhir.CodeableReference codeableReference:
        final reference = codeableReference.reference;
        if (reference == null) return results;
        return reference.toReferenceSearchParameter(
          resourceType,
          id,
          lastUpdated,
          searchPath,
          paramIndex,
          searchName: searchName,
        );

      default:
        return results;
    }

    return results;
  }

  /// Parses a literal reference into base URL, type, id and version.
  ///
  /// R4B references.html "Literal References" (read 2026-09-07) gives the
  /// shape as a regex: an optional `(http|https)://` base of one or more
  /// path segments, then `[type]/[id]`, then optionally
  /// `(\/_history\/[A-Za-z0-9\-\.]{1,64})?`. So the version suffix comes off
  /// first, whatever the rest is, and the base is everything before the LAST
  /// `/[type]/[id]`. An absolute versioned reference used to be split on its
  /// last two segments and indexed as type `_history`, id `[vid]`, and a
  /// base path that happened to contain the type name was cut at the first
  /// occurrence (fhirant REVIEW-2026-09-06 finding 18).
  ReferenceComponents _parseReference(String? referenceString) {
    if (referenceString == null || referenceString.isEmpty) {
      return ReferenceComponents();
    }

    String? version;
    var rest = referenceString;
    const historyMarker = '/_history/';
    final h = rest.indexOf(historyMarker);
    if (h >= 0) {
      final v = rest.substring(h + historyMarker.length);
      version = v.isEmpty ? null : v;
      rest = rest.substring(0, h);
    }

    // Absolute URLs: "http://example.org/fhir/Patient/123"
    if (rest.startsWith('http://') || rest.startsWith('https://')) {
      final uri = Uri.tryParse(rest);
      if (uri == null) return ReferenceComponents();
      final pathSegments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
      if (pathSegments.length >= 2) {
        final type = pathSegments[pathSegments.length - 2];
        final id = pathSegments[pathSegments.length - 1];
        final cut = uri.path.lastIndexOf('/$type/$id');
        return ReferenceComponents(
          baseUrl: '${uri.scheme}://${uri.authority}'
              '${uri.path.substring(0, cut + 1)}',
          resourceType: type,
          id: id,
          version: version,
        );
      }
      return ReferenceComponents();
    }

    // Relative references: "Patient/123"
    final parts = rest.split('/');
    if (parts.length == 2) {
      return ReferenceComponents(
        resourceType: parts[0],
        id: parts[1],
        version: version,
      );
    }

    // ID-only references
    if (!rest.contains('/')) {
      return ReferenceComponents(id: rest, version: version);
    }

    return ReferenceComponents();
  }
}

/// Simple class to hold parsed reference fields.
class ReferenceComponents {
  /// Creates a [ReferenceComponents] with optional parsed parts.
  ReferenceComponents({
    this.resourceType,
    this.id,
    this.version,
    this.baseUrl,
  });

  /// The target resource type (e.g. 'Patient')
  final String? resourceType;

  /// The target resource id
  final String? id;

  /// The version from a versioned reference
  final String? version;

  /// The base URL for absolute references
  final String? baseUrl;
}
