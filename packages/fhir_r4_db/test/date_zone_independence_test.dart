import 'dart:io';

import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:test/test.dart';

/// fhirant REVIEW-2026-09-17 Q1. A date with no zone was indexed as an
/// instant in the process's local zone, and searched the same way, so a
/// store indexed under one zone and searched under another lost equality
/// matches: `Patient?birthdate=1990-01-15` matched 1 under
/// TZ=America/New_York and 0 under TZ=Asia/Tokyo. A phone that travels, or
/// whose zone setting changes, is exactly that.
///
/// R4B search.html 3.1.1.4.7, read whole 2026-09-17, verbatim: "Where both
/// search parameters and resource element date times do not have time
/// zones, the servers local time zone should be assumed". Any one zone on
/// both sides gives the same answer to that comparison; the store uses UTC,
/// which does not move.
///
/// The store is written here and searched by a child process started in
/// a different zone (test/support/zone_probe.dart), since a Dart process's
/// local zone is fixed at start.
void main() {
  // The children are `dart run`. Under `flutter test` this process is
  // `flutter_tester`, which takes `run <file>` as its own arguments and
  // never exits: the hang behind this test's 15-minute CI timeouts
  // (2026-09-18; reproduced 2026-10-15, killed at 180 s, while `dart test`
  // passed in 26 s). `flutter test` sets FLUTTER_ROOT; the SDK's own `dart`
  // is under it (not `bin/dart`, a wrapper that takes Flutter's lock).
  final dart = () {
    final self = Platform.resolvedExecutable;
    final name = self.split(Platform.pathSeparator).last;
    if (name == 'dart' || name == 'dart.exe') return self;
    final root = Platform.environment['FLUTTER_ROOT'];
    if (root == null) {
      throw StateError('running under $self with no FLUTTER_ROOT');
    }
    final sep = Platform.pathSeparator;
    final exe = Platform.isWindows ? 'dart.exe' : 'dart';
    return [root, 'bin', 'cache', 'dart-sdk', 'bin', exe].join(sep);
  }();

  late Directory dir;

  setUp(() async {
    dir = await Directory.systemTemp.createTemp('fhir_r4_db_zone_');
  });
  tearDown(() => dir.delete(recursive: true));

  Future<Map<String, String>> probe(String tz) async {
    final out = File('${dir.path}/${tz.replaceAll('/', '_')}.txt');
    final result = await Process.run(
      dart,
      ['run', 'test/support/zone_probe.dart'],
      environment: {
        'TZ': tz,
        'ZONE_PROBE_DB': '${dir.path}/store.db',
        'ZONE_PROBE_OUT': out.path,
      },
    );
    expect(result.exitCode, 0, reason: '${result.stdout}\n${result.stderr}');
    return {
      for (final line in out.readAsLinesSync())
        line.split('=').first: line.split('=').last,
    };
  }

  test(
    'a zone-less date matches the same under every zone',
    () async {
      // Written under a third zone, so neither reader shares it.
      final writer = await Process.run(
        dart,
        ['run', 'test/support/zone_writer.dart'],
        environment: {
          'TZ': 'America/New_York',
          'ZONE_PROBE_DB': '${dir.path}/store.db',
        },
      );
      expect(writer.exitCode, 0, reason: '${writer.stdout}\n${writer.stderr}');

      // One reader, in a zone 14 hours from the writer's.
      final tokyo = await probe('Asia/Tokyo');
      expect(tokyo['birthdate-eq'], '1', reason: '$tokyo');
      expect(tokyo['birthdate-day-before'], '0', reason: '$tokyo');
      expect(tokyo['zoneless-eq'], '1', reason: '$tokyo');
      expect(tokyo['zoneless-day'], '2', reason: '$tokyo');
      // A value with its own zone is an instant wherever it is read.
      expect(tokyo['zoned-eq'], '1', reason: '$tokyo');
    },
    tags: ['zone'],
    timeout: const Timeout(Duration(minutes: 15)),
  );

  test('the parser puts a zone-less value on the UTC clock', () {
    final day = FhirDateValue.tryParse('1990-01-15')!;
    expect(day.low, DateTime.utc(1990, 1, 15));
    expect(day.high, DateTime.utc(1990, 1, 16));
    expect(day.low.isUtc, isTrue);
    final minute = FhirDateValue.tryParse('2013-01-14T10:00')!;
    expect(minute.low, DateTime.utc(2013, 1, 14, 10));
    final zoned = FhirDateValue.tryParse('2013-01-14T10:00:00+02:00')!;
    expect(zoned.low, DateTime.utc(2013, 1, 14, 8));
  });
}
