import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that the device indicated by the QDM category and its corresponding value set is in
/// use, or impacts or alters the treatment, care plan, or encounter (e.g., an
/// antithrombotic device has been placed on the patient's legs to prevent
/// thromboembolism, or a cardiac pacemaker is in place). NOTE: This datatype uses
/// "removalDatetime" NOT "stopDatetime".

class DeviceApplied {
  final LiteralCode? anatomialLocationSite;
  final LiteralCode? anatomicalApproachSite;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralDateTime? removalDatetime;
  final LiteralDateTime? startDatetime;

  DeviceApplied({
    this.startDatetime,
    this.removalDatetime,
    this.negationRationale,
    this.reason,
    this.anatomialLocationSite,
    this.anatomicalApproachSite,
  });
}
