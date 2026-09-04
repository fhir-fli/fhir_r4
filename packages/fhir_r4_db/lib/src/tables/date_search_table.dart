import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart' show DateSearchParametersCompanion;

/// Date Search Parameter Table.
///
/// Every row is a RANGE, `[dateValue, dateValueEnd)`, because that is what
/// R4B search §3.1.1.4.7 compares: "the date 2013-01-10 specifies all the
/// time from 00:00 on 10-Jan 2013 to immediately before 00:00 on 11-Jan
/// 2013"; a Period is "explicit, though the upper or lower bound might not
/// actually be specified in resources"; and for a Timing "only the outer
/// limits matter". A missing lower bound "is 'less than' any actual date",
/// a missing upper bound "'greater than' any actual date" — those are the
/// nulls.
class DateSearchParameters extends Table {
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

  /// Original date/dateTime/instant/Period/Timing value, as JSON text for the
  /// complex types, for anyone who needs the value as written.
  TextColumn get dateString => text()();

  /// The inclusive start of the value's range; null for a Period with no
  /// start (before any date).
  DateTimeColumn get dateValue => dateTime().nullable()();

  /// The EXCLUSIVE end of the value's range: the first instant after it. A
  /// date `2013-01-10` ends at `2013-01-11T00:00`; a dateTime to the second
  /// ends one second later. Null for a Period with no end (ongoing), which
  /// is after any date.
  DateTimeColumn get dateValueEnd => dateTime().nullable()();

  @override

  /// searchName is part of the key: one FHIR path can back more than one
  /// search parameter — Observation.code serves both `code` and
  /// `combo-code` — and without it the second one collides with the first
  /// on insert, so only one of them could ever be indexed.
  @override
  Set<Column> get primaryKey =>
      {resourceType, id, searchPath, searchName, paramIndex};
}

/// The half-open range `[low, high)` a date-like value covers, per R4B
/// search §3.1.1.4.7.
///
/// A date or dateTime covers one unit of its own precision: `2013` is the
/// year, `2013-01` the month, `2013-01-10` the day, `…T10:00` the minute,
/// `…T10:00:00` the second. Sub-second precision is below what the column
/// stores (Drift keeps a DateTime as whole seconds), so an instant with
/// milliseconds covers its second; the specification's "effective width of
/// 0" for an instant is not representable and a one-second range is the
/// nearest the storage can say.
///
/// [low] is the instant from `valueDateTime`, which honours the value's
/// offset; [high] is the same instant plus the unit, computed in the same
/// zone so that a year or a month is a calendar year or month.
({DateTime low, DateTime high})? dateTimeRange(fhir.FhirDateTimeBase value) {
  final low = value.valueDateTime;
  if (low == null) {
    return null;
  }
  DateTime step(DateTime t) {
    final make = t.isUtc ? DateTime.utc : DateTime.new;
    if (value.yearsPrecision) {
      return make(t.year + 1);
    }
    if (value.monthsPrecision) {
      return make(t.year, t.month + 1);
    }
    if (value.daysPrecision) {
      return make(t.year, t.month, t.day + 1);
    }
    if (value.hoursPrecision) {
      return t.add(const Duration(hours: 1));
    }
    if (value.minutesPrecision) {
      return t.add(const Duration(minutes: 1));
    }
    return t.add(const Duration(seconds: 1));
  }

  return (low: low, high: step(low));
}

/// Extension on [fhir.FhirBase] to extract date search parameters.
extension DateSearchParametersExtension on fhir.FhirBase {
  /// Extracts the date search-parameter index rows for this resource,
  /// returning the [DateSearchParametersCompanion] entries to persist in the
  /// local Drift store so the resource can be matched by date, dateTime,
  /// instant, Period and Timing FHIR searches.
  List<DateSearchParametersCompanion> toDateSearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    DateSearchParametersCompanion row(
      String written,
      DateTime? low,
      DateTime? high,
    ) =>
        DateSearchParametersCompanion(
          resourceType: Value(resourceType),
          id: Value(id),
          lastUpdated: Value(lastUpdated),
          searchPath: Value(searchPath),
          searchName: Value(searchName),
          paramIndex:
              paramIndex == null ? const Value.absent() : Value(paramIndex),
          dateString: Value(written),
          dateValue: Value(low),
          dateValueEnd: Value(high),
        );

    switch (this) {
      case final fhir.FhirDateTimeBase primitive:
        // date, dateTime and instant: one unit of the value's precision.
        final written = primitive.valueString;
        final range = dateTimeRange(primitive);
        if (written == null || range == null) {
          return [];
        }
        return [row(written, range.low, range.high)];

      case final fhir.Period period:
        // §3.1.1.4.7: "Explicit, though the upper or lower bound might not
        // actually be specified in resources." Period.end is inclusive and
        // carries its own precision, so the range runs to the END of the
        // end value's own range: an end of 2013-01-10 covers all of that
        // day. A missing start is before any date and a missing end is
        // ongoing; both are null here.
        final start =
            period.start == null ? null : dateTimeRange(period.start!);
        final end = period.end == null ? null : dateTimeRange(period.end!);
        if (start == null && end == null) {
          return [];
        }
        return [row(_json(period), start?.low, end?.high)];

      case final fhir.Timing timing:
        // §3.1.1.4.7: "the specified scheduling details are ignored and
        // only the outer limits matter. For instance, a schedule that
        // specifies every second day between 31-Jan 2013 and 24-Mar 2013
        // includes 1-Feb 2013". The outer limits are the earliest and
        // latest of the events and the bounds period. A bounds Duration or
        // Range has no anchor in time and contributes nothing.
        DateTime? low;
        DateTime? high;
        var openStart = false;
        var openEnd = false;
        void widen(DateTime? l, DateTime? h) {
          if (l == null) {
            openStart = true;
          } else if (low == null || l.isBefore(low!)) {
            low = l;
          }
          if (h == null) {
            openEnd = true;
          } else if (high == null || h.isAfter(high!)) {
            high = h;
          }
        }

        for (final event in timing.event ?? <fhir.FhirDateTime>[]) {
          final range = dateTimeRange(event);
          if (range != null) {
            widen(range.low, range.high);
          }
        }
        final bounds = timing.repeat?.boundsPeriod;
        if (bounds != null && (bounds.start != null || bounds.end != null)) {
          widen(
            bounds.start == null ? null : dateTimeRange(bounds.start!)?.low,
            bounds.end == null ? null : dateTimeRange(bounds.end!)?.high,
          );
        }
        if (low == null && high == null && !openStart && !openEnd) {
          return [];
        }
        return [
          row(_json(timing), openStart ? null : low, openEnd ? null : high),
        ];

      default:
        return [];
    }
  }

  String _json(fhir.FhirBase value) => value.toJsonString();
}
