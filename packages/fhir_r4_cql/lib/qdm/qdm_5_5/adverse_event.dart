import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_5.dart';

/// Data elements that meet this criterion typically define any untoward
/// medical occurrence associated with the delivery of clinical care, whether or not
/// considered drug related. Timing: The Relevant Datetime references the time when the
/// event occurred.

class AdverseEvent {
  final LiteralDateTime? authorDatetime;
  final LiteralCode? facilityLocation;
  final QDMEntity? recorder;
  final LiteralDateTime? relevantDatetime;
  final LiteralCode? severity;

  AdverseEvent({
    this.authorDatetime,
    this.relevantDatetime,
    this.severity,
    this.facilityLocation,
    this.recorder,
  });
}
