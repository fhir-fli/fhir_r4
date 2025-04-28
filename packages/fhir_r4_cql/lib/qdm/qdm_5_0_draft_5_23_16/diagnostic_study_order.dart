import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// a request by a clinician or appropriately licensed care provider to an appropriate
/// provider or organization to perform the diagnostic study indicated by the QDM
/// category and its corresponding value set. The request may be in the form of a
/// consultation or a direct order to the organization that performs the diagnostic
/// study. Diagnostic studies are those that are not performed in the clinical
/// laboratory. Such studies include but are not limited to imaging studies, cardiology
/// studies (electrocardiogram, treadmill stress testing), pulmonary function testing,
/// vascular laboratory testing, and others. NOTE: startDatetime and stopDatetime have
/// been replaced by authorDatetime corresponding to "author time" of the record in the
/// Quality Reporting Document Architecture (QRDA). This corresponds to when the order
/// was signed.

class DiagnosticStudyOrder {
  final LiteralDateTime? authorDatetime;
  final CodeableConcept? method;
  final CodeableConcept? radiationDosage;
  final CodeableConcept? radiationDuration;
  final CodeableConcept? reason;

  DiagnosticStudyOrder({
    this.authorDatetime,
    this.reason,
    this.radiationDosage,
    this.radiationDuration,
    this.method,
  });
}
