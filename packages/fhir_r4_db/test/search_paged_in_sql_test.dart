import 'package:drift/native.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_db/fhir_r4_db.dart' hide Resource;
import 'package:test/test.dart';

/// Searches made only of plain token parameters are paged in SQL: one select
/// with `ORDER BY id LIMIT`, and each further parameter nested as
/// `id IN (SELECT …)`. These pin that the SQL path gives the same answer the
/// general path gives, page by page, and intersects rather than unions.
Future<void> main() async {
  late FhirDb db;
  late FhirDao dao;

  /// Runs the search, and asserts which path ran: SQL, with or without a
  /// count, unless [general] says this shape is meant to fall back. A right
  /// answer proves nothing about the path on its own.
  Future<List<String>> ids(
    Map<String, List<String>> params, {
    int? count,
    int? offset,
    List<String>? sort,
    bool general = false,
  }) async {
    final found = await dao.search(
      resourceType: R4ResourceType.Observation,
      searchParameters: params,
      count: count,
      offset: offset,
      sort: sort,
    );
    expect(
      dao.lastSearchPagedInSql,
      !general,
      reason: 'path for $params count=$count sort=$sort',
    );
    return found.map((r) => r.id!.valueString!).toList();
  }

  setUp(() async {
    db = FhirDb(NativeDatabase.memory());
    dao = db.fhirDao;
    // 30 observations: ids o00..o29, even ones final, odd ones preliminary,
    // and code A on the first 20, code B on the last 10.
    for (var i = 0; i < 30; i++) {
      await dao.saveResource(
        Observation.fromJson({
          'resourceType': 'Observation',
          'id': 'o${i.toString().padLeft(2, '0')}',
          'status': i.isEven ? 'final' : 'preliminary',
          'effectiveDateTime': '2020-01-${(i + 1).toString().padLeft(2, '0')}',
          if (i < 10) 'valueString': 'Alpha reading',
          if (i >= 10) 'valueString': 'Beta reading',
          'component': [
            {
              'code': {
                'coding': [
                  {'system': 'http://example.org', 'code': 'mass'},
                ],
              },
              'valueQuantity': {
                'value': i,
                'system': 'http://unitsofmeasure.org',
                'code': 'mg',
              },
            },
          ],
          'subject': {'reference': 'Patient/${i < 15 ? 'p1' : 'p2'}'},
          'code': {
            'coding': [
              {'system': 'http://example.org', 'code': i < 20 ? 'A' : 'B'},
            ],
          },
        }),
      );
    }
  });

  tearDown(() => db.close());

  Future<List<String>> riskIds(
    Map<String, List<String>> params, {
    int? count,
    int? offset,
  }) async =>
      (await dao.search(
        resourceType: R4ResourceType.RiskAssessment,
        searchParameters: params,
        count: count,
        offset: offset,
      ))
          .map((r) => r.id!.valueString!)
          .toList();

  /// Ten risk assessments r0..r9 with probability 0.0, 0.1 … 0.9.
  Future<void> saveRisks() async {
    for (var i = 0; i < 10; i++) {
      await dao.saveResource(
        RiskAssessment.fromJson({
          'resourceType': 'RiskAssessment',
          'id': 'r$i',
          'status': 'final',
          'subject': {'reference': 'Patient/p1'},
          'prediction': [
            {'probabilityDecimal': i / 10},
          ],
        }),
      );
    }
  }

  test('one token parameter pages in SQL and pages stably', () async {
    final page1 = await ids(
      {
        'status': ['final'],
      },
      count: 5,
    );
    final page2 = await ids(
      {
        'status': ['final'],
      },
      count: 5,
      offset: 5,
    );
    final page3 = await ids(
      {
        'status': ['final'],
      },
      count: 5,
      offset: 10,
    );
    expect(page1, ['o00', 'o02', 'o04', 'o06', 'o08']);
    expect(page2, ['o10', 'o12', 'o14', 'o16', 'o18']);
    expect(page3, ['o20', 'o22', 'o24', 'o26', 'o28']);
    expect(
      await ids(
        {
          'status': ['final'],
        },
        count: 5,
        offset: 15,
      ),
      isEmpty,
    );
  });

  test('two token parameters intersect, not union', () async {
    // final AND code B: even ids in 20..29 -> 5 rows. A union would be 25.
    final page = await ids(
      {
        'status': ['final'],
        'code': ['http://example.org|B'],
      },
      count: 10,
    );
    expect(page, ['o20', 'o22', 'o24', 'o26', 'o28']);
  });

  test('the smaller set is the outer select, whichever was given first',
      () async {
    // status=final is 15 rows and code=B is 10, so code is the outer here
    // even though status came first — and it sits on an ALIAS of the same
    // table the nested status condition uses. Both orders must agree with
    // the general path and with each other.
    final statusFirst = await ids(
      {
        'status': ['final'],
        'code': ['B'],
      },
      count: 3,
    );
    final codeFirst = await ids(
      {
        'code': ['B'],
        'status': ['final'],
      },
      count: 3,
    );
    expect(statusFirst, ['o20', 'o22', 'o24']);
    expect(codeFirst, statusFirst);
    expect(
      await ids({
        'status': ['final'],
        'code': ['B'],
      }),
      ['o20', 'o22', 'o24', 'o26', 'o28'],
    );
  });

  test('a comma is an OR inside one parameter, paged in SQL', () async {
    // status=final,preliminary -> everything; code=B OR status=preliminary.
    expect(
      await ids(
        {
          'status': ['final,preliminary'],
        },
        count: 3,
        offset: 27,
      ),
      ['o27', 'o28', 'o29'],
    );
    expect(
      await ids(
        {
          'code': ['B'],
          'status': ['preliminary,cancelled'],
        },
        count: 3,
      ),
      ['o21', 'o23', 'o25'],
    );
    // An escaped comma is one value, and it matches nothing here.
    expect(
      await ids(
        {
          'status': [r'final\,preliminary'],
        },
        count: 3,
      ),
      isEmpty,
    );
  });

  test('a repeated parameter is an AND, paged in SQL', () async {
    // code=A AND code=B: no observation has both.
    expect(
      await ids(
        {
          'code': ['A', 'B'],
        },
        count: 3,
      ),
      isEmpty,
    );
    // status=final AND status=final,preliminary: the even ids.
    expect(
      await ids(
        {
          'status': ['final', 'final,preliminary'],
        },
        count: 3,
      ),
      ['o00', 'o02', 'o04'],
    );
    // Agrees with the general path (no count, so no SQL paging).
    expect(
      await ids({
        'code': ['A', 'B'],
      }),
      isEmpty,
    );
  });

  test('_id and _lastUpdated page in SQL from the resources table', () async {
    expect(
      await ids(
        {
          '_id': ['o05,o07,zzz'],
        },
        count: 3,
      ),
      ['o05', 'o07'],
    );
    expect(
      await ids(
        {
          '_id': ['o05'],
          'status': ['final'],
        },
        count: 3,
      ),
      isEmpty,
      reason: 'o05 is preliminary',
    );
    final year = DateTime.now().year.toString();
    expect(
      await ids(
        {
          '_lastUpdated': ['ge$year'],
          'code': ['B'],
        },
        count: 2,
      ),
      ['o20', 'o21'],
    );
    expect(
      await ids(
        {
          '_lastUpdated': ['lt$year'],
        },
        count: 2,
      ),
      isEmpty,
    );
  });

  test('_tag, _security, _profile and _source page in SQL from the index',
      () async {
    await dao.saveResource(
      Observation.fromJson({
        'resourceType': 'Observation',
        'id': 'tagged',
        'meta': {
          'tag': [
            {'system': 'http://example.org/tags', 'code': 'urgent'},
          ],
          'security': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
              'code': 'HTEST',
            },
          ],
          'profile': ['http://example.org/StructureDefinition/vitals'],
          'source': 'http://example.org/source/monitor-7',
        },
        'status': 'final',
        'code': {
          'coding': [
            {'system': 'http://example.org', 'code': 'A'},
          ],
        },
      }),
    );
    // Before schema 9 these were answered by decoding every stored resource
    // of the type in Dart; now they are ordinary token and uri rows.
    expect(
      await ids(
        {
          '_tag': ['http://example.org/tags|urgent'],
        },
        count: 3,
      ),
      ['tagged'],
    );
    expect(
      await ids(
        {
          '_tag': ['urgent'],
          'code': ['A'],
        },
        count: 3,
      ),
      ['tagged'],
    );
    expect(
      await ids(
        {
          '_security': ['HTEST'],
        },
        count: 3,
      ),
      ['tagged'],
    );
    expect(
      await ids(
        {
          '_profile': ['http://example.org/StructureDefinition/vitals'],
        },
        count: 3,
      ),
      ['tagged'],
    );
    expect(
      await ids(
        {
          '_source': ['http://example.org/source/monitor-7'],
        },
        count: 3,
      ),
      ['tagged'],
    );
    expect(
      await ids(
        {
          '_tag:missing': ['true'],
          'code': ['A'],
        },
        count: 2,
      ),
      ['o00', 'o01'],
    );
    // The general path agrees.
    expect(
      await ids({
        '_tag': ['urgent'],
      }),
      ['tagged'],
    );
  });

  test('a date parameter pages in SQL with its prefix honoured', () async {
    // date gt 2020-01-20 -> o20..o29 -> 10 rows, paged 4 at a time.
    final page1 = await ids(
      {
        'date': ['gt2020-01-20'],
      },
      count: 4,
    );
    final page3 = await ids(
      {
        'date': ['gt2020-01-20'],
      },
      count: 4,
      offset: 8,
    );
    expect(page1, ['o20', 'o21', 'o22', 'o23']);
    expect(page3, ['o28', 'o29']);
  });

  test('a token and a date parameter intersect across two tables', () async {
    // final AND date gt 2020-01-20 -> even ids in 20..29 -> 5 rows.
    final page = await ids(
      {
        'status': ['final'],
        'date': ['gt2020-01-20'],
      },
      count: 10,
    );
    expect(page, ['o20', 'o22', 'o24', 'o26', 'o28']);
  });

  test('a date value that is not a date is an error, not an empty set',
      () async {
    // R4B 3.1.1.3: "Where the content of the parameter is syntactically
    // incorrect, servers SHOULD return an error." It used to answer with an
    // empty set, which says "no such records" for a question it had not
    // understood.
    await expectLater(
      ids(
        {
          'date': ['gtnot-a-date'],
        },
        count: 5,
      ),
      throwsA(isA<InvalidSearchValue>()),
    );
    await expectLater(
      ids(
        {
          'date': ['23 May 2009'],
        },
      ),
      throwsA(isA<InvalidSearchValue>()),
    );
  });

  test('an unknown parameter is ignored, an empty one too', () async {
    // 3.1.1.3: "servers SHOULD ignore unknown or unsupported parameters";
    // "Empty parameters are not an error - they are just ignored". Both
    // used to make the whole search return nothing.
    expect(
      await ids(
        {
          'no-such-parameter': ['x'],
          'status': ['final'],
        },
        count: 2,
      ),
      ['o00', 'o02'],
    );
    expect(
      await ids(
        {
          'code': [''],
          'status': ['final'],
        },
        count: 2,
      ),
      ['o00', 'o02'],
    );
  });

  test('a string parameter pages in SQL with the starts-with default',
      () async {
    // value-string sw "alpha" -> o00..o09 -> 10 rows; case-insensitive.
    final page = await ids(
      {
        'value-string': ['alpha'],
      },
      count: 4,
      offset: 8,
    );
    expect(page, ['o08', 'o09']);
    expect(
      await ids(
        {
          'value-string': ['reading'],
        },
        count: 5,
      ),
      isEmpty,
      reason: 'starts-with, not contains',
    );
  });

  test('a string and a token parameter intersect', () async {
    // "Beta" AND final -> even ids in 10..29 -> 10 rows.
    final page = await ids(
      {
        'value-string': ['Beta'],
        'status': ['final'],
      },
      count: 3,
      offset: 6,
    );
    expect(page, ['o22', 'o24', 'o26']);
  });

  test(
      'a string search folds case, accents, combining marks, punctuation '
      'and whitespace, and a name is found by any of its words', () async {
    // R4B 3.1.1.4.8, each clause of it.
    await dao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'cq',
        'name': [
          {
            'family': 'Carreno  Quinones',
            'given': ['Jose-Maria', 'Rene\u0301'],
          },
        ],
      }),
    );
    Future<List<String>> patients(String key, String value) async =>
        (await dao.search(
          resourceType: R4ResourceType.Patient,
          searchParameters: {
            key: [value],
          },
          count: 5,
        ))
            .map((r) => r.id!.valueString!)
            .toList();
    // "searching either "Carreno" or "Quinones" should match a family name
    // of "Carreno Quinones""
    expect(await patients('family', 'Carreno'), ['cq']);
    expect(await patients('family', 'Quinones'), ['cq']);
    expect(await patients('family', 'quiñones'), ['cq']);
    // "non-significant whitespace (e.g. repeated space characters, tab vs
    // space) should also be ignored"
    expect(await patients('family', 'Carreno Quinones'), ['cq']);
    expect(await patients('family', 'Carreno\tQuinones'), ['cq']);
    // "Punctuation ... should also be ignored"
    expect(await patients('given', 'Jose Maria'), ['cq']);
    expect(await patients('given', 'jose-maria'), ['cq']);
    expect(await patients('given', 'Maria'), ['cq']);
    // "included combining characters": e + U+0301 is é is e.
    expect(await patients('given', 'rene'), ['cq']);
    expect(await patients('given', 'René'), ['cq']);
    // :exact still needs the entire value, as written.
    expect(await patients('family:exact', 'Quinones'), isEmpty);
    expect(await patients('family:exact', 'Carreno  Quinones'), ['cq']);
  });

  test('string modifiers page in SQL: :exact and :contains', () async {
    expect(
      await ids(
        {
          'value-string:exact': ['Alpha reading'],
        },
        count: 3,
      ),
      ['o00', 'o01', 'o02'],
    );
    expect(
      await ids(
        {
          'value-string:exact': ['alpha reading'],
        },
        count: 3,
      ),
      isEmpty,
      reason: ':exact keeps casing',
    );
    expect(
      await ids(
        {
          'value-string:contains': ['READ'],
        },
        count: 2,
        offset: 28,
      ),
      ['o28', 'o29'],
    );
  });

  test(':missing pages in SQL, true as NOT EXISTS and false as EXISTS',
      () async {
    // Every observation has a status; none has a note.
    expect(
      await ids(
        {
          'status:missing': ['true'],
        },
        count: 3,
      ),
      isEmpty,
    );
    expect(
      await ids(
        {
          'status:missing': ['false'],
        },
        count: 3,
      ),
      ['o00', 'o01', 'o02'],
    );
    // Only a negated condition: the resources table is the outer select.
    expect(
      await ids(
        {
          'performer:missing': ['true'],
        },
        count: 3,
        offset: 27,
      ),
      ['o27', 'o28', 'o29'],
    );
    expect(
      await ids(
        {
          'performer:missing': ['true'],
          'code': ['B'],
        },
        count: 3,
      ),
      ['o20', 'o21', 'o22'],
    );
    // Agrees with the general path.
    expect(
      await ids({
        'performer:missing': ['true'],
        'code': ['B'],
      }),
      hasLength(10),
    );
  });

  test('token modifiers page in SQL: :not and :text', () async {
    expect(
      await ids(
        {
          'status:not': ['final'],
        },
        count: 3,
      ),
      ['o01', 'o03', 'o05'],
    );
    expect(
      await ids(
        {
          'status:not': ['final'],
          'code': ['A'],
        },
        count: 3,
        offset: 8,
      ),
      ['o17', 'o19'],
    );
    // Display text is indexed from Coding.display; these have none.
    expect(
      await ids(
        {
          'code:text': ['anything'],
        },
        count: 3,
      ),
      isEmpty,
    );
    await dao.saveResource(
      Observation.fromJson({
        'resourceType': 'Observation',
        'id': 'shown',
        'status': 'final',
        'code': {
          'coding': [
            {
              'system': 'http://example.org',
              'code': 'Z',
              'display': 'Blood Pressure',
            },
          ],
        },
      }),
    );
    expect(
      await ids(
        {
          'code:text': ['pressure'],
        },
        count: 3,
      ),
      ['shown'],
      reason: ':text is a case-insensitive partial match on the display',
    );
    // CodeableConcept.text is searched by :text and NOT by the code search.
    await dao.saveResource(
      Observation.fromJson({
        'resourceType': 'Observation',
        'id': 'texted',
        'status': 'final',
        'code': {'text': 'Heart Rate'},
      }),
    );
    expect(
      await ids(
        {
          'code:text': ['heart'],
        },
        count: 3,
      ),
      ['texted'],
    );
    expect(
      await ids(
        {
          'code': ['Heart Rate'],
        },
        count: 3,
      ),
      isEmpty,
      reason: 'the default search "uses codes"; the text is not a code',
    );
    expect(
      await ids(
        {
          'code:missing': ['false'],
          'status': ['final'],
        },
        count: 40,
      ),
      contains('texted'),
      reason: 'a text-only CodeableConcept still has a value for the parameter',
    );
  });

  test('a modifier this server does not support is refused, not narrowed',
      () async {
    // R4B 3.1.1.4.4: "Server SHALL reject any search request that contains …
    // a modifier that the server does not support". Token :below is code
    // subsumption; it used to be answered as a plain code match.
    for (final key in ['code:below', 'code:above', 'subject:below']) {
      await expectLater(
        ids(
          {
            key: ['A'],
          },
          count: 3,
        ),
        throwsA(isA<UnsupportedSearchModifier>()),
        reason: key,
      );
    }
  });

  test('uri :below and :above page in SQL, for URLs only', () async {
    for (final (id, url) in [
      ('vs1', 'http://example.org/fhir/ValueSet/a'),
      ('vs2', 'http://example.org/fhir/ValueSet/b'),
      ('vs3', 'http://other.org/fhir/ValueSet/a'),
    ]) {
      await dao.saveResource(
        ValueSet.fromJson({
          'resourceType': 'ValueSet',
          'id': id,
          'status': 'active',
          'url': url,
        }),
      );
    }
    Future<List<String>> vs(
      String key,
      String value, {
      bool general = false,
    }) async {
      final found = await dao.search(
        resourceType: R4ResourceType.ValueSet,
        searchParameters: {
          key: [value],
        },
        count: 10,
      );
      expect(dao.lastSearchPagedInSql, !general, reason: '$key=$value');
      return found.map((r) => r.id!.valueString!).toList();
    }

    expect(await vs('url:below', 'http://example.org/fhir'), ['vs1', 'vs2']);
    expect(
      await vs('url:above', 'http://example.org/fhir/ValueSet/a/x'),
      ['vs1'],
    );
    // 3.1.1.4.9: "the :above and :below modifiers only apply to URLs, and
    // not URNs such as OIDs" — a URN is matched whole.
    await dao.saveResource(
      ValueSet.fromJson({
        'resourceType': 'ValueSet',
        'id': 'oid',
        'status': 'active',
        'url': 'urn:oid:1.2.3.4.5',
      }),
    );
    expect(await vs('url:below', 'urn:oid:1.2.3'), isEmpty);
    expect(await vs('url:below', 'urn:oid:1.2.3.4.5'), ['oid']);
    expect(await vs('url', 'urn:oid:1.2.3.4.5'), ['oid']);
    // "precise (e.g. case ...) sensitive": a different casing is a different
    // URI.
    expect(await vs('url', 'http://EXAMPLE.org/fhir/ValueSet/a'), isEmpty);
  });

  test('a uri with |version searches the version too', () async {
    // 3.1.1.4.9: servers "SHOULD support automatically detecting a
    // |[version] portion as part of the search parameter, and interpreting
    // that portion as a search on the version".
    for (final (id, version) in [('v1', '1.0'), ('v2', '2.0')]) {
      await dao.saveResource(
        ValueSet.fromJson({
          'resourceType': 'ValueSet',
          'id': id,
          'status': 'active',
          'url': 'http://example.org/fhir/ValueSet/versioned',
          'version': version,
        }),
      );
    }
    Future<List<String>> vs(String value) async => (await dao.search(
          resourceType: R4ResourceType.ValueSet,
          searchParameters: {
            'url': [value],
          },
          count: 10,
        ))
            .map((r) => r.id!.valueString!)
            .toList();
    expect(
      await vs('http://example.org/fhir/ValueSet/versioned'),
      ['v1', 'v2'],
    );
    expect(await vs('http://example.org/fhir/ValueSet/versioned|2.0'), ['v2']);
    expect(await vs('http://example.org/fhir/ValueSet/versioned|3.0'), isEmpty);
  });

  test('reference modifiers page in SQL: a type, and :identifier', () async {
    expect(
      await ids(
        {
          'subject:Patient': ['p2'],
        },
        count: 3,
      ),
      ['o15', 'o16', 'o17'],
    );
    expect(
      await ids(
        {
          'subject:Group': ['p2'],
        },
        count: 3,
      ),
      isEmpty,
    );
    await dao.saveResource(
      Observation.fromJson({
        'resourceType': 'Observation',
        'id': 'by-mrn',
        'status': 'final',
        'code': {
          'coding': [
            {'system': 'http://example.org', 'code': 'A'},
          ],
        },
        'subject': {
          'identifier': {'system': 'http://mrn.example.org', 'value': '42'},
        },
      }),
    );
    expect(
      await ids(
        {
          'subject:identifier': ['http://mrn.example.org|42'],
        },
        count: 3,
      ),
      ['by-mrn'],
    );
    expect(
      await ids(
        {
          'subject:identifier': ['42'],
        },
        count: 3,
      ),
      ['by-mrn'],
    );
  });

  test('an absolute or canonical URL reference matches as written', () async {
    // R4B 3.1.1.4.12 `[parameter]=[url]`. Before this the general path added
    // NO condition for a URL value, so it returned every resource with a
    // subject, and the SQL path compared the URL to the id part.
    await dao.saveResource(
      Observation.fromJson({
        'resourceType': 'Observation',
        'id': 'abs',
        'status': 'final',
        'code': {
          'coding': [
            {'system': 'http://example.org', 'code': 'A'},
          ],
        },
        'subject': {'reference': 'http://other.example.org/fhir/Patient/p9'},
      }),
    );
    for (final count in [3, null]) {
      expect(
        await ids(
          {
            'subject': ['http://other.example.org/fhir/Patient/p9'],
          },
          count: count,
        ),
        ['abs'],
        reason: 'count=$count',
      );
      expect(
        await ids(
          {
            'subject': ['http://other.example.org/fhir/Patient/p1'],
          },
          count: count,
        ),
        isEmpty,
        reason: 'count=$count',
      );
      // Type/id also matches an absolute reference to that type and id.
      expect(
        await ids(
          {
            'subject': ['Patient/p9'],
          },
          count: count,
        ),
        ['abs'],
        reason: 'count=$count',
      );
    }
  });

  test(
      'parameters that indexed nothing: telecom, relatedArtifact, Range, '
      'Money, ImagingStudy uid', () async {
    // Each of these wrote no index row in 0.12.0, so the search always
    // returned nothing. Measured by saving the resource and reading the
    // index tables before the fix.
    await dao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'tel',
        'telecom': [
          {'system': 'phone', 'value': '555-1234'},
          {'system': 'email', 'value': 'ann@example.org'},
        ],
      }),
    );
    Future<List<String>> find(
      R4ResourceType type,
      String key,
      String value,
    ) async {
      final found = await dao.search(
        resourceType: type,
        searchParameters: {
          key: [value],
        },
        count: 5,
      );
      expect(dao.lastSearchPagedInSql, isTrue, reason: '$key=$value');
      return found.map((r) => r.id!.valueString!).toList();
    }

    // ContactPoint as a token (R4B 3.1.1.9 cross-map; 20 parameters).
    expect(await find(R4ResourceType.Patient, 'phone', '555-1234'), ['tel']);
    expect(await find(R4ResourceType.Patient, 'telecom', '555-1234'), ['tel']);
    expect(
      await find(R4ResourceType.Patient, 'email', 'ann@example.org'),
      ['tel'],
    );
    expect(await find(R4ResourceType.Patient, 'phone', '555-9999'), isEmpty);

    // relatedArtifact.where(type=...).resource: 35 parameters whose
    // generated extractor filtered for the wrong element type.
    await dao.saveResource(
      ActivityDefinition.fromJson({
        'resourceType': 'ActivityDefinition',
        'id': 'ad',
        'status': 'active',
        'relatedArtifact': [
          {'type': 'composed-of', 'resource': 'http://example.org/Library/x'},
        ],
      }),
    );
    expect(
      await find(
        R4ResourceType.ActivityDefinition,
        'composed-of',
        'http://example.org/Library/x',
      ),
      ['ad'],
    );
    expect(
      await find(R4ResourceType.ActivityDefinition, 'composed-of', 'Library/x'),
      ['ad'],
    );

    // A Range under a quantity parameter. (Observation's value-quantity
    // is defined over Quantity and SampledData only; a Range is searched
    // where HL7 lists one, as in useContext's context-quantity.)
    await dao.saveResource(
      ActivityDefinition.fromJson({
        'resourceType': 'ActivityDefinition',
        'id': 'ranged',
        'status': 'active',
        'useContext': [
          {
            'code': {'code': 'age'},
            'valueRange': {
              'low': {'value': 10, 'code': 'a'},
              'high': {'value': 20, 'code': 'a'},
            },
          },
        ],
      }),
    );
    // [9.5, 20.5): eq15 (14.5–15.5) does not contain it; gt12 overlaps
    // above; sa5 lies entirely above [4.5, 5.5); eb30 entirely below.
    const ad = R4ResourceType.ActivityDefinition;
    expect(await find(ad, 'context-quantity', '15'), isEmpty);
    expect(await find(ad, 'context-quantity', 'gt12'), ['ranged']);
    expect(await find(ad, 'context-quantity', 'sa5'), ['ranged']);
    expect(await find(ad, 'context-quantity', 'eb30'), ['ranged']);
    expect(await find(ad, 'context-quantity', 'eb15'), isEmpty);
    // A Money under a quantity parameter.
    await dao.saveResource(
      ChargeItem.fromJson({
        'resourceType': 'ChargeItem',
        'id': 'ci',
        'status': 'billable',
        'code': {
          'coding': [
            {'code': 'X'},
          ],
        },
        'subject': {'reference': 'Patient/tel'},
        'priceOverride': {'value': 12.5, 'currency': 'USD'},
      }),
    );
    expect(
      await find(
        R4ResourceType.ChargeItem,
        'price-override',
        '12.5|urn:iso:std:iso:4217|USD',
      ),
      ['ci'],
    );
    expect(
      await find(R4ResourceType.ChargeItem, 'price-override', 'gt10||USD'),
      ['ci'],
    );

    // An id under a token parameter.
    await dao.saveResource(
      ImagingStudy.fromJson({
        'resourceType': 'ImagingStudy',
        'id': 'img',
        'status': 'available',
        'subject': {'reference': 'Patient/tel'},
        'series': [
          {
            'uid': '2.16.124.113543.6003.1154777499.30246.19789.3503430045',
            'modality': {'code': 'CT'},
          },
        ],
      }),
    );
    expect(
      await find(
        R4ResourceType.ImagingStudy,
        'series',
        '2.16.124.113543.6003.1154777499.30246.19789.3503430045',
      ),
      ['img'],
    );
  });

  test('modifiers the SQL path does not build fall back', () async {
    // :of-type reads the identifier's type from the resource in Dart.
    expect(
      await ids(
        {
          'identifier:of-type': ['http://x|MR|1'],
        },
        count: 3,
        general: true,
      ),
      isEmpty,
    );
  });

  test('a reference parameter pages in SQL, Type/id and bare id', () async {
    // subject=Patient/p2 -> o15..o29 -> 15 rows.
    final typed = await ids(
      {
        'subject': ['Patient/p2'],
      },
      count: 4,
      offset: 12,
    );
    expect(typed, ['o27', 'o28', 'o29']);
    final bare = await ids(
      {
        'subject': ['p2'],
      },
      count: 2,
    );
    expect(bare, ['o15', 'o16']);
  });

  test('the query a client makes: subject AND code, paged in SQL', () async {
    // Patient/p1 AND code B -> none: p1 holds o00..o14, B is o20..o29.
    expect(
      await ids(
        {
          'subject': ['Patient/p1'],
          'code': ['http://example.org|B'],
        },
        count: 5,
      ),
      isEmpty,
    );
    // Patient/p2 AND code B AND final -> even ids in 20..29.
    expect(
      await ids(
        {
          'subject': ['Patient/p2'],
          'code': ['http://example.org|B'],
          'status': ['final'],
        },
        count: 10,
      ),
      ['o20', 'o22', 'o24', 'o26', 'o28'],
    );
  });

  test('a quantity parameter pages in SQL with its prefix honoured', () async {
    // component-value-quantity is the quantity parameter over the component.
    const key = 'component-value-quantity';
    // The stored values are decimals written as integers (`25`), whose
    // range is [24.5, 25.5). R4B 3.1.1.4.5 gt: "the range above the search
    // value intersects (i.e. overlaps) with the range of the target value",
    // and [24.5, 25.5) reaches above 25, so o25 matches gt25. (A stored
    // INTEGER 25 would not; see the number test below.)
    expect(
      await ids(
        {
          key: ['gt25|http://unitsofmeasure.org|mg'],
        },
        count: 3,
      ),
      ['o25', 'o26', 'o27'],
    );
    expect(
      await ids(
        {
          key: ['gt25|http://unitsofmeasure.org|mg'],
        },
        count: 3,
        offset: 3,
      ),
      ['o28', 'o29'],
    );
    // A unit that no row carries matches nothing, so the system|code clauses
    // are part of the WHERE and not dropped.
    expect(
      await ids(
        {
          key: ['gt25|http://unitsofmeasure.org|kg'],
        },
        count: 3,
      ),
      isEmpty,
    );
    // `5.4||mg`: the code OR the human unit. The rows carry code, not unit.
    expect(
      await ids(
        {
          key: ['ge28||mg'],
        },
        count: 5,
      ),
      ['o28', 'o29'],
    );
    // Value alone, no unit: le with a page.
    expect(
      await ids(
        {
          key: ['le2'],
        },
        count: 10,
      ),
      ['o00', 'o01', 'o02'],
    );
  });

  test('a quantity and a token parameter intersect', () async {
    expect(
      await ids(
        {
          'component-value-quantity': ['ge20'],
          'status': ['final'],
        },
        count: 3,
      ),
      ['o20', 'o22', 'o24'],
    );
  });

  test('a number parameter pages in SQL with its prefix honoured', () async {
    await saveRisks();
    expect(
      await riskIds(
        {
          'probability': ['gt0.55'],
        },
        count: 2,
      ),
      ['r6', 'r7'],
    );
    expect(
      await riskIds(
        {
          'probability': ['gt0.55'],
        },
        count: 2,
        offset: 2,
      ),
      ['r8', 'r9'],
    );
    expect(
      await riskIds(
        {
          'probability': ['0.3'],
        },
        count: 5,
      ),
      ['r3'],
    );
    // 0.2 is stored as [0.15, 0.25), which has values below 0.2, so it
    // matches lt0.2 (3.1.1.4.5 lt: "the range below the search value
    // intersects with the range of the target value").
    expect(
      await riskIds(
        {
          'probability': ['lt0.2'],
          'subject': ['Patient/p1'],
        },
        count: 5,
      ),
      ['r0', 'r1', 'r2'],
    );
  });

  test('eq on a number is the implicit range, not equality', () async {
    // R4B 3.1.1.4.6: `0.3` is [0.25, 0.35). Stored 0.31 and 0.34 are in it
    // (their own ranges, [0.305, 0.315) and [0.335, 0.345), fully), 0.35 is
    // not, and `0.30` narrows to [0.295, 0.305).
    for (final (id, value) in [
      ('n31', 0.31),
      ('n34', 0.34),
      ('n35', 0.35),
      ('n25', 0.25),
      ('n24', 0.249),
      ('n30', 0.3),
    ]) {
      await dao.saveResource(
        RiskAssessment.fromJson({
          'resourceType': 'RiskAssessment',
          'id': id,
          'status': 'final',
          'subject': {'reference': 'Patient/p1'},
          'prediction': [
            {'probabilityDecimal': value},
          ],
        }),
      );
    }
    Future<List<String>> both(String value) async {
      final paged = await riskIds(
        {
          'probability': [value],
        },
        count: 50,
      );
      final general = await riskIds({
        'probability': [value],
      });
      expect(general..sort(), paged, reason: 'general path agrees for $value');
      return paged;
    }

    // n25 is 0.25 written, [0.245, 0.255), which [0.25, 0.35) does not fully
    // contain, so it is not eq 0.3.
    expect(await both('0.3'), ['n30', 'n31', 'n34']);
    // `0.30` is [0.295, 0.305); the stored 0.3 is [0.25, 0.35), which it
    // does not contain, so a search more precise than the record finds
    // nothing. (A record's own trailing zeros are lost by JSON number
    // parsing — `0.30` arrives as the double 0.3 — so a record cannot be
    // more precise than its shortest spelling.)
    expect(await both('0.30'), isEmpty);
    expect(await both('ne0.3'), ['n24', 'n25', 'n35']);
    // sa: the stored range must lie entirely at or above 0.35; 0.35 itself
    // is [0.345, 0.355) and overlaps, so only a value written above it.
    expect(await both('sa0.3'), isEmpty);
    // 0.25 is [0.245, 0.255), which overlaps [0.15, 0.25), so not sa0.2.
    expect(await both('sa0.2'), ['n30', 'n31', 'n34', 'n35']);
    expect(await both('eb0.3'), ['n24']);
    // gt ignores the search value's precision; the stored ranges count:
    // 0.3 is [0.295, 0.305) and reaches above 0.3.
    expect(await both('gt0.3'), ['n30', 'n31', 'n34', 'n35']);
    // ap: [0.25, 0.35) widened by 10% of 0.3 each side, overlap with
    // [0.22, 0.38).
    expect(await both('ap0.3'), ['n24', 'n25', 'n30', 'n31', 'n34', 'n35']);
  });

  test('eq on a quantity is the implicit range too', () async {
    // 5.4 is [5.35, 5.45): the spec's own example, "5.4(+/-0.05) mg".
    // 5.35 is the search's lower bound; its own range [5.345, 5.355) is not
    // contained, so it is out. 5.36 is [5.355, 5.365), in. The bound
    // `5.4 - 0.05` computed in floating point would be above 5.35; the
    // range is built as decimals instead, so 5.35 is excluded for the right
    // reason and not by rounding.
    for (final (id, value) in [
      ('q535', 5.35),
      ('q536', 5.36),
      ('q544', 5.44),
      ('q545', 5.45),
    ]) {
      await dao.saveResource(
        Observation.fromJson({
          'resourceType': 'Observation',
          'id': id,
          'status': 'final',
          'code': {
            'coding': [
              {'system': 'http://example.org', 'code': 'Z'},
            ],
          },
          'valueQuantity': {
            'value': value,
            'system': 'http://unitsofmeasure.org',
            'code': 'mg',
          },
        }),
      );
    }
    expect(
      await ids(
        {
          'value-quantity': ['5.4|http://unitsofmeasure.org|mg'],
        },
        count: 10,
      ),
      ['q536', 'q544'],
    );
    expect(
      await ids(
        {
          'value-quantity': ['5.4|http://unitsofmeasure.org|mg'],
        },
      ),
      ['q536', 'q544'],
    );
  });

  test('a number value that is not a number is an error', () async {
    await saveRisks();
    await expectLater(
      riskIds(
        {
          'probability': ['high'],
        },
        count: 5,
      ),
      throwsA(isA<InvalidSearchValue>()),
    );
    await expectLater(
      ids(
        {
          'component-value-quantity': ['heavy|http://unitsofmeasure.org|kg'],
        },
        count: 5,
      ),
      throwsA(isA<InvalidSearchValue>()),
    );
  });

  test('a uri parameter pages in SQL, exact and case-sensitive', () async {
    for (var i = 0; i < 6; i++) {
      await dao.saveResource(
        ValueSet.fromJson({
          'resourceType': 'ValueSet',
          'id': 'vs$i',
          'status': 'active',
          'url': 'http://example.org/vs/${i.isEven ? 'even' : 'odd'}',
        }),
      );
    }
    Future<List<String>> vsIds(String url, {int? offset}) async =>
        (await dao.search(
          resourceType: R4ResourceType.ValueSet,
          searchParameters: {
            'url': [url],
          },
          count: 2,
          offset: offset,
        ))
            .map((r) => r.id!.valueString!)
            .toList();
    expect(await vsIds('http://example.org/vs/even'), ['vs0', 'vs2']);
    expect(await vsIds('http://example.org/vs/even', offset: 2), ['vs4']);
    expect(await vsIds('http://example.org/vs/EVEN'), isEmpty);
    expect(await vsIds('http://example.org/vs/ev'), isEmpty);
  });

  /// Two patients and an organisation for the chains: p1 is Anna Smith at
  /// Org A, p2 is Ben Jones at Org B. Observations o00..o14 point at p1,
  /// o15..o29 at p2.
  Future<void> saveChainTargets() async {
    await dao.saveResource(
      Organization.fromJson({
        'resourceType': 'Organization',
        'id': 'orgA',
        'name': 'Alpha Clinic',
      }),
    );
    await dao.saveResource(
      Organization.fromJson({
        'resourceType': 'Organization',
        'id': 'orgB',
        'name': 'Beta Hospital',
      }),
    );
    await dao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'p1',
        'name': [
          {
            'family': 'Smith',
            'given': ['Anna'],
          },
        ],
        'gender': 'female',
        'managingOrganization': {'reference': 'Organization/orgA'},
      }),
    );
    await dao.saveResource(
      Patient.fromJson({
        'resourceType': 'Patient',
        'id': 'p2',
        'name': [
          {
            'family': 'Jones',
            'given': ['Ben'],
          },
        ],
        'gender': 'male',
        'managingOrganization': {'reference': 'Organization/orgB'},
      }),
    );
  }

  test('a chained parameter pages in SQL, one hop', () async {
    await saveChainTargets();
    // subject.family=Jones -> p2 -> o15..o29.
    expect(
      await ids(
        {
          'subject.family': ['Jones'],
        },
        count: 3,
      ),
      ['o15', 'o16', 'o17'],
    );
    // Type-constrained, and a modifier inside the chain.
    expect(
      await ids(
        {
          'subject:Patient.family:exact': ['Smith'],
          'status': ['final'],
        },
        count: 3,
      ),
      ['o00', 'o02', 'o04'],
    );
    expect(
      await ids(
        {
          'subject:Group.family': ['Smith'],
        },
        count: 3,
      ),
      isEmpty,
    );
    // The general path agrees.
    expect(
      await ids({
        'subject.family': ['Jones'],
      }),
      hasLength(15),
    );
  });

  test('a chained parameter pages in SQL, two hops', () async {
    await saveChainTargets();
    // subject.organization.name=Beta -> orgB -> p2 -> o15..o29.
    expect(
      await ids(
        {
          'subject.organization.name': ['Beta'],
        },
        count: 2,
        offset: 13,
      ),
      ['o28', 'o29'],
    );
    expect(
      await ids({
        'subject.organization.name': ['Beta'],
      }),
      hasLength(15),
    );
  });

  test('_has pages in SQL, honouring the reference parameter', () async {
    await saveChainTargets();
    Future<List<String>> patients(
      Map<String, List<String>> params, {
      int? count,
    }) async {
      final has = <HasParameter>[];
      final plain = <String, List<String>>{};
      for (final e in params.entries) {
        final parsed = HasParameter.parse(e.key, e.value.single);
        if (parsed != null) {
          has.add(parsed);
        } else {
          plain[e.key] = e.value;
        }
      }
      final found = await dao.search(
        resourceType: R4ResourceType.Patient,
        searchParameters: plain,
        hasParameters: has,
        count: count,
      );
      expect(dao.lastSearchPagedInSql, isTrue, reason: '$params');
      return found.map((r) => r.id!.valueString!).toList();
    }

    // Patients with an Observation of code B: only p2's (o20..o29).
    expect(
      await patients(
        {
          '_has:Observation:subject:code': ['B'],
        },
        count: 5,
      ),
      ['p2'],
    );
    expect(
      await patients(
        {
          '_has:Observation:subject:code': ['A'],
          'gender': ['female'],
        },
        count: 5,
      ),
      ['p1'],
    );
    // The reference parameter matters: no Observation points at a patient
    // through `performer`, so this is empty. (The general path ignored the
    // reference parameter and would have answered p1 and p2.)
    expect(
      await patients(
        {
          '_has:Observation:performer:code': ['A'],
        },
        count: 5,
      ),
      isEmpty,
    );
    // Nested: Organizations that manage a Patient that has an Observation
    // of code B.
    final orgs = await dao.search(
      resourceType: R4ResourceType.Organization,
      hasParameters: [
        HasParameter.parse(
          '_has:Patient:organization:_has:Observation:subject:code',
          'B',
        )!,
      ],
      count: 5,
    );
    expect(dao.lastSearchPagedInSql, isTrue);
    expect(orgs.map((r) => r.id!.valueString), ['orgB']);
  });

  test('the SQL path and the general path agree', () async {
    // A comma forces the general path; the same set without one takes the
    // SQL path. Both must give the same rows in the same order.
    final general = await ids(
      {
        'status': ['final,final'],
      },
      count: 7,
    );
    final sql = await ids(
      {
        'status': ['final'],
      },
      count: 7,
    );
    expect(sql, general);
  });

  test('a sort pages in SQL too: the page is the top of the ORDER', () async {
    final sorted = await ids(
      {
        'status': ['final'],
      },
      count: 3,
      sort: ['-_id'],
    );
    expect(sorted, ['o28', 'o26', 'o24']);
    expect(
      await ids(
        {
          'status': ['final'],
        },
        count: 3,
        offset: 3,
        sort: ['-_id'],
      ),
      ['o22', 'o20', 'o18'],
    );
  });
}
