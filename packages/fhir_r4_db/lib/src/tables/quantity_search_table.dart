import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart'
    show QuantitySearchParametersCompanion, numberRange;

/// Quantity Search Parameter Table
class QuantitySearchParameters extends Table {
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

  /// The numeric value part of the quantity
  /// The value as a number, when the element has one (not a Range).
  RealColumn get quantityValue => real().nullable()();

  /// The inclusive low bound of the value's range: a Quantity covers half
  /// a unit of its last significant digit either side (R4B 3.1.1.4.5); a
  /// Range runs from its `low` (null when absent) to its `high`.
  RealColumn get quantityLow => real().nullable()();

  /// The exclusive high bound of the value's range, null for a Range with
  /// no `high`.
  RealColumn get quantityHigh => real().nullable()();

  /// Unit (optional)
  TextColumn get quantityUnit => text().nullable()();

  /// Unit system (optional)
  TextColumn get quantitySystem => text().nullable()();

  /// Coded representation of the unit (optional)
  TextColumn get quantityCode => text().nullable()();

  @override

  /// searchName is part of the key: one FHIR path can back more than one
  /// search parameter — Observation.code serves both `code` and
  /// `combo-code` — and without it the second one collides with the first
  /// on insert, so only one of them could ever be indexed.
  @override
  Set<Column> get primaryKey =>
      {resourceType, id, searchPath, searchName, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract quantity search parameters.
extension QuantitySearchParametersExtension on fhir.FhirBase {
  /// Extracts the quantity search-parameter index rows for this resource,
  /// returning the [QuantitySearchParametersCompanion] entries to persist in
  /// the local Drift store so the resource can be matched by quantity FHIR
  /// searches (value together with unit and system).
  List<QuantitySearchParametersCompanion> toQuantitySearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    final fhirObject = this;
    final searchParameters = <QuantitySearchParametersCompanion>[];
    QuantitySearchParametersCompanion row({
      required double? value,
      required double? low,
      required double? high,
      String? unit,
      String? system,
      String? code,
    }) =>
        QuantitySearchParametersCompanion(
          resourceType: Value(resourceType),
          id: Value(id),
          lastUpdated: Value(lastUpdated),
          searchPath: Value(searchPath),
          searchName: Value(searchName),
          paramIndex:
              paramIndex == null ? const Value.absent() : Value(paramIndex),
          quantityValue: Value(value),
          quantityLow: Value(low),
          quantityHigh: Value(high),
          quantityUnit: Value(unit),
          quantitySystem: Value(system),
          quantityCode: Value(code),
        );

    // R4B 3.1.1.9's cross-map: a quantity parameter searches Quantity (and
    // Age, Count, Distance, Duration, which extend it), Money and Range.
    // Money and Range used to write no row at all.
    switch (fhirObject) {
      case final fhir.Quantity quantity:
        final value = quantity.value;
        if (value?.valueNum == null) return searchParameters;
        final range = numberRange(value!);
        searchParameters.add(
          row(
            value: value.valueNum!.toDouble(),
            low: range.low,
            high: range.high,
            unit: quantity.unit?.valueString,
            system: quantity.system?.valueString,
            code: quantity.code?.valueString,
          ),
        );
      case final fhir.Money money:
        final value = money.value;
        if (value?.valueNum == null) return searchParameters;
        final range = numberRange(value!);
        // The currency is the code, in the ISO 4217 system Money binds to.
        searchParameters.add(
          row(
            value: value.valueNum!.toDouble(),
            low: range.low,
            high: range.high,
            system: 'urn:iso:std:iso:4217',
            code: money.currency?.valueString,
          ),
        );
      case final fhir.Range range:
        // 3.1.1.4.5: a Range is explicitly a range, "the upper or lower
        // bound might not actually be specified"; a missing one is open.
        final lowValue = range.low?.value;
        final highValue = range.high?.value;
        if (lowValue?.valueNum == null && highValue?.valueNum == null) {
          return searchParameters;
        }
        final unitOf = range.low ?? range.high;
        searchParameters.add(
          row(
            value: null,
            low: lowValue?.valueNum == null ? null : numberRange(lowValue!).low,
            high: highValue?.valueNum == null
                ? null
                : numberRange(highValue!).high,
            unit: unitOf?.unit?.valueString,
            system: unitOf?.system?.valueString,
            code: unitOf?.code?.valueString,
          ),
        );
      default:
        break;
    }
    return searchParameters;
  }
}
