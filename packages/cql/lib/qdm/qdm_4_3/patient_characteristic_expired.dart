import 'package:cql/engine/types/cql_literal.dart';

/// The Patient Characteristic Expired data element should document that
/// the patient is deceased. Note: Patient Characteristic Expired is fixed to SNOMED-CT®
/// code 419099009 (Dead) and therefore cannot be further qualified with a value set.

class PatientCharacteristicExpired {
  final LiteralCode? cause;
  final LiteralDate? date;
  final LiteralTime? time;

  PatientCharacteristicExpired({
    this.date,
    this.time,
    this.cause,
  });
}
