import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:test/test.dart';

/// See test/parser_examples_reference_failed/README.md. Each map's
/// `<name>.reference-structural.json` was written by the HL7 validator
/// (validator_cli 7.0.0, `compile`, tool/compile_structural_references.sh,
/// 2026-10-07); our parse must equal it element for element, except:
///
/// - `status`, `title`, `description`, `documentation`: the validator's
///   compile writes none of them (R4B StructureMap.status is 1..1, so the
///   reference is incomplete there, not our parse);
/// - `id`: R4B gives no rule for it and the publisher's own examples use
///   two conventions (46 of the 73 parser_examples references take the
///   url's last segment, 26 the name, one is a typo), so it is a tool's
///   choice;
/// - `typeMode` where the reference omits it: R4B
///   StructureMap.group.typeMode is 1..1 (`none | types | type-and-types`,
///   StructureDefinition-StructureMap.json, read 2026-10-07); validator
///   7.0.0 writes its R5 shape, which drops `none`. Ours writes `none`.
Future<void> main() async {
  final parser = await StructureMapParser.create();
  final dir = Directory('test/parser_examples_reference_failed');
  final maps = dir
      .listSync()
      .whereType<File>()
      .where((f) => f.path.endsWith('.map'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  test('thirteen maps, each with a structural reference', () {
    expect(maps.length, 13);
    for (final map in maps) {
      expect(
        File(map.path.replaceAll('.map', '.reference-structural.json'))
            .existsSync(),
        isTrue,
        reason: map.path,
      );
    }
  });
  for (final map in maps) {
    final name = map.path.split('/').last.replaceAll('.map', '');
    test(name, () {
      final reference = _comparable(
        jsonDecode(
          File('${dir.path}/$name.reference-structural.json')
              .readAsStringSync(),
        ) as Map<String, dynamic>,
      );
      final ours = _comparable(
        parser.parse(map.readAsStringSync(), 'fhirmap').toJson(),
        dropTypeModeNone: true,
      );
      final equal = const DeepCollectionEquality().equals(reference, ours);
      expect(
        equal,
        isTrue,
        reason: '$name: ${_firstDifference(reference, ours, '')}',
      );
    });
  }
}

const _notWritten = {
  'text',
  'meta',
  'id',
  'status',
  'title',
  'description',
  'documentation',
};

Map<String, dynamic> _comparable(
  Map<String, dynamic> json, {
  bool dropTypeModeNone = false,
}) {
  final copy = jsonDecode(jsonEncode(json)) as Map<String, dynamic>;
  void strip(Object? j) {
    if (j is Map) {
      j
        ..removeWhere(
          (k, v) =>
              _notWritten.contains(k) ||
              (v is List && v.isEmpty) ||
              (dropTypeModeNone && k == 'typeMode' && v == 'none'),
        )
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
