import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

import 'assets/sd_tleft1.dart';

void main() {
  group('FHIR Instance Validator Tests', () {
    final resource = {
      'resourceType': 'TLeft',
      'a': 'valid string',
    };

    final invalidResource = {
      'resourceType': 'TLeft',
    };

    final validationSupport = LocalValidationSupport({
      'http://hl7.org/fhir/StructureDefinition/tutorial-left-1':
          jsonEncode(sdTLeft1),
    });

    final validator = FhirInstanceValidator(validationSupport);

    test('Valid resource passes validation', () async {
      final messages = await validator.validate(
        resource,
        ['http://hl7.org/fhir/StructureDefinition/tutorial-left-1'],
      );

      expect(messages, isEmpty);
    });

    test('Invalid resource fails validation', () async {
      final messages = await validator.validate(
        invalidResource,
        ['http://hl7.org/fhir/StructureDefinition/tutorial-left-1'],
      );

      expect(messages, isNotEmpty);
      expect(messages.first.message, contains('Missing required field: a'));
    });
  });
}
