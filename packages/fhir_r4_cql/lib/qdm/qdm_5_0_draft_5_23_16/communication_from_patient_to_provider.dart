import 'qdm_5_0_draft_5_23_16.dart';

/// To meet criteria using this datatype, the communication indicated by
/// the Communication QDM category and its corresponding value set must be communicated
/// from a patient to a provider.

class CommunicationFromPatientToProvider {
  final Interval? interval;

  CommunicationFromPatientToProvider({
    this.interval,
  });
}
