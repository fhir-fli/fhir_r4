import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart'
    show StringSearchParametersCompanion;

/// String Search Parameter Table
class StringSearchParameters extends Table {
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

  /// Normalized string value for case- and accent-insensitive searches.
  ///
  /// R4 3.1.1.4.8: a string search "is insensitive to casing and included
  /// combining characters, like accents or other diacritical marks", and by
  /// default "a field matches ... if the value of the field equals or starts
  /// with the supplied parameter value, after both have been normalized by
  /// case and combining characters".
  TextColumn get stringValue => text()();

  /// The value exactly as it was written, for `:exact`.
  ///
  /// R4 3.1.1.4.4: ":exact returns results that match the entire supplied
  /// parameter, including casing and combining characters." That is
  /// unanswerable from the normalized column, because normalizing destroys the
  /// casing and the accents it has to compare. Both are needed, which is what
  /// HAPI does: SP_VALUE_NORMALIZED beside SP_VALUE_EXACT.
  ///
  /// Not nullable: the upgrade rebuilds this index from the stored resources,
  /// so there is no row without one. A nullable column would have meant
  /// `:exact` silently ignoring every record written before the upgrade,
  /// which is a wrong answer rather than an error.
  TextColumn get exactValue => text().withDefault(const Constant(''))();

  @override

  /// searchName is part of the key: one FHIR path can back more than one
  /// search parameter — Observation.code serves both `code` and
  /// `combo-code` — and without it the second one collides with the first
  /// on insert, so only one of them could ever be indexed.
  @override
  Set<Column> get primaryKey =>
      {resourceType, id, searchPath, searchName, paramIndex};
}

