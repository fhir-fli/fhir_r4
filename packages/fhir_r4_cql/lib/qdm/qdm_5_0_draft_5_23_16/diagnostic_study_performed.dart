import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the diagnostic study indicated by the QDM category and its
/// corresponding value set.

class DiagnosticStudyPerformed {
  final CodeableConcept? facilityLocation;
  final Interval? interval;
  final CodeableConcept? method;
  final CodeableConcept? radiationDosage;
  final CodeableConcept? radiationDuration;
  final CodeableConcept? reason;
  final CodeableConcept? result;
  final CodeableConcept? status;

  DiagnosticStudyPerformed({
    this.interval,
    this.reason,
    this.result,
    this.status,
    this.radiationDosage,
    this.radiationDuration,
    this.method,
    this.facilityLocation,
  });
}
