import 'package:cql/engine/types/cql_literal.dart';

///
/// The Patient Characteristic Birthdate data element should document the patient’s date of birth.
/// Note: Patient Characteristic Birthdate is fixed to LOINC code 21112-8 (Birth date) and
/// therefore cannot be further qualified with a value set.
///

class PatientCharacteristicBirthdate {
  final LiteralDateTime? birthDatetime;

  PatientCharacteristicBirthdate({
    this.birthDatetime,
  });
}
