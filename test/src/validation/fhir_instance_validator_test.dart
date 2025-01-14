import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';

void main() async {
  final resource = {
    'name': 'John Doe',
    'age': 30,
  };

  final profile = {
    'name': jsonEncode({'name': 'name', 'type': 'string', 'required': true}),
    'age': jsonEncode({'name': 'age', 'type': 'integer', 'required': true}),
    'address':
        jsonEncode({'name': 'address', 'type': 'string', 'required': false}),
  };

  final profiles = ['name', 'age', 'address'];

  final ValidationSupport mockValidationSupport =
      LocalValidationSupport(profile);

  final validator = FhirInstanceValidator(mockValidationSupport);
  final messages = await validator.validate(resource, profiles);

  for (final message in messages) {
    print('${message.severity}: ${message.message} at ${message.path}');
  }
}
