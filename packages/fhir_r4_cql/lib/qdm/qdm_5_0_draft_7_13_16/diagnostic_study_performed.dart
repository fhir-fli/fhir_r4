import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// the completion of the diagnostic study indicated by the QDM category and its
/// corresponding value set. Timing: The Relevant Period addresses: startTime – When the
/// diagnostic study is initiated stopTime – when the diagnostic study is completed

class DiagnosticStudyPerformed {
  final LiteralCode? facilityLocation;
  final LiteralCode? method;
  final LiteralCode? negationRationale;
  final LiteralQuantity? radiationDosage;
  final LiteralQuantity? radiationDuration;
  final LiteralCode? reason;
  final LiteralDateTimeInterval? relevantPeriod;
  final dynamic result;
  final LiteralDateTime? resultDatetime;
  final LiteralCode? status;

  DiagnosticStudyPerformed({
    this.relevantPeriod,
    this.reason,
    this.result,
    this.resultDatetime,
    this.status,
    this.radiationDosage,
    this.radiationDuration,
    this.method,
    this.facilityLocation,
    this.negationRationale,
  });
}
