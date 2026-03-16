import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

void main() {
  group('DomainResource', () {
    group('text (Narrative) field', () {
      test('stores and serializes Narrative text', () {
        final patient = Patient(
          id: 'dr-1'.toFhirString,
          text: Narrative(
            status: NarrativeStatus.generated,
            div: '<div xmlns="http://www.w3.org/1999/xhtml">Test</div>'
                .toFhirXhtml,
          ),
        );

        expect(patient.text, isNotNull);
        expect(patient.text?.status.valueString, 'generated');

        final json = patient.toJson();
        expect(json['text'], isA<Map<String, dynamic>>());
        final textMap = json['text'] as Map<String, dynamic>;
        expect(textMap['status'], 'generated');
      });
    });

    group('contained resources', () {
      test('stores contained resources', () {
        final containedMed = Medication(
          id: 'med-1'.toFhirString,
          code: CodeableConcept(text: 'Aspirin'.toFhirString),
        );
        final request = MedicationRequest(
          id: 'mr-1'.toFhirString,
          status: MedicationrequestStatus.active,
          intent: MedicationRequestIntent.order,
          medicationX: Reference(reference: '#med-1'.toFhirString),
          subject: Reference(reference: 'Patient/1'.toFhirString),
          contained: [containedMed],
        );

        expect(request.contained, isNotNull);
        expect(request.contained!.length, 1);
        expect(request.contained!.first, isA<Medication>());
      });

      test('contained resources round-trip through JSON', () {
        final containedOrg = Organization(
          id: 'org-in'.toFhirString,
          name: 'Contained Org'.toFhirString,
        );
        final patient = Patient(
          id: 'p-contained'.toFhirString,
          contained: [containedOrg],
        );

        final json = patient.toJson();
        expect(json['contained'], isA<List>());
        expect((json['contained'] as List).length, 1);

        final restored = Resource.fromJson(json) as Patient;
        expect(restored.contained, isNotNull);
        expect(restored.contained!.length, 1);
        expect(restored.contained!.first, isA<Organization>());
      });
    });

    group('extension_ field', () {
      test('stores extensions', () {
        final patient = Patient(
          id: 'ext-1'.toFhirString,
          extension_: [
            FhirExtension(
              url: FhirString('http://example.org/fhir/ext/race'),
              valueString: 'test-value'.toFhirString,
            ),
          ],
        );

        expect(patient.extension_, isNotNull);
        expect(patient.extension_!.length, 1);
        expect(
          patient.extension_!.first.url.valueString,
          'http://example.org/fhir/ext/race',
        );
      });

      test('extensions round-trip through JSON', () {
        final patient = Patient(
          id: 'ext-rt'.toFhirString,
          extension_: [
            FhirExtension(
              url: FhirString('http://example.org/ext'),
              valueBoolean: FhirBoolean(true),
            ),
          ],
        );

        final json = patient.toJson();
        expect(json['extension'], isA<List>());

        final restored = Resource.fromJson(json) as Patient;
        expect(restored.extension_!.first.url.valueString,
            'http://example.org/ext');
      });
    });

    group('modifierExtension field', () {
      test('stores modifier extensions', () {
        final patient = Patient(
          id: 'mext-1'.toFhirString,
          modifierExtension: [
            FhirExtension(
              url: FhirString('http://example.org/fhir/mext'),
              valueBoolean: FhirBoolean(false),
            ),
          ],
        );

        expect(patient.modifierExtension, isNotNull);
        expect(patient.modifierExtension!.length, 1);
      });
    });

    group('accessing fields through Resource interface', () {
      test('Resource.fromJson returns DomainResource for Patient', () {
        final json = <String, dynamic>{
          'resourceType': 'Patient',
          'id': 'dr-interface',
          'text': {
            'status': 'generated',
            'div':
                '<div xmlns="http://www.w3.org/1999/xhtml">Interface test</div>',
          },
        };
        final resource = Resource.fromJson(json);
        expect(resource, isA<DomainResource>());
        final domain = resource as DomainResource;
        expect(domain.text?.status.valueString, 'generated');
      });

      test('DomainResource.fromJson works like Resource.fromJson', () {
        final json = <String, dynamic>{
          'resourceType': 'Patient',
          'id': 'dr-factory',
        };
        final domain = DomainResource.fromJson(json);
        expect(domain, isA<Patient>());
        expect(domain.id?.valueString, 'dr-factory');
      });
    });

    group('DomainResource.fromJsonString', () {
      test('parses from JSON string', () {
        const jsonStr = '{"resourceType":"Patient","id":"from-str"}';
        final domain = DomainResource.fromJsonString(jsonStr);
        expect(domain, isA<Patient>());
        expect(domain.id?.valueString, 'from-str');
      });

      test('throws FormatException for non-map input', () {
        expect(
          () => DomainResource.fromJsonString('"just a string"'),
          throwsA(isA<FormatException>()),
        );
      });
    });

    group('DomainResource.fromYaml', () {
      test('parses Patient from YAML string', () {
        const yaml = '''
resourceType: Patient
id: from-yaml
active: true
''';
        final domain = DomainResource.fromYaml(yaml);
        expect(domain, isA<Patient>());
        expect(domain.id?.valueString, 'from-yaml');
      });

      test('throws on invalid input type', () {
        expect(
          () => DomainResource.fromYaml(123),
          throwsA(isA<ArgumentError>()),
        );
      });
    });

    group('copyWith with DomainResource-specific fields', () {
      test('copies Patient with new text', () {
        final patient = Patient(
          id: 'copy-dr'.toFhirString,
          active: FhirBoolean(true),
        );
        final copied = patient.copyWith(
          text: Narrative(
            status: NarrativeStatus.generated,
            div: '<div xmlns="http://www.w3.org/1999/xhtml">Copy</div>'
                .toFhirXhtml,
          ),
        );
        expect((copied as Patient).text?.status.valueString, 'generated');
        expect(copied.active?.valueBoolean, true);
      });

      test('copies Patient with new contained resources', () {
        final patient = Patient(id: 'copy-c'.toFhirString);
        final copied = patient.copyWith(
          contained: [
            Organization(id: 'inner'.toFhirString),
          ],
        );
        expect((copied as Patient).contained?.length, 1);
      });

      test('copies Patient with new extensions', () {
        final patient = Patient(id: 'copy-ext'.toFhirString);
        final copied = patient.copyWith(
          extension_: [
            FhirExtension(
              url: FhirString('http://example.org/ext'),
              valueString: 'new'.toFhirString,
            ),
          ],
        );
        expect((copied as Patient).extension_?.length, 1);
      });
    });

    group('toJson includes DomainResource fields', () {
      test('includes text, contained, extension, modifierExtension', () {
        final patient = Patient(
          id: 'full-dr'.toFhirString,
          text: Narrative(
            status: NarrativeStatus.generated,
            div: '<div xmlns="http://www.w3.org/1999/xhtml">Full</div>'
                .toFhirXhtml,
          ),
          contained: [Organization(id: 'c1'.toFhirString)],
          extension_: [
            FhirExtension(
              url: FhirString('http://example.org/ext'),
              valueString: 'val'.toFhirString,
            ),
          ],
          modifierExtension: [
            FhirExtension(
              url: FhirString('http://example.org/mext'),
              valueBoolean: FhirBoolean(true),
            ),
          ],
        );

        final json = patient.toJson();
        expect(json.containsKey('text'), isTrue);
        expect(json.containsKey('contained'), isTrue);
        expect(json.containsKey('extension'), isTrue);
        expect(json.containsKey('modifierExtension'), isTrue);
      });

      test('omits null DomainResource fields from JSON', () {
        final patient = Patient(id: 'minimal'.toFhirString);
        final json = patient.toJson();
        expect(json.containsKey('text'), isFalse);
        expect(json.containsKey('contained'), isFalse);
      });
    });

    group('resourceTypeFromString / resourceTypeToString', () {
      test('resourceTypeFromString returns valid type', () {
        final type = DomainResource.resourceTypeFromString('Observation');
        expect(type, R4ResourceType.Observation);
      });

      test('resourceTypeToString returns string', () {
        final str =
            DomainResource.resourceTypeToString(R4ResourceType.Observation);
        expect(str, contains('Observation'));
      });
    });
  });
}
