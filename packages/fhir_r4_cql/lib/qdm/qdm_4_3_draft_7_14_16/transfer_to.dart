import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// the setting, indicated by the QDM category and its corresponding value set, to which
/// a patient is released (e.g., home, acute care hospital, skilled nursing) from the
/// current location.

class TransferTo {
  final LiteralCode? negationRationale;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  TransferTo({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
  });
}
