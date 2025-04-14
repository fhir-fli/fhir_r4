import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document a
/// request by a clinician or appropriately
/// licensed care provider to an
/// appropriate provider or organization to
/// perform the diagnostic study
/// indicated by the QDM category and its
/// corresponding value set. The
/// request may be in the form of a
/// consultation or a direct order to
/// the organization that performs the
/// diagnostic study. Diagnostic
/// studies are those that are not performed
/// in the clinical laboratory.
/// Such studies include but are not limited
/// to imaging studies,
/// cardiology studies (electrocardiogram, treadmill
/// stress testing),
/// pulmonary function testing, vascular laboratory
/// testing, and others.
/// NOTE: The start and stop datetime of Device,
/// Order reflects the “author time” of the record in the Quality
/// Reporting Document Architecture (QRDA). This corresponds to when the
/// order was signed.
///

class DiagnosticStudyOrder {
  final LiteralConcept? method;
  final LiteralConcept? negationRationale;
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;
  final LiteralConcept? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  DiagnosticStudyOrder({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.radiationDosage,
    this.radiationDuration,
    this.method,
  });
}
