import 'qdm_5_0_draft.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category and its corresponding value set must be communicated
/// from one provider to another.

class CommunicationFromProviderToProvider {
  final Interval? interval;
  final CodeableConcept? negationRationale;

  CommunicationFromProviderToProvider({
    this.interval,
    this.negationRationale,
  });
}
