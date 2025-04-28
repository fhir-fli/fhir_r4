import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a characteristic of the patient not
/// represented by one of the more specific Individual Characteristic
/// datatypes.
///

class PatientCharacteristic {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  PatientCharacteristic({
    this.startDatetime,
    this.stopDatetime,
  });
}