/// Extension on [fhir.FhirBase] to extract string search parameters.
extension StringSearchParametersExtension on fhir.FhirBase {
  /// Extracts the string search-parameter index rows for this resource,
  /// returning the [StringSearchParametersCompanion] entries to persist in the
  /// local Drift store so the resource can be matched by string FHIR searches.
  List<StringSearchParametersCompanion> toStringSearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
  }) {
    final results = <StringSearchParametersCompanion>[];

    /// One row for [value], plus, for a name part, one row per word in it.
    ///
    /// R4B 3.1.1.4.8: "servers should search the parts of a family name
    /// independently. E.g. searching either "Carreno" or "Quinones" should
    /// match a family name of "Carreno Quinones"". A word row carries the
    /// word as its search value and the WHOLE element as its exact value,
    /// so the default starts-with search finds a name by any of its words
    /// and `:exact` still needs the entire value. Only name parts are split:
    /// an arbitrary string (`Observation.value`) keeps starts-with on the
    /// whole, which is what the section defines for strings in general.
    void addRows(String value, int index, {required bool nameParts}) {
      final words = nameParts
          ? _normalizeString(value).split(' ').where((w) => w.isNotEmpty)
          : const <String>[];
      final searchValues = [
        _normalizeString(value),
        ...words.skip(1),
      ];
      for (final (w, searchValue) in searchValues.indexed) {
        results.add(
          StringSearchParametersCompanion(
            resourceType: Value(resourceType),
            id: Value(id),
            lastUpdated: Value(lastUpdated),
            searchPath: Value(searchPath),
            searchName: Value(searchName),
            paramIndex: Value(index * 100 + w),
            stringValue: Value(searchValue),
            exactValue: Value(value),
          ),
        );
      }
    }

    // `family`, `given`, `phonetic`: a FhirString that is a name part, told
    // apart by its path. Structural, so case-sensitive on purpose.
    final isNamePart = RegExp(r'\.name\.(family|given|prefix|suffix|text)$')
        .hasMatch(searchPath);

    switch (this) {
      case final fhir.FhirString stringValue:
        if (stringValue.valueString != null) {
          addRows(
            stringValue.valueString!,
            paramIndex ?? 0,
            nameParts: isNamePart,
          );
        }
        return results;

      case final fhir.HumanName humanName:
        final nameParts = <String>[];

        if (humanName.family?.valueString != null) {
          nameParts.add(humanName.family!.valueString!);
        }

        if (humanName.given != null) {
          for (final given in humanName.given!) {
            if (given.valueString != null) {
              nameParts.add(given.valueString!);
            }
          }
        }

        if (humanName.prefix != null) {
          for (final prefix in humanName.prefix!) {
            if (prefix.valueString != null) {
              nameParts.add(prefix.valueString!);
            }
          }
        }

        if (humanName.suffix != null) {
          for (final suffix in humanName.suffix!) {
            if (suffix.valueString != null) {
              nameParts.add(suffix.valueString!);
            }
          }
        }

        if (humanName.text?.valueString != null) {
          nameParts.add(humanName.text!.valueString!);
        }

        for (var i = 0; i < nameParts.length; i++) {
          addRows(nameParts[i], (paramIndex ?? 0) * 100 + i, nameParts: true);
        }
        return results;

      case final fhir.Address address:
        final addressParts = <String>[];

        if (address.line != null) {
          for (final line in address.line!) {
            if (line.valueString != null) {
              addressParts.add(line.valueString!);
            }
          }
        }

        if (address.city?.valueString != null) {
          addressParts.add(address.city!.valueString!);
        }

        if (address.district?.valueString != null) {
          addressParts.add(address.district!.valueString!);
        }

        if (address.state?.valueString != null) {
          addressParts.add(address.state!.valueString!);
        }

        if (address.postalCode?.valueString != null) {
          addressParts.add(address.postalCode!.valueString!);
        }

        if (address.country?.valueString != null) {
          addressParts.add(address.country!.valueString!);
        }

        if (address.text?.valueString != null) {
          addressParts.add(address.text!.valueString!);
        }

        for (var i = 0; i < addressParts.length; i++) {
          results.add(
            StringSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              searchName: Value(searchName),
              paramIndex: Value(paramIndex == null ? i : paramIndex * 100 + i),
              stringValue: Value(_normalizeString(addressParts[i])),
              exactValue: Value(addressParts[i]),
            ),
          );
        }
        return results;

      case final fhir.ContactPoint contactPoint:
        if (contactPoint.value?.valueString != null) {
          results.add(
            StringSearchParametersCompanion(
              resourceType: Value(resourceType),
              id: Value(id),
              lastUpdated: Value(lastUpdated),
              searchPath: Value(searchPath),
              searchName: Value(searchName),
              paramIndex:
                  paramIndex == null ? const Value.absent() : Value(paramIndex),
              stringValue:
                  Value(_normalizeString(contactPoint.value!.valueString!)),
              exactValue: Value(contactPoint.value!.valueString!),
            ),
          );
        }
        return results;

      default:
        return [];
    }
  }

  /// Normalize string for case-insensitive and accent-insensitive searching.
  /// Case- and accent-folded, for the default and `:contains` searches.
  ///
  /// R4 3.1.1.4.8 requires insensitivity to "casing and included combining
  /// characters, like accents or other diacritical marks". Lower-casing alone
  /// left the accents in, so `family=Munoz` could not find `Mu\u00f1oz`.
  ///
  /// Decomposition is done from a table rather than by a Unicode library
  /// because Dart core has no NFD: the alternative was a dependency for a
  /// dozen characters. It covers Latin-1 and Latin Extended-A, which is what
  /// European names are written in. A script outside that range is left
  /// alone, which is the same behaviour as before and no worse.
  String _normalizeString(String input) => normalizeSearchString(input);
}

