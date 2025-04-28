import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// a request by a clinician or appropriately licensed care provider to an appropriate
/// provider or organization to perform the diagnostic study indicated by the QDM
/// category and its corresponding value set. The request may be in the form of a
/// consultation or a direct order to the organization that performs the diagnostic
/// study. Diagnostic studies are those that are not performed in the clinical
/// laboratory. Such studies include but are not limited to imaging studies, cardiology
/// studies (electrocardiogram, treadmill stress testing), pulmonary function testing,
/// vascular laboratory testing, and others.

class DiagnosticStudyOrder {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final QDMEntity? requester;

  DiagnosticStudyOrder({
    this.authorDatetime,
    this.reason,
    this.negationRationale,
    this.requester,
  });
}
