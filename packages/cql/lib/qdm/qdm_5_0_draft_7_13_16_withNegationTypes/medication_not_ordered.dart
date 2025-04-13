import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// that no order was given to a pharmacy to provide the medication indicated by the QDM
/// category and its corresponding value set.

class MedicationNotOrdered {
  final LiteralDateTime authorTime;
  final LiteralCode? negationRationale;

  MedicationNotOrdered({
    required this.authorTime,
    this.negationRationale,
  });
}
