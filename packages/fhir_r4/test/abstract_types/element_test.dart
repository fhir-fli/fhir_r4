import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('Element', () {
    group('construction', () {
      test('creates empty Element', () {
        const element = Element();
        expect(element.id, isNull);
        expect(element.extension_, isNull);
        expect(element.disallowExtensions, false);
      });

      test('creates Element with id', () {
        final element = Element(id: 'elem-1'.toFhirString);
        expect(element.id?.valueString, 'elem-1');
      });

      test('creates Element with extensions', () {
        final element = Element(
          extension_: [
            FhirExtension(
              url: FhirString('http://example.org/ext'),
              valueString: 'value'.toFhirString,
            ),
          ],
        );
        expect(element.extension_, isNotNull);
        expect(element.extension_!.length, 1);
      });
    });

    group('fromJson', () {
      test('parses Element from JSON with id', () {
        final json = <String, dynamic>{'id': 'from-json'};
        final element = Element.fromJson(json);
        expect(element.id?.valueString, 'from-json');
      });

      test('parses Element from JSON with extensions', () {
        final json = <String, dynamic>{
          'extension': [
            {
              'url': 'http://example.org/ext',
              'valueString': 'test',
            }
          ],
        };
        final element = Element.fromJson(json);
        expect(element.extension_, isNotNull);
        expect(element.extension_!.length, 1);
        expect(
          element.extension_!.first.url.valueString,
          'http://example.org/ext',
        );
      });

      test('parses Element from empty JSON', () {
        final element = Element.fromJson(<String, dynamic>{});
        expect(element.id, isNull);
        expect(element.extension_, isEmpty);
      });
    });

    group('fromJsonString', () {
      test('parses from JSON string', () {
        const jsonStr = '{"id": "str-elem"}';
        final element = Element.fromJsonString(jsonStr);
        expect(element.id?.valueString, 'str-elem');
      });

      test('throws FormatException for non-map', () {
        expect(
          () => Element.fromJsonString('[]'),
          throwsA(isA<FormatException>()),
        );
      });
    });

    group('fromYaml', () {
      test('parses from YAML string', () {
        const yaml = 'id: yaml-elem';
        final element = Element.fromYaml(yaml);
        expect(element.id?.valueString, 'yaml-elem');
      });

      test('throws on invalid input type', () {
        expect(
          () => Element.fromYaml(42),
          throwsA(isA<ArgumentError>()),
        );
      });
    });

    group('toJson', () {
      test('serializes id', () {
        final element = Element(id: 'ser-id'.toFhirString);
        final json = element.toJson();
        expect(json['id'], 'ser-id');
      });

      test('serializes extensions', () {
        final element = Element(
          extension_: [
            FhirExtension(
              url: FhirString('http://example.org/ext'),
              valueBoolean: FhirBoolean(true),
            ),
          ],
        );
        final json = element.toJson();
        expect(json['extension'], isA<List>());
        expect((json['extension'] as List).length, 1);
      });

      test('empty Element serializes to empty map', () {
        const element = Element();
        final json = element.toJson();
        expect(json, isEmpty);
      });
    });

    group('toJson round-trip', () {
      test('Element round-trips through JSON', () {
        final element = Element(
          id: 'rt-elem'.toFhirString,
          extension_: [
            FhirExtension(
              url: FhirString('http://example.org/ext'),
              valueString: 'round-trip'.toFhirString,
            ),
          ],
        );

        final json = element.toJson();
        final restored = Element.fromJson(json);
        expect(restored.id?.valueString, 'rt-elem');
        expect(restored.extension_!.length, 1);
      });
    });

    group('copyWith', () {
      test('copies with new id', () {
        final element = Element(id: 'old'.toFhirString);
        final copied = element.copyWith(id: 'new'.toFhirString);
        expect(copied.id?.valueString, 'new');
      });

      test('copies with new extensions', () {
        final element = Element(id: 'e'.toFhirString);
        final copied = element.copyWith(
          extension_: [
            FhirExtension(
              url: FhirString('http://new-ext.org'),
              valueInteger: FhirInteger(42),
            ),
          ],
        );
        expect(copied.extension_!.length, 1);
        expect(copied.id?.valueString, 'e');
      });

      test('copyWith with no args returns equal element', () {
        final element = Element(id: 'same'.toFhirString);
        final copied = element.copyWith();
        expect(copied.id?.valueString, 'same');
      });
    });

    group('hasId', () {
      test('returns true when id has value', () {
        final element = Element(id: 'has-id'.toFhirString);
        expect(element.hasId, isTrue);
      });

      test('returns false when id is null', () {
        const element = Element();
        expect(element.hasId, isFalse);
      });
    });

    group('extension handling', () {
      test('hasExtension returns false for no extensions', () {
        const element = Element();
        expect(element.hasExtension(), isFalse);
      });

      test('hasExtension returns true when extensions present', () {
        final element = Element(
          extension_: [
            FhirExtension(url: FhirString('http://example.org/ext')),
          ],
        );
        expect(element.hasExtension(), isTrue);
      });

      test('getExtensionsByUrl finds matching extensions', () {
        final element = Element(
          extension_: [
            FhirExtension(
              url: FhirString('http://example.org/ext-a'),
              valueString: 'a'.toFhirString,
            ),
            FhirExtension(
              url: FhirString('http://example.org/ext-b'),
              valueString: 'b'.toFhirString,
            ),
          ],
        );
        final matches = element.getExtensionsByUrl('http://example.org/ext-a');
        expect(matches, hasLength(1));
        expect(matches.first.valueString?.valueString, 'a');
      });

      test('getExtensionsByUrl returns empty for non-matching url', () {
        final element = Element(
          extension_: [
            FhirExtension(
              url: FhirString('http://example.org/ext-a'),
              valueString: 'a'.toFhirString,
            ),
          ],
        );
        final matches = element.getExtensionsByUrl('http://example.org/ext-z');
        expect(matches, isEmpty);
      });

      test('hasExtensionByUrl returns true for present extension', () {
        final element = Element(
          extension_: [
            FhirExtension(url: FhirString('http://example.org/ext-a')),
          ],
        );
        expect(
          element.hasExtensionByUrl('http://example.org/ext-a'),
          isTrue,
        );
        expect(
          element.hasExtensionByUrl('http://example.org/ext-b'),
          isFalse,
        );
      });
    });

    group('equalsDeep', () {
      test('two identical Elements are deeply equal', () {
        final e1 = Element(id: 'deep'.toFhirString);
        final e2 = Element(id: 'deep'.toFhirString);
        expect(e1.equalsDeep(e2), isTrue);
      });

      test('two Elements with different ids are not deeply equal', () {
        final e1 = Element(id: 'a'.toFhirString);
        final e2 = Element(id: 'b'.toFhirString);
        expect(e1.equalsDeep(e2), isFalse);
      });

      test('equalsDeep with null returns false', () {
        final e1 = Element(id: 'a'.toFhirString);
        expect(e1.equalsDeep(null), isFalse);
      });

      test('two Elements with same extensions are deeply equal', () {
        final ext = [
          FhirExtension(
            url: FhirString('http://example.org/ext'),
            valueString: 'val'.toFhirString,
          ),
        ];
        final e1 = Element(id: 'ext'.toFhirString, extension_: ext);
        final e2 = Element(
          id: 'ext'.toFhirString,
          extension_: [
            FhirExtension(
              url: FhirString('http://example.org/ext'),
              valueString: 'val'.toFhirString,
            ),
          ],
        );
        expect(e1.equalsDeep(e2), isTrue);
      });
    });

    group('equalsShallow', () {
      test('two Elements with same id are shallowly equal', () {
        final e1 = Element(
          id: 'shallow'.toFhirString,
          extension_: [
            FhirExtension(url: FhirString('http://example.org/a')),
          ],
        );
        final e2 = Element(
          id: 'shallow'.toFhirString,
          extension_: [
            FhirExtension(url: FhirString('http://example.org/b')),
          ],
        );
        expect(e1.equalsShallow(e2), isTrue);
      });
    });

    group('getChildrenByName', () {
      test('returns id when name is "id"', () {
        final element = Element(id: 'child-id'.toFhirString);
        final children = element.getChildrenByName('id');
        expect(children.length, 1);
        expect((children.first as FhirString).valueString, 'child-id');
      });

      test('returns extensions when name is "extension"', () {
        final element = Element(
          extension_: [
            FhirExtension(url: FhirString('http://example.org/ext')),
          ],
        );
        final children = element.getChildrenByName('extension');
        expect(children.length, 1);
        expect(children.first, isA<FhirExtension>());
      });

      test('returns empty list for unknown name', () {
        final element = Element(id: 'e'.toFhirString);
        final children = element.getChildrenByName('unknown');
        expect(children, isEmpty);
      });
    });

    group('isEmpty', () {
      // Element.isEmpty() calls super.isEmpty() which checks
      // `this is PrimitiveType`, so for Element (not a PrimitiveType)
      // super.isEmpty() always returns false, making Element.isEmpty()
      // always return false.
      test('Element isEmpty returns false (not a PrimitiveType)', () {
        const element = Element();
        expect(element.isEmpty(), isFalse);
      });

      test('Element with extensions isEmpty still returns false', () {
        final element = Element(
          extension_: [
            FhirExtension(url: FhirString('http://example.org/ext')),
          ],
        );
        expect(element.isEmpty(), isFalse);
      });
    });

    group('fhirType', () {
      test('returns "Element"', () {
        const element = Element();
        expect(element.fhirType, 'Element');
      });
    });

    group('isMetadataBased', () {
      test('Element is metadata based', () {
        const element = Element();
        expect(element.isMetadataBased, isTrue);
      });
    });

    group('clone', () {
      test('clone produces equal element', () {
        final element = Element(
          id: 'clone'.toFhirString,
          extension_: [
            FhirExtension(url: FhirString('http://example.org/ext')),
          ],
        );
        final cloned = element.clone();
        expect(cloned, isA<Element>());
        expect((cloned as Element).id?.valueString, 'clone');
      });
    });
  });
}
