import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet this criterion typically define any untoward
/// medical occurrence associated with the delivery of clinical care, whether or not
/// considered drug related. Timing: The Relevant Period references the time from when
/// the event began to when the event completed.

class AdverseEvent {
  final LiteralCode? facilityLocation;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? severity;

  AdverseEvent({
    this.relevantPeriod,
    this.severity,
    this.facilityLocation,
  });
}
