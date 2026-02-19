import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// a request for the physical exam indicated by the QDM category and its corresponding
/// value set. The datatype is expected to be used to identify orders such as "vital
/// signs, frequency every x hours,” or "pedal pulse check, frequency every 15 minutes
/// for x hours." NOTE: startDatetime and stopDatetime have been replaced by
/// authorDatetime corresponding to "author time" of the record in the Quality Reporting
/// Document Architecture (QRDA). This corresponds to when the order was signed. Thus,
/// the Start Datetime and Stop Datetime refer to the same point in time.

class PhysicalExamOrder {
  final LiteralCode? anatomicalLocationSite;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralCode? reason;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  PhysicalExamOrder({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.method,
    this.anatomicalLocationSite,
  });
}
