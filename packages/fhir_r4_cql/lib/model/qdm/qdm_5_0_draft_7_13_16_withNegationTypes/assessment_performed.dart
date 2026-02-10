import 'qdm_5_0_draft_7_13_16_withNegationTypes.dart';

/// Data elements that meet criteria using this datatype should document
/// completion of the assessment indicated by the QDM category and its corresponding
/// value set.

class AssessmentPerformed {
  final Component? component;
  final dynamic result;

  AssessmentPerformed({
    this.result,
    this.component,
  });
}
