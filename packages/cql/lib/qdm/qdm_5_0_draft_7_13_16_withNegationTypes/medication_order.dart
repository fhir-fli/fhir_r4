import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// a request to a pharmacy to provide the medication indicated by the QDM category and
/// its corresponding value set.

class MedicationOrder {
  final LiteralDateTime activeDatetime;
  final LiteralDateTime authorTime;
  final LiteralCode? method;
  final LiteralCode? reason;
  final LiteralInteger? refills;

  MedicationOrder({
    required this.activeDatetime,
    required this.authorTime,
    this.refills,
    this.method,
    this.reason,
  });
}
