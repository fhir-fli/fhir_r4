// ignore_for_file: unused_local_variable

import 'package:fhir_r4/fhir_r4.dart';

void main() {
  final patient = Patient(
    id: FhirString('123'),
    name: [
      HumanName(
        family: 'Doe'.toFhirString,
        given: ['John'.toFhirString],
      ),
    ],
    birthDate: '1990-01-01'.toFhirDate,
  );

// Serialize to JSON Map
  final jsonMap = patient.toJson();

// Serialize directly to JSON String (convenience method)
  final jsonString = patient.toJsonString();

// Deserialize from JSON
  final parsedPatient = Patient.fromJson(jsonMap);

// Deserialize directly from JSON String (convenience method)
  final parsedFromString = Patient.fromJsonString(jsonString);

// YAML support
  final yamlString = patient.toYaml();

// Parse any FHIR resource from JSON
  final unknownResource = Resource.fromJson(jsonMap);

// Type checking
  if (unknownResource is Patient) {
    // Work with Patient fields
  }

// Creating primitive types
  final myString = FhirString('Hello');
  final myBoolean = FhirBoolean(true);
  final myDateTime = FhirDateTime.fromString('2023-06-15T13:30:45Z');

// Using extension methods
  final myString2 = 'Hello'.toFhirString;
  final myBoolean2 = true.toFhirBoolean;

// Accessing values
  final stringValue = myString.valueString;
  final boolValue = myBoolean.valueBoolean;

// Example with a polymorphic field
  final carePlanDetail = CarePlanDetail(
    status: CarePlanActivityStatus.inProgress,
    scheduledX: Timing(
      repeat: TimingRepeat(
        frequency: FhirPositiveInt(1),
        period: FhirDecimal(1),
        periodUnit: UnitsOfTime.d,
      ),
    ),
  );

// Access polymorphic fields safely
  if (carePlanDetail.scheduledTiming != null) {
    // Work with Timing
  } else if (carePlanDetail.scheduledPeriod != null) {
    // Work with Period
  }

// Using predefined values
  final status = AccountStatus.active;

// Accessing metadata
  final displayText = status.display?.valueString; // 'in-progress'
  final system = status
      .system?.valueString; // 'http://hl7.org/fhir/ValueSet/account-status'

// Modify with copyWith
  final modifiedPatient = patient.copyWith(
    active: FhirBoolean(true),
  );
}
