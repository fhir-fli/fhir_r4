import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_5.dart';

/// Data elements that meet criteria using this datatype should document
/// that the device indicated by the QDM category and its corresponding value set is in
/// use, or impacts or alters the treatment, care plan, or encounter (e.g., an
/// antithrombotic device has been placed on the patient's legs to prevent
/// thromboembolism, or a cardiac pacemaker is in place). Timing: The Relevant Period
/// addresses: startTime – When the device is inserted or first used stopTime – when the
/// device is removed or last used

class DeviceApplied {
  final LiteralCode? anatomicalLocationSite;
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final QDMEntity? performer;
  final LiteralCode? reason;
  final LiteralDateTime? relevantDatetime;
  final LiteralDateTimeInterval? relevantPeriod;

  DeviceApplied({
    this.authorDatetime,
    this.relevantDatetime,
    this.relevantPeriod,
    this.negationRationale,
    this.reason,
    this.anatomicalLocationSite,
    this.performer,
  });
}
