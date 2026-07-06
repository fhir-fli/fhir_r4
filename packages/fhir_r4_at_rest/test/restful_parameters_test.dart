import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';
import 'package:test/test.dart';

void main() {
  group('RestfulParameters', () {
    test('addCount adds _count parameter', () {
      final params = RestfulParameters().addCount(10);
      expect(params.parameters['_count'], '10');
      expect(params.buildQuery(), '_count=10');
    });

    test('addPage adds _page parameter', () {
      final params = RestfulParameters().addPage(3);
      expect(params.parameters['_page'], '3');
      expect(params.buildQuery(), '_page=3');
    });

    test('addFormat adds _format parameter', () {
      final params = RestfulParameters().addFormat('application/fhir+json');
      expect(params.parameters['_format'], 'application/fhir+json');
      expect(params.buildQuery(), '_format=application/fhir+json');
    });

    test('requestPretty adds _pretty=true', () {
      final params = RestfulParameters().requestPretty();
      expect(params.parameters['_pretty'], 'true');
      expect(params.buildQuery(), '_pretty=true');
    });

    test('requestSummary adds _summary parameter for each Summary value', () {
      for (final summary in Summary.values) {
        final params = RestfulParameters().requestSummary(summary);
        expect(params.parameters['_summary'], summary.toString());
        expect(params.buildQuery(), '_summary=$summary');
      }
    });

    test('add inserts arbitrary parameter', () {
      final params = RestfulParameters().add('name', 'John');
      expect(params.parameters['name'], 'John');
      expect(params.buildQuery(), 'name=John');
    });

    test('multiple parameters combine in buildQuery', () {
      final params =
          RestfulParameters().addCount(20).addPage(2).requestPretty();
      final query = params.buildQuery();
      expect(query, contains('_count=20'));
      expect(query, contains('_page=2'));
      expect(query, contains('_pretty=true'));
      // All three joined by &
      expect('&'.allMatches(query).length, 2);
    });

    test('duplicate key with add converts to list', () {
      final params = RestfulParameters().add('tag', 'alpha').add('tag', 'beta');
      expect(params.parameters['tag'], isA<List<String>>());
      expect(params.parameters['tag'], ['alpha', 'beta']);
    });

    test('duplicate key buildQuery emits key multiple times', () {
      final params = RestfulParameters().add('tag', 'alpha').add('tag', 'beta');
      final query = params.buildQuery();
      expect(query, 'tag=alpha&tag=beta');
    });

    test('addCount overwrites previous _count (last-write-wins)', () {
      final params = RestfulParameters().addCount(10).addCount(50);
      expect(params.parameters['_count'], '50');
      expect(params.buildQuery(), '_count=50');
    });

    test('buildQuery returns empty string when no parameters', () {
      final params = RestfulParameters();
      expect(params.buildQuery(), '');
    });

    test('chaining returns same instance', () {
      final params = RestfulParameters();
      final returned = params.addCount(5);
      expect(identical(params, returned), isTrue);
    });
  });
}
