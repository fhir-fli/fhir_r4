import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_0_draft_7_13_16_withNegationTypes.dart';

/// Data elements that meet criteria using this datatype should document
/// the laboratory test indicated by the QDM category and its corresponding value set
/// was performed. Timing: The Relevant Period addresses: startTime – When the
/// laboratory test is initiated (i.e., the time the specimen collection begins)
/// stopTime – when the laboratory test is completed (i.e., the time the specimen
/// collection ends) Note – the time that the result report is available is a separate
/// attribute than the time of the study (specimen collection)

class LaboratoryTestPerformed {
  final Component? component;
  final LiteralCode? referenceRangeHigh;
  final LiteralCode? referenceRangeLow;
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;
  final LiteralCode? status;

  LaboratoryTestPerformed({
    this.relevantPeriod,
    this.status,
    this.result,
    this.referenceRangeHigh,
    this.referenceRangeLow,
    this.component,
  });
}
