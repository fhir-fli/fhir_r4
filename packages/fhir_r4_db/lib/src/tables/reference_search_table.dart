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
  DateTimeColumn get lastUpdated => dateTime()();

  /// FHIRPath expression identifying the source field
  TextColumn get searchPath => text()();

  /// HTTP search parameter name (e.g., 'monitoring-program-name')
  TextColumn get searchName => text().withDefault(const Constant(''))();

  /// Index for multiple values from the same path
  IntColumn get paramIndex => integer()();

  /// Original reference string as it appears in the resource
  TextColumn get referenceValue => text()();

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
  Set<Column> get primaryKey => {resourceType, id, searchPath, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract reference search parameters.
extension ReferenceSearchParametersExtension on fhir.FhirBase {
  List<ReferenceSearchParametersCompanion> toReferenceSearchParameter(
    String resourceType,
    String id,
    DateTime lastUpdated,
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
                : Value(ref.reference!.valueString!),
            referenceResourceType: referenceComponents.resourceType == null
                ? const Value.absent()
                : Value(referenceComponents.resourceType!),
            referenceIdPart: referenceComponents.id == null
                ? const Value.absent()
                : Value(referenceComponents.id!),
            referenceVersion: referenceComponents.version == null
                ? const Value.absent()
                : Value(referenceComponents.version!),
            referenceBaseUrl: referenceComponents.baseUrl == null
                ? const Value.absent()
                : Value(referenceComponents.baseUrl!),
            identifierSystem: ref.identifier?.system?.valueString == null
                ? const Value.absent()
                : Value(ref.identifier!.system!.valueString!),
            identifierValue: ref.identifier?.value?.valueString == null
                ? const Value.absent()
                : Value(ref.identifier!.value!.valueString!),
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
                : Value(canonical.valueString!),
            referenceResourceType: referenceComponents.resourceType == null
                ? const Value.absent()
                : Value(referenceComponents.resourceType!),
            referenceIdPart: referenceComponents.id == null
                ? const Value.absent()
                : Value(referenceComponents.id!),
            referenceVersion: referenceComponents.version == null
                ? const Value.absent()
                : Value(referenceComponents.version!),
            referenceBaseUrl: referenceComponents.baseUrl == null
                ? const Value.absent()
                : Value(referenceComponents.baseUrl!),
            identifierSystem: const Value.absent(),
            identifierValue: const Value.absent(),
          ),
        );

      default:
        return results;
    }

    return results;
  }

  /// Attempts to parse a reference/canonical string into sub-components.
  ReferenceComponents _parseReference(String? referenceString) {
    if (referenceString == null || referenceString.isEmpty) {
      return ReferenceComponents();
    }

    // Absolute URLs: "http://example.org/Patient/123"
    if (referenceString.startsWith('http')) {
      final uri = Uri.parse(referenceString);
      final pathSegments = uri.pathSegments;
      if (pathSegments.length >= 2) {
        return ReferenceComponents(
          baseUrl:
              '${uri.scheme}://${uri.authority}${uri.path.substring(0, uri.path.indexOf(pathSegments[pathSegments.length - 2]))}',
          resourceType: pathSegments[pathSegments.length - 2],
          id: pathSegments[pathSegments.length - 1],
        );
      }
    }

    // Versioned references: "Patient/123/_history/1"
    if (referenceString.contains('/_history/')) {
      final parts = referenceString.split('/_history/');
      final version = parts.length > 1 ? parts[1] : null;
      final resourceParts = parts[0].split('/');
      if (resourceParts.length >= 2) {
        return ReferenceComponents(
          resourceType: resourceParts[resourceParts.length - 2],
          id: resourceParts[resourceParts.length - 1],
          version: version,
        );
      }
    }

    // Simple references: "Patient/123"
    final parts = referenceString.split('/');
    if (parts.length == 2) {
      return ReferenceComponents(
        resourceType: parts[0],
        id: parts[1],
      );
    }

    // ID-only references
    if (!referenceString.contains('/')) {
      return ReferenceComponents(
        id: referenceString,
      );
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
