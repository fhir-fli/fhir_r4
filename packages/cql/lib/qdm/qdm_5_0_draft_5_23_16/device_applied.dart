import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_0_draft_5_23_16.dart';

/// Data elements that meet criteria using this datatype should document
/// that the device indicated by the QDM category and its corresponding value set is in
/// use, or impacts or alters the treatment, care plan, or encounter (e.g., an
/// antithrombotic device has been placed on the patient's legs to prevent
/// thromboembolism, or a cardiac pacemaker is in place). NOTE: startDatetime has been
/// changed to applicationDatetime

class DeviceApplied {
  final CodeableConcept? anatomialLocationSite;
  final CodeableConcept? anatomicalApproachSite;
  final LiteralDateTime? applicationDatetime;
  final CodeableConcept? reason;
  final LiteralDateTime? removalDatetime;

  DeviceApplied({
    this.applicationDatetime,
    this.removalDatetime,
    this.reason,
    this.anatomialLocationSite,
    this.anatomicalApproachSite,
  });
}
