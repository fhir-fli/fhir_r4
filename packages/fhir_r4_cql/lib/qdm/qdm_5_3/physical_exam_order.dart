import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the physical exam indicated by the QDM category and its corresponding
/// value set. The datatype is expected to be used to identify orders such as "vital
/// signs, frequency every x hours,” or "pedal pulse check, frequency every 15 minutes
/// for x hours."

class PhysicalExamOrder {
  final LiteralCode? anatomicalLocationSite;
  final LiteralDateTime? authorDatetime;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;

  PhysicalExamOrder({
    this.authorDatetime,
    this.reason,
    this.method,
    this.anatomicalLocationSite,
    this.negationRationale,
  });
}
