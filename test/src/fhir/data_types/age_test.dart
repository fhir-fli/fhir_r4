import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

final age1 = {
  'id': 'age-123',
  'extension': [
    {
      'url': 'http://example.com/extension',
      'valueString': 'Additional information',
    }
  ],
  'value': 27.5,
  '_value': {
    'id': 'value-123',
    'extension': [
      {'url': 'http://example.com/element-extension', 'valueBoolean': true},
    ],
  },
  'comparator': '>',
  '_comparator': {
    'id': 'comparator-123',
  },
  'unit': 'years',
  '_unit': {
    'id': 'unit-123',
  },
  'system': 'http://unitsofmeasure.org',
  '_system': {
    'id': 'system-123',
  },
  'code': 'a',
  '_code': {
    'id': 'code-123',
  },
};
void main() {
  final age = Age.fromJson(age1);
  test('Should be able to parse a valid JSON', () {
    expect(age.id?.toString(), 'age-123');
    expect(age.extension_?[0].url.toString(), 'http://example.com/extension');
    expect(
      age.extension_?[0].valueString,
      'Additional information'.toFhirString,
    );
    expect(age.value?.value, 27.5);
    expect(age.valueElement?.id?.toString(), 'value-123');
    expect(
      age.valueElement?.extension_?[0].url,
      'http://example.com/element-extension'.toFhirString,
    );
    expect(age.valueElement?.extension_?[0].valueBoolean?.value, true);
    expect(age.comparator, QuantityComparator.greaterThan);
    expect(age.comparatorElement?.id?.toString(), 'comparator-123');
    expect(age.unit, 'years'.toFhirString);
    expect(age.unitElement?.id.toString(), 'unit-123');
    expect(age.system?.toString(), 'http://unitsofmeasure.org');
    expect(age.systemElement?.id.toString(), 'system-123');
    expect(age.code?.toString(), 'a');
    expect(age.codeElement?.id.toString(), 'code-123');
  });

  test('Serialize/Deserialize', () {
    final json = age.toJson();
    expect(const DeepCollectionEquality().equals(age1, json), true);
  });
}
