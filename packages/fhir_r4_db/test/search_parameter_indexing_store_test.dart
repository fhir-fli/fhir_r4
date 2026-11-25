import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';
import 'package:sqlite3/sqlite3.dart' show Database;
import 'package:test/test.dart';

/// The store's background re-indexing kept in the store file
/// (fhir_db `SearchParameterIndexing`): every connection reads one record,
/// a run cut off with its process is taken up by the next connection, and
/// no two runs build at once. Before this the record was in each
/// connection's memory: an app's screens could not see a re-index its
/// background service ran, and one Android ended partway was lost.
void main() {
  late Directory dir;
  late File file;
  final open = <FhirDb>[];

  /// A connection as an app opens one: on its own isolate, write-ahead
  /// log, and a wait for the other connection's write rather than
  /// "database is locked" (tool/probe_open_while_writing.dart).
  FhirDb connect() {
    final db = FhirDb(
      NativeDatabase.createInBackground(file, setup: _appConnection),
    );
    open.add(db);
    return db;
  }

  setUp(() async {
    dir = await Directory.systemTemp.createTemp('fhir_r4_db_sp_store_');
    file = File('${dir.path}/s.db');
  });

  tearDown(() async {
    for (final db in open) {
      await db.searchParameterIndexing.idle;
      await db.close();
    }
    open.clear();
    await dir.delete(recursive: true);
  });

  fhir.SearchParameter parameter(String code, String expression) =>
      fhir.SearchParameter.fromJson({
        'resourceType': 'SearchParameter',
        'id': code,
        'url': 'http://example.org/SearchParameter/$code',
        'name': code,
        'status': 'active',
        'description': 'test',
        'code': code,
        'base': ['Patient'],
        'type': 'token',
        'expression': expression,
      });

  final sex = parameter('sex', 'Patient.gender');
  final living = parameter('living', 'Patient.deceased');

  Future<void> storePatients(FhirDb db, int n) => db.fhirDao.saveResources([
        for (var i = 0; i < n; i++)
          fhir.Patient.fromJson({
            'resourceType': 'Patient',
            'id': 'p$i',
            'gender': i.isEven ? 'female' : 'male',
            'deceasedBoolean': false,
          }),
      ]);

  Future<int> count(FhirDb db, String code, String value) async =>
      (await db.fhirDao.search(
        resourceType: fhir.R4ResourceType.Patient,
        searchParameters: {
          code: [value],
        },
      ))
          .length;

  Future<Map<String, SearchParameterIndexStatus>> status(FhirDb db) async => {
        for (final s in await db.searchParameterIndexing.status()) s.code: s,
      };

  /// Resources the run under way has read, by the row it writes per
  /// resource (white-box: `FhirDb._readMark`).
  Future<int> marked(FhirDb db) async => (await db
          .customSelect(
            'SELECT count(*) AS n FROM uri_search_parameters '
            "WHERE search_name = ' read '",
          )
          .getSingle())
      .read<int>('n');

  test('another connection sees the run while it runs, and how it ended',
      () async {
    final server = connect();
    final screen = connect();
    await storePatients(server, 3000);
    expect(await status(screen), isEmpty);

    await server.fhirDao.saveResource(sex);
    var sawRunning = false;
    while (true) {
      final s = (await status(screen))['sex'];
      if (s?.state == SearchParameterIndexState.running) {
        sawRunning = true;
        expect(s!.runningSince, isNotNull);
        expect(s.interrupted, isFalse);
      }
      if (s?.state == SearchParameterIndexState.done) break;
      await Future<void>.delayed(const Duration(milliseconds: 5));
    }
    expect(sawRunning, isTrue, reason: 'the run ended before a read');
    final done = (await status(screen))['sex']!;
    expect(done.resourcesRead, 3000);
    expect(done.error, isNull);
    expect(await count(screen, 'sex', 'female'), 1500);
  });

  test(
    'a run whose process was killed partway is finished by the next',
    () async {
      const n = 6000;
      final first = connect();
      await storePatients(first, n);
      await first.close();
      open.remove(first);

      final child = await Process.start(Platform.resolvedExecutable, [
        'run',
        'test/support/upload_search_parameter.dart',
        file.path,
      ]);
      addTearDown(() => child.kill(ProcessSignal.sigkill));
      final childOut = StringBuffer();
      final childClock = Stopwatch()..start();
      final uploaded = Completer<void>();
      child.stdout.transform(utf8.decoder).listen((s) {
        childOut.write(s);
        if (childOut.toString().contains('uploaded') && !uploaded.isCompleted) {
          uploaded.complete();
        }
      });
      child.stderr.transform(utf8.decoder).listen(childOut.write);
      await uploaded.future.timeout(
        const Duration(minutes: 10),
        onTimeout: () => fail(
          'the child printed no "uploaded" in '
          '${childClock.elapsed.inSeconds} s: $childOut',
        ),
      );
      // How long a `dart run` of the child takes here: 12.6 s on the
      // development machine; on CI it ran past the 4 minutes this test was
      // first given (2026-11-25).
      // In the log whether the test passes: CI's time is the number wanted.
      // ignore: avoid_print
      print('child uploaded after ${childClock.elapsed.inSeconds} s');

      // Watched through a connection that runs nothing itself.
      final watcher = connect()..reindexOnSearchParameterChange = false;
      while (await marked(watcher) == 0) {
        await Future<void>.delayed(const Duration(milliseconds: 2));
      }
      child.kill(ProcessSignal.sigkill);
      await child.exitCode;
      final cut = (await status(watcher))['sex']!;
      expect(
        cut.state,
        isNot(SearchParameterIndexState.done),
        reason: '$childOut',
      );
      expect(
        await marked(watcher),
        lessThan(n),
        reason: 'killed after the last page',
      );

      // The lease the killed run held goes stale; then the next connection
      // to use the store takes the run up.
      final next = connect();
      next.searchParameterIndexing.staleAfter = const Duration(seconds: 1);
      watcher.searchParameterIndexing.staleAfter = const Duration(seconds: 1);
      await Future<void>.delayed(const Duration(milliseconds: 1100));
      final stopped = (await status(watcher))['sex']!;
      expect(stopped.state, SearchParameterIndexState.waiting);
      expect(stopped.interrupted, isTrue);

      // Its first search takes the run up; nothing else is called.
      expect(await count(next, 'sex', 'female'), lessThan(n ~/ 2));
      final deadline = DateTime.now().add(const Duration(minutes: 1));
      while ((await status(watcher))['sex']!.state !=
          SearchParameterIndexState.done) {
        expect(
          DateTime.now().isBefore(deadline),
          isTrue,
          reason: 'not taken up',
        );
        await Future<void>.delayed(const Duration(milliseconds: 20));
      }
      final done = (await status(watcher))['sex']!;
      expect(done.state, SearchParameterIndexState.done);
      expect(done.interrupted, isFalse);
      expect(done.resourcesRead, n);
      expect(await count(next, 'sex', 'female'), n ~/ 2);
      expect(await count(next, 'sex', 'male'), n ~/ 2);
      expect(await marked(next), 0);
    },
    timeout: const Timeout(Duration(minutes: 12)),
  );

  test('two connections never run at once', () async {
    final a = connect();
    final b = connect();
    await storePatients(a, 3000);
    // Each queues its own code at once; one run builds at a time.
    final saves = [
      a.fhirDao.saveResource(sex),
      b.fhirDao.saveResource(living),
    ];
    var most = 0;
    var watching = true;
    addTearDown(() => watching = false);
    final watch = () async {
      while (watching) {
        final running = (await status(a))
            .values
            .where((s) => s.state == SearchParameterIndexState.running)
            .length;
        if (running > most) most = running;
        await Future<void>.delayed(const Duration(milliseconds: 2));
      }
    }();
    await Future.wait(saves);
    // And an explicit re-index of a code the background is building.
    final explicit = b.reindexSearchParameter('sex');
    await a.searchParameterIndexing.idle;
    await b.searchParameterIndexing.idle;
    expect(await explicit, 3000);
    watching = false;
    await watch;

    expect(most, 1);
    final s = await status(b);
    expect(s['sex']!.state, SearchParameterIndexState.done);
    expect(s['living']!.state, SearchParameterIndexState.done);
    expect(await count(a, 'sex', 'female'), 1500);
    expect(await count(b, 'living', 'false'), 3000);
  });

  test(
      'a run that went unheard is taken over, and stops before its next '
      'write', () async {
    const n = 6000;
    final slow = connect();
    final next = connect();
    await storePatients(slow, n);
    await slow.fhirDao.saveResource(sex);
    while (await marked(next) == 0) {
      await Future<void>.delayed(const Duration(milliseconds: 2));
    }
    // As if [slow]'s process had been frozen past the stale time.
    await next.customStatement(
      'UPDATE ${SearchParameterIndexing.leaseTable} SET heartbeat = 0',
    );
    next.searchParameterIndexing.resume();
    await next.searchParameterIndexing.idle;
    await slow.searchParameterIndexing.idle;

    final done = (await status(next))['sex']!;
    expect(done.state, SearchParameterIndexState.done);
    expect(done.resourcesRead, n);
    expect(await count(slow, 'sex', 'female'), n ~/ 2);
    expect(await marked(next), 0);
  });

  test('a run whose lease was taken over is told so at its next write',
      () async {
    final a = connect();
    final b = connect();
    final result = await a.searchParameterIndexing.exclusive(
      (stillHeld) async {
        await stillHeld();
        // As if [a]'s process had been frozen past the stale time.
        await a.customStatement(
          'UPDATE ${SearchParameterIndexing.leaseTable} SET heartbeat = 0',
        );
        expect(
          await b.searchParameterIndexing.exclusive((_) async => 'b'),
          'b',
        );
        await expectLater(
          stillHeld(),
          throwsA(isA<SearchParameterIndexingStopped>()),
        );
        return 'a';
      },
    );
    expect(result, 'a');
  });

  test(
    "another connection's saves go through while a large run swaps in",
    () async {
      // The swap is one transaction holding the store's write lock; its
      // check for records changed meanwhile once read every mark for every
      // record, 11.1 s at 20,000 patients, and a save through another
      // connection waited out its 10 s busy timeout and failed (measured
      // 2026-11-25, tool/probe_writer_during_reindex.dart).
      const n = 20000;
      final server = connect();
      final screen = connect();
      await storePatients(server, n);
      await screen.customSelect('SELECT 1').get();
      await server.fhirDao.saveResource(sex);
      var running = true;
      final idle = server.searchParameterIndexing.idle
          .whenComplete(() => running = false);
      var i = 0;
      while (running) {
        await screen.fhirDao.saveResource(
          fhir.Patient.fromJson({
            'resourceType': 'Patient',
            'id': 'screen${i++}',
            'gender': 'female',
          }),
        );
        await Future<void>.delayed(const Duration(milliseconds: 50));
      }
      await idle;
      expect(
        (await status(screen))['sex']!.state,
        SearchParameterIndexState.done,
      );
      expect(await count(screen, 'sex', 'female'), n ~/ 2 + i);
    },
    timeout: const Timeout(Duration(minutes: 3)),
  );
}

void _appConnection(Database raw) => raw
  ..execute('PRAGMA journal_mode = WAL')
  ..execute('PRAGMA busy_timeout = 10000');