/// Folds a string for the default and `:contains` searches, R4B 3.1.1.4.8:
/// "This search is insensitive to casing and included combining characters,
/// like accents or other diacritical marks. Punctuation and non-significant
/// whitespace (e.g. repeated space characters, tab vs space) should also be
/// ignored."
///
/// So: lower-cased; precomposed accented letters folded to their base by
/// the table below; combining marks (U+0300–U+036F, the diacritics a
/// decomposed `é` is written with) dropped; punctuation turned to a space;
/// runs of whitespace collapsed to one space and the ends trimmed. Public because
/// BOTH sides have to fold identically: the value going into the index and
/// the value coming in on a query. Fold one and not the other and an
/// accented name becomes unfindable.
String normalizeSearchString(String input) {
  final buffer = StringBuffer();
  for (final rune in input.toLowerCase().runes) {
    if (rune >= 0x300 && rune <= 0x36F) {
      continue;
    }
    buffer.write(_foldAccents[rune] ?? String.fromCharCode(rune));
  }
  // Punctuation becomes a space, not nothing, so `Jose-Maria` and
  // `Jose Maria` fold alike and a name's words stay separable; the section
  // leaves a phone number's dashes to the server's discretion ("a server
  // might remove all spaces and - characters"), and this treats them the
  // same as any other punctuation.
  return buffer
      .toString()
      .replaceAll(_punctuation, ' ')
      .replaceAll(_whitespaceRun, ' ')
      .trim();
}

/// Unicode punctuation. Structural, so case-sensitive on purpose.
final RegExp _punctuation = RegExp(r'\p{P}', unicode: true);

/// One or more whitespace characters of any kind.
final RegExp _whitespaceRun = RegExp(r'\s+');

/// Lower-case accented letters mapped to their base letter.
///
/// Built from the Latin-1 Supplement and Latin Extended-A blocks. Only the
/// lower-case forms are needed because the input is lower-cased first.
const _foldAccents = <int, String>{
  0xE0: 'a',
  0xE1: 'a',
  0xE2: 'a',
  0xE3: 'a',
  0xE4: 'a',
  0xE5: 'a',
  0xE6: 'ae',
  0xE7: 'c',
  0xE8: 'e',
  0xE9: 'e',
  0xEA: 'e',
  0xEB: 'e',
  0xEC: 'i',
  0xED: 'i',
  0xEE: 'i',
  0xEF: 'i',
  0xF0: 'd',
  0xF1: 'n',
  0xF2: 'o',
  0xF3: 'o',
  0xF4: 'o',
  0xF5: 'o',
  0xF6: 'o',
  0xF8: 'o',
  0xF9: 'u',
  0xFA: 'u',
  0xFB: 'u',
  0xFC: 'u',
  0xFD: 'y',
  0xFF: 'y',
  0xFE: 'th',
  0xDF: 'ss',
  0x101: 'a',
  0x103: 'a',
  0x105: 'a',
  0x107: 'c',
  0x109: 'c',
  0x10B: 'c',
  0x10D: 'c',
  0x10F: 'd',
  0x111: 'd',
  0x113: 'e',
  0x115: 'e',
  0x117: 'e',
  0x119: 'e',
  0x11B: 'e',
  0x11D: 'g',
  0x11F: 'g',
  0x121: 'g',
  0x123: 'g',
  0x125: 'h',
  0x127: 'h',
  0x129: 'i',
  0x12B: 'i',
  0x12D: 'i',
  0x12F: 'i',
  0x131: 'i',
  0x133: 'ij',
  0x135: 'j',
  0x137: 'k',
  0x13A: 'l',
  0x13C: 'l',
  0x13E: 'l',
  0x140: 'l',
  0x142: 'l',
  0x144: 'n',
  0x146: 'n',
  0x148: 'n',
  0x14B: 'n',
  0x14D: 'o',
  0x14F: 'o',
  0x151: 'o',
  0x153: 'oe',
  0x155: 'r',
  0x157: 'r',
  0x159: 'r',
  0x15B: 's',
  0x15D: 's',
  0x15F: 's',
  0x161: 's',
  0x163: 't',
  0x165: 't',
  0x167: 't',
  0x169: 'u',
  0x16B: 'u',
  0x16D: 'u',
  0x16F: 'u',
  0x171: 'u',
  0x173: 'u',
  0x175: 'w',
  0x177: 'y',
  0x17A: 'z',
  0x17C: 'z',
  0x17E: 'z',
};
