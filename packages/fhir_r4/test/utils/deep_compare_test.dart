import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('deepCompare', () {
    group('identical objects', () {
      test('same map reference is equal', () {
        final map = {'a': 1, 'b': 2};
        expect(deepCompare(map, map), isTrue);
      });

      test('same list reference is equal', () {
        final list = [1, 2, 3];
        expect(deepCompare(list, list), isTrue);
      });
    });

    group('equal primitive values', () {
      test('equal strings', () {
        expect(deepCompare('hello', 'hello'), isTrue);
      });

      test('equal integers', () {
        expect(deepCompare(42, 42), isTrue);
      });

      test('equal doubles', () {
        expect(deepCompare(3.14, 3.14), isTrue);
      });

      test('equal booleans', () {
        expect(deepCompare(true, true), isTrue);
      });

      test('null equals null', () {
        expect(deepCompare(null, null), isTrue);
      });
    });

    group('different primitive values', () {
      test('different strings', () {
        expect(deepCompare('hello', 'world'), isFalse);
      });

      test('different integers', () {
        expect(deepCompare(1, 2), isFalse);
      });

      test('different types', () {
        expect(deepCompare('1', 1), isFalse);
      });

      test('null vs non-null', () {
        expect(deepCompare(null, 'something'), isFalse);
      });

      test('non-null vs null', () {
        expect(deepCompare('something', null), isFalse);
      });
    });

    group('map comparison', () {
      test('equal simple maps', () {
        expect(
          deepCompare({'a': 1, 'b': 2}, {'a': 1, 'b': 2}),
          isTrue,
        );
      });

      test('maps with different key order are equal', () {
        expect(
          deepCompare({'b': 2, 'a': 1}, {'a': 1, 'b': 2}),
          isTrue,
        );
      });

      test('maps with different values', () {
        expect(
          deepCompare({'a': 1}, {'a': 2}),
          isFalse,
        );
      });

      test('maps with different keys', () {
        expect(
          deepCompare({'a': 1}, {'b': 1}),
          isFalse,
        );
      });

      test('maps with different sizes', () {
        expect(
          deepCompare({'a': 1}, {'a': 1, 'b': 2}),
          isFalse,
        );
      });

      test('empty maps are equal', () {
        expect(deepCompare(<String, dynamic>{}, <String, dynamic>{}), isTrue);
      });
    });

    group('nested structures', () {
      test('equal nested maps', () {
        expect(
          deepCompare(
            {
              'a': {'b': 1},
            },
            {
              'a': {'b': 1},
            },
          ),
          isTrue,
        );
      });

      test('different nested maps', () {
        expect(
          deepCompare(
            {
              'a': {'b': 1},
            },
            {
              'a': {'b': 2},
            },
          ),
          isFalse,
        );
      });

      test('deeply nested equal structures', () {
        expect(
          deepCompare(
            {
              'level1': {
                'level2': {
                  'level3': [1, 2, 3],
                },
              },
            },
            {
              'level1': {
                'level2': {
                  'level3': [1, 2, 3],
                },
              },
            },
          ),
          isTrue,
        );
      });
    });

    group('list comparison', () {
      test('equal lists', () {
        expect(deepCompare([1, 2, 3], [1, 2, 3]), isTrue);
      });

      test('empty lists are equal', () {
        expect(deepCompare(<dynamic>[], <dynamic>[]), isTrue);
      });

      test('lists with different lengths', () {
        expect(deepCompare([1, 2], [1, 2, 3]), isFalse);
      });

      test('lists of maps with same content', () {
        expect(
          deepCompare(
            [
              {'a': 1},
              {'b': 2},
            ],
            [
              {'a': 1},
              {'b': 2},
            ],
          ),
          isTrue,
        );
      });
    });

    group('URL-encoded string comparison', () {
      test('URL-encoded strings are compared after decoding', () {
        // CustomStringEquality decodes URI components before comparing
        expect(
          deepCompare(
            {'url': 'hello%20world'},
            {'url': 'hello world'},
          ),
          isTrue,
        );
      });

      test('differently encoded URLs match', () {
        expect(
          deepCompare(
            {'path': '/foo%2Fbar'},
            {'path': '/foo/bar'},
          ),
          isTrue,
        );
      });
    });

    group('FHIR resource JSON comparison', () {
      test('two Patient JSONs with same content are equal', () {
        final json1 = {
          'resourceType': 'Patient',
          'id': 'example',
          'active': true,
          'name': [
            {
              'family': 'Doe',
              'given': ['John'],
            }
          ],
        };
        final json2 = {
          'resourceType': 'Patient',
          'id': 'example',
          'active': true,
          'name': [
            {
              'family': 'Doe',
              'given': ['John'],
            }
          ],
        };
        expect(deepCompare(json1, json2), isTrue);
      });

      test('two Patient JSONs with different names are not equal', () {
        final json1 = {
          'resourceType': 'Patient',
          'id': 'example',
          'name': [
            {'family': 'Doe'},
          ],
        };
        final json2 = {
          'resourceType': 'Patient',
          'id': 'example',
          'name': [
            {'family': 'Smith'},
          ],
        };
        expect(deepCompare(json1, json2), isFalse);
      });
    });
  });

  group('CustomStringEquality', () {
    const equality = CustomStringEquality();

    test('plain strings compare normally', () {
      expect(equality.equals('abc', 'abc'), isTrue);
      expect(equality.equals('abc', 'def'), isFalse);
    });

    test('URL-encoded strings decode for comparison', () {
      expect(equality.equals('hello%20world', 'hello world'), isTrue);
    });

    test('hash is consistent for equal strings', () {
      expect(
        equality.hash('hello%20world'),
        equality.hash('hello world'),
      );
    });

    test('isValidKey accepts strings', () {
      expect(equality.isValidKey('test'), isTrue);
      expect(equality.isValidKey(42), isFalse);
    });
  });

  group('CustomBaseEquality', () {
    const equality = CustomBaseEquality();

    test('delegates string comparison to CustomStringEquality', () {
      expect(equality.equals('a%20b', 'a b'), isTrue);
    });

    test('non-string objects use default equality', () {
      expect(equality.equals(1, 1), isTrue);
      expect(equality.equals(1, 2), isFalse);
    });

    test('hash delegates for strings', () {
      expect(equality.hash('a%20b'), equality.hash('a b'));
    });

    test('hash delegates for non-strings', () {
      expect(equality.hash(42), 42.hashCode);
    });
  });
}
