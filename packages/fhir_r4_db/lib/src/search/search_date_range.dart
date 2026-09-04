import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart' show dateTimeRange;

/// R4B §3.1.1.4.7's date grammar, checked whole: `yyyy-mm-ddThh:mm:ss
/// [Z|(+|-)hh:mm]`, "populated from the left", minutes present whenever an
/// hour is, seconds optional, fraction optional.
///
/// Structural, so case-sensitive on purpose: `T` and `Z` are the grammar's
/// own letters.
final RegExp _searchDate = RegExp(
  r'^\d{4}(-\d{2}(-\d{2}(T\d{2}:\d{2}(:\d{2}(\.\d+)?)?(Z|[+-]\d{2}:\d{2})?)?)?)?$',
);

/// The range `[low, high)` a date SEARCH value covers, or null when it is not
/// a search date.
///
/// The value is parsed as a FHIR dateTime and covers one unit of its own
/// precision, exactly as a stored value does ([dateTimeRange]): `2013` is
/// the year, `2013-01-14` the day. §3.1.1.4.7: "When the date parameter is
/// not fully specified, matches against it are based on the behavior of
/// intervals". A value with no offset is in the local zone, and "Where both
/// search parameters and resource element date times do not have time
/// zones, the servers local time zone should be assumed".
///
/// The grammar is checked before parsing because the primitive parser is
/// lenient at the tail: `2013-1-4` parsed as the year 2013, and would have
/// answered a different search than the one asked.
({DateTime low, DateTime high})? searchDateRange(String value) {
  final trimmed = value.trim();
  if (!_searchDate.hasMatch(trimmed)) {
    return null;
  }
  final parsed = fhir.FhirDateTime.tryParse(trimmed);
  if (parsed == null) {
    return null;
  }
  return dateTimeRange(parsed);
}
