import 'qdm_5_0_draft.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category and its corresponding value set must be communicated
/// from a provider to a patient.

class CommunicationFromProviderToPatient {
  final Interval? interval;
  final CodeableConcept? negationRationale;

  CommunicationFromProviderToPatient({
    this.interval,
    this.negationRationale,
  });
}
