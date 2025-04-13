import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the device indicated by the QDM category and its corresponding value set is in
/// use, or impacts or alters the treatment, care plan, or encounter (e.g., an
/// antithrombotic device has been placed on the patient's legs to prevent
/// thromboembolism, or a cardiac pacemaker is in place). Timing: The Relevant Period
/// addresses: startTime – When the device is inserted or first used stopTime – when the
/// device is removed or last used

class DeviceApplied {
  final LiteralCode? anatomicalApproachSite;
  final LiteralCode? anatomicalLocationSite;
  final LiteralDateTime? authorDatetime;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralDateTimeInterval? relevantPeriod;

  DeviceApplied({
    this.authorDatetime,
    this.relevantPeriod,
    this.negationRationale,
    this.reason,
    this.anatomicalLocationSite,
    this.anatomicalApproachSite,
  });
}
