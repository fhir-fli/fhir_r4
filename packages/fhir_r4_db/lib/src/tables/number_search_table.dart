import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart'
    show NumberSearchParametersCompanion, implicitRange;

/// Number Search Parameter Table
class NumberSearchParameters extends Table {
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

  /// The value as a number, when the element is a single number.
  RealColumn get numberValue => real().nullable()();

  /// The inclusive low bound of the value's range. R4B 3.1.1.4.5: "Searches
  /// are always performed on values that are implicitly or explicitly a
  /// range"; a decimal covers half a unit of its last significant digit
  /// either side (`2.0` is 1.95–2.05), an integer is a point.
  RealColumn get numberLow => real().nullable()();

  /// The exclusive high bound of the value's range; equal to [numberLow] for
  /// a point.
  RealColumn get numberHigh => real().nullable()();

  @override

  /// searchName is part of the key: one FHIR path can back more than one
  /// search parameter — Observation.code serves both `code` and
  /// `combo-code` — and without it the second one collides with the first
  /// on insert, so only one of them could ever be indexed.
  @override
  Set<Column> get primaryKey =>
      {resourceType, id, searchPath, searchName, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract number search parameters.
extension NumberSearchParametersExtension on fhir.FhirBase {
  /// Extracts the number search-parameter index rows for this resource,
  /// returning the [NumberSearchParametersCompanion] entries to persist in the
  /// local Drift store so the resource can be matched by numeric FHIR searches.
  List<NumberSearchParametersCompanion> toNumberSearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    final fhirObject = this;
    final searchParameters = <NumberSearchParametersCompanion>[];
    if (fhirObject is fhir.FhirNumber && fhirObject.valueNum != null) {
      final range = numberRange(fhirObject);
      searchParameters.add(
        NumberSearchParametersCompanion(
          resourceType: Value(resourceType),
          id: Value(id),
          lastUpdated: Value(lastUpdated),
          searchPath: Value(searchPath),
          searchName: Value(searchName),
          paramIndex:
              paramIndex == null ? const Value.absent() : Value(paramIndex),
          numberValue: Value(fhirObject.valueNum!.toDouble()),
          numberLow: Value(range.low),
          numberHigh: Value(range.high),
        ),
      );
    }
    return searchParameters;
  }
}

/// The range `[low, high)` a stored number covers, R4B 3.1.1.4.5–6.
///
/// A decimal covers half a unit of its last significant digit either side,
/// read from the value as written ([implicitRange]); "when a number search
/// is used against a resource element that stores a simple integer … the
/// significance issues cancel out and searching is based on exact matches",
/// so an integer is a point, `low == high`. A decimal whose written form is
/// not available falls back to a point as well.
({double low, double high}) numberRange(fhir.FhirNumber number) {
  final value = number.valueNum!.toDouble();
  if (number is fhir.FhirInteger ||
      number is fhir.FhirPositiveInt ||
      number is fhir.FhirUnsignedInt) {
    return (low: value, high: value);
  }
  final written = number.valueString;
  return (written == null ? null : implicitRange(written)) ??
      (low: value, high: value);
}
