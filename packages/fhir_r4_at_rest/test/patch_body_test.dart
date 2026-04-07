import 'dart:convert';

import 'package:fhir_r4_at_rest/fhir_r4_at_rest.dart';
import 'package:test/test.dart';

void main() {
  group('PatchBody', () {
    late PatchBody patchBody;

    setUp(() {
      patchBody = PatchBody();
    });

    test('starts with empty operations', () {
      expect(patchBody.operations, isEmpty);
      expect(patchBody.toJson(), '[]');
    });

    group('add operation', () {
      test('adds an add operation with value', () {
        patchBody.addOperation(PatchOps.add, '/name', value: 'John');

        expect(patchBody.operations, hasLength(1));
        expect(patchBody.operations.first, {
          'op': 'add',
          'path': '/name',
          'value': 'John',
        });
      });

      test('adds an add operation with complex value', () {
        patchBody.addOperation(
          PatchOps.add,
          '/telecom/-',
          value: {'system': 'phone', 'value': '555-1234'},
        );

        expect(patchBody.operations, hasLength(1));
        expect(patchBody.operations.first['value'], {
          'system': 'phone',
          'value': '555-1234',
        });
      });
    });

    group('remove operation', () {
      test('adds a remove operation without value', () {
        patchBody.addOperation(PatchOps.remove, '/name/0');

        expect(patchBody.operations, hasLength(1));
        expect(patchBody.operations.first, {
          'op': 'remove',
          'path': '/name/0',
        });
        // No 'value' key should be present
        expect(patchBody.operations.first.containsKey('value'), isFalse);
      });
    });

    group('replace operation', () {
      test('adds a replace operation with value', () {
        patchBody.addOperation(PatchOps.replace, '/active', value: true);

        expect(patchBody.operations, hasLength(1));
        expect(patchBody.operations.first, {
          'op': 'replace',
          'path': '/active',
          'value': true,
        });
      });
    });

    group('move operation', () {
      test('adds a move operation', () {
        patchBody.addOperation(PatchOps.move, '/name/1',
            value: '/name/0',);

        expect(patchBody.operations, hasLength(1));
        expect(patchBody.operations.first['op'], 'move');
      });
    });

    group('copy operation', () {
      test('adds a copy operation', () {
        patchBody.addOperation(PatchOps.copy, '/name/1',
            value: '/name/0',);

        expect(patchBody.operations, hasLength(1));
        expect(patchBody.operations.first['op'], 'copy');
      });
    });

    group('test operation', () {
      test('adds a test operation with value', () {
        patchBody.addOperation(PatchOps.test, '/active', value: true);

        expect(patchBody.operations, hasLength(1));
        expect(patchBody.operations.first, {
          'op': 'test',
          'path': '/active',
          'value': true,
        });
      });
    });

    group('multiple operations', () {
      test('accumulates multiple operations in order', () {
        patchBody
          ..addOperation(PatchOps.test, '/active', value: true)
          ..addOperation(PatchOps.replace, '/active', value: false)
          ..addOperation(PatchOps.add, '/name/-', value: {
          'use': 'official',
          'family': 'Smith',
        },);

        expect(patchBody.operations, hasLength(3));
        expect(patchBody.operations[0]['op'], 'test');
        expect(patchBody.operations[1]['op'], 'replace');
        expect(patchBody.operations[2]['op'], 'add');
      });
    });

    group('toJson', () {
      test('produces valid JSON string', () {
        patchBody.addOperation(PatchOps.replace, '/birthDate',
            value: '1990-01-01',);

        final jsonString = patchBody.toJson();
        final decoded = jsonDecode(jsonString) as List<dynamic>;

        expect(decoded, hasLength(1));
        expect(decoded.first['op'], 'replace');
        expect(decoded.first['path'], '/birthDate');
        expect(decoded.first['value'], '1990-01-01');
      });

      test('empty operations produces empty JSON array', () {
        expect(patchBody.toJson(), '[]');
      });

      test('complex multi-op patch produces valid JSON', () {
        patchBody
          ..addOperation(PatchOps.add, '/identifier/-', value: {
            'system': 'http://example.org',
            'value': 'MRN-001',
          },)
          ..addOperation(PatchOps.remove, '/name/1')
          ..addOperation(PatchOps.replace, '/gender', value: 'female');

        final jsonString = patchBody.toJson();
        final decoded = jsonDecode(jsonString) as List<dynamic>;

        expect(decoded, hasLength(3));
        // Verify round-trip integrity
        expect(jsonDecode(jsonEncode(decoded)), decoded);
      });
    });

    group('value omission', () {
      test('null value is not included in the operation map', () {
        patchBody.addOperation(PatchOps.remove, '/name/0');

        expect(patchBody.operations.first.containsKey('value'), isFalse);
      });

      test('explicit null value is not included', () {
        // ignore: avoid_redundant_argument_values
        patchBody.addOperation(PatchOps.add, '/name', value: null);

        expect(patchBody.operations.first.containsKey('value'), isFalse);
      });
    });
  });

  group('PatchOps', () {
    test('all enum values have correct string representation', () {
      expect(PatchOps.add.value, 'add');
      expect(PatchOps.remove.value, 'remove');
      expect(PatchOps.replace.value, 'replace');
      expect(PatchOps.move.value, 'move');
      expect(PatchOps.copy.value, 'copy');
      expect(PatchOps.test.value, 'test');
    });

    test('values contains all six operations', () {
      expect(PatchOps.values, hasLength(6));
    });
  });
}
