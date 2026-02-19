import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// that the patient has one or more of the payers indicated by the QDM category and its
/// corresponding value set. Timing: The Relevant Period addresses: startTime – The
/// first day of insurance coverage with the referenced payer stopTime – The last day of
/// insurance coverage with the referenced payer

class PatientCharacteristicPayer {
  final LiteralCode? cause;
  final LiteralDateTimeInterval? relevantPeriod;

  PatientCharacteristicPayer({
    this.relevantPeriod,
    this.cause,
  });
}
