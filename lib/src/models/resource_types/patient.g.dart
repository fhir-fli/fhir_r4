part of 'patient.dart';

/// Indicates if the individual is deceased or not.
sealed class DeceasedXPatientPatient extends DataType {}

/// Indicates if the individual is deceased or not.
class BooleanDeceasedPatientPatient extends FhirBoolean
    implements DeceasedXPatientPatient {
  /// Constructor for [BooleanDeceasedPatientPatient]
  BooleanDeceasedPatientPatient(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanDeceasedPatientPatient.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanDeceasedPatientPatient;
}

/// Indicates if the individual is deceased or not.
class DateTimeDeceasedPatientPatient extends FhirDateTime
    implements DeceasedXPatientPatient {
  /// Factory constructor to create a [FhirDateTime] from a [String]
  factory DateTimeDeceasedPatientPatient.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDateTime.fromString(
        input,
        element: element,
        id: id,
        extension_: extension_,
      ) as DateTimeDeceasedPatientPatient;

  /// Factory constructor to create a [FhirDateTime] from a [DateTime]
  factory DateTimeDeceasedPatientPatient.fromDateTime(
    DateTime input, [
    Element? element,
  ]) =>
      FhirDateTime.fromDateTime(input, element: element)
          as DateTimeDeceasedPatientPatient;

  /// Factory constructor for super class
  factory DateTimeDeceasedPatientPatient.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirDateTime.fromJson(json) as DateTimeDeceasedPatientPatient;
}

/// Indicates whether the patient is part of a multiple (boolean) or
/// indicates the actual birth order (integer).
sealed class MultipleBirthXPatientPatient extends DataType {}

/// Indicates whether the patient is part of a multiple (boolean) or
/// indicates the actual birth order (integer).
class BooleanMultipleBirthPatientPatient extends FhirBoolean
    implements MultipleBirthXPatientPatient {
  /// Constructor for [BooleanMultipleBirthPatientPatient]
  BooleanMultipleBirthPatientPatient(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory BooleanMultipleBirthPatientPatient.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirBoolean.fromJson(json) as BooleanMultipleBirthPatientPatient;
}

/// Indicates whether the patient is part of a multiple (boolean) or
/// indicates the actual birth order (integer).
class IntegerMultipleBirthPatientPatient extends FhirInteger
    implements MultipleBirthXPatientPatient {
  /// Constructor for [IntegerMultipleBirthPatientPatient]
  IntegerMultipleBirthPatientPatient(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory IntegerMultipleBirthPatientPatient.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirInteger.fromJson(json) as IntegerMultipleBirthPatientPatient;
}
