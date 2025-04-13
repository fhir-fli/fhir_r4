import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document
/// that the patient has one or more of the
/// payers indicated by the QDM
/// category and its corresponding value set.
///

class PatientCharacteristicSex {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  PatientCharacteristicSex({
    this.startDatetime,
    this.stopDatetime,
  });
}
