import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document the
/// setting, indicated by the QDM category
/// and its corresponding value
/// set, from which a patient is received
/// (e.g., home, acute care
/// hospital, skilled nursing) to the current
/// location.
///

class TransferFrom {
  final LiteralConcept? negationRationale;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  TransferFrom({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
  });
}
