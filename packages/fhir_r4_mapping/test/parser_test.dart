import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:test/test.dart';

/// Every map in `test/parser_examples`, parsed and written as JSON, equals
/// its reference JSON (the StructureMap the reference Java parser wrote for
/// it), element for element. The reference is read as plain JSON, not
/// through StructureMap.fromJson: four references omit `group.rule` (R4B
/// says 1..*) and one carries a rule name the FHIR id rule rejects, and the
/// comparison is of what each parser wrote. Both sides drop `text`, `meta`
/// and empty arrays (an empty array is the element's absence).
///
/// 29 maps of Grey's ahdis/CDA corpus were deleted on 2025-03-19 because
/// they did not pass; restored 2026-10-06 (14 whose reference is an
/// OperationOutcome live in `test/parser_examples_reference_failed`). A map
/// not yet equal is pinned at its first differing path and the pin fails
/// once the map matches, so the list can only shrink.
Future<void> main() async {
  final parser = await StructureMapParser.create();
  final files = Directory('test/parser_examples')
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.json'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  test('the corpus is complete: 73 map/reference pairs', () {
    expect(files.length, 73);
    for (final f in files) {
      expect(
        File(f.path.replaceAll('.json', '.map')).existsSync(),
        isTrue,
        reason: '${f.path} has no .map',
      );
    }
  });
  for (final file in files) {
    final name = file.path.split('/').last;
    test(name, () {
      final reference = _comparable(
        jsonDecode(file.readAsStringSync()) as Map<String, dynamic>,
      );
      final mapText =
          File(file.path.replaceAll('.json', '.map')).readAsStringSync();
      final throwsPin = _parseThrows[name];
      if (throwsPin != null) {
        expect(
          () => parser.parse(mapText, 'fhirmap'),
          throwsA(anything),
          reason: '$name now parses: remove its pin ($throwsPin)',
        );
        return;
      }
      final ours = _comparable(parser.parse(mapText, 'fhirmap').toJson());
      final equal = const DeepCollectionEquality().equals(reference, ours);
      final diff = _firstDifference(reference, ours, '');
      final pinned = _notYetEqual[name];
      if (pinned != null) {
        expect(equal, isFalse, reason: '$name now matches: remove its pin');
        expect(diff, startsWith(pinned), reason: diff);
        return;
      }
      expect(equal, isTrue, reason: '$name: $diff');
    });
  }
}

/// Maps whose parse throws, with why (the reference parser wrote them).
const _parseThrows = <String, String>{
  // The reference writes rule name "appointment.requestedPeriod.end if not
  // same as start"; StructureMap.group.rule.name is an id, and FhirId
  // rejects spaces (R4B datatypes: id regex [A-Za-z0-9\-\.]{1,64}).
  'OrfQrToBundle.json': 'rule name is not a FHIR id',
};

/// Maps not yet equal to their reference, at the first differing path
/// (measured 2026-10-06). All fourteen differ in documentation or a
/// conceptmap comment only: the ahdis
/// references were compiled by a reference parser whose comment attribution
/// differs from the one the published tutorial examples show (a comment
/// before `group` after `imports`, and a comment between two rules); the
/// published examples are what the parser follows.
const _notYetEqual = <String, String>{
  'BundleToCda.json': '/group/0/documentation',
  'BundleToCdaCh.json': '/group/0/documentation',
  'BundleToCdaChEmed.json': '/group/0/documentation',
  'BundleToCdaChEmedMedicationCardDocument.json': '/group/0/documentation',
  'BundleToCdaChEmedMedicationDispenseDocument.json': '/group/0/documentation',
  'BundleToCdaChEmedMedicationPrescriptionDocument.json':
      '/group/0/documentation',
  'BundleToCdaChEmedMedicationTreatmentPlanDocument.json':
      '/group/0/documentation',
  'BundleToCdaChEmedPharmaceuticalAdviceDocument.json':
      '/group/0/documentation',
  'FullHeader.json':
      '/group/0/rule/0/rule/1/rule/0/rule/0/rule/1/documentation',
  'LabBody.json': '/group/3/rule/16/documentation',
  // A comment after a conceptmap target that the reference did not keep.
  'CDAtoFHIRTypes.json': '/contained/0/group/0/element/0/target/0/comment',
  'CdaToFhirTypes.json': '/contained/0/group/0/element/0/target/0/comment',
  'FHIRtoCDATypes.json': '/contained/0/group/0/element/2/target/0/comment',
  'datatypes.json': '/group/1/rule/4/documentation',
};

Map<String, dynamic> _comparable(Map<String, dynamic> json) {
  final copy = jsonDecode(jsonEncode(json)) as Map<String, dynamic>
    ..remove('text')
    ..remove('meta');
  void strip(Object? j) {
    if (j is Map) {
      j
        ..removeWhere((k, v) => v is List && v.isEmpty)
        ..values.forEach(strip);
    } else if (j is List) {
      j.forEach(strip);
    }
  }

  strip(copy);
  return copy;
}

String? _firstDifference(Object? reference, Object? ours, String at) {
  if (reference is Map && ours is Map) {
    for (final k in reference.keys) {
      if (!ours.containsKey(k)) return '$at/$k: missing in ours';
      final d = _firstDifference(reference[k], ours[k], '$at/$k');
      if (d != null) return d;
    }
    for (final k in ours.keys) {
      if (!reference.containsKey(k)) return '$at/$k: extra in ours';
    }
    return null;
  }
  if (reference is List && ours is List) {
    for (var i = 0; i < reference.length && i < ours.length; i++) {
      final d = _firstDifference(reference[i], ours[i], '$at/$i');
      if (d != null) return d;
    }
    if (reference.length != ours.length) {
      return '$at: length ${reference.length} vs ${ours.length}';
    }
    return null;
  }
  return reference == ours ? null : '$at: $reference vs $ours';
}
