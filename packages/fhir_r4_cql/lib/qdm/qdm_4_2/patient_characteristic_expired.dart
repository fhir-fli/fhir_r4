import 'package:fhir_r4_cql/fhir_r4_cql.dart';

///
/// The Patient Characteristic Expired data element
/// should document that
/// the patient is deceased.
/// Note: Patient
/// Characteristic Expired is fixed to SNOMED-CT® code
/// 419099009 (Dead)
/// and therefore cannot be further qualified with a
/// value set.
///

class PatientCharacteristicExpired {
  final LiteralConcept? cause;
  final LiteralDate? date;
  final LiteralTime? time;

  PatientCharacteristicExpired({
    this.date,
    this.time,
    this.cause,
  });
}
