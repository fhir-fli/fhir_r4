import 'package:cql/engine/types/cql_literal.dart';

/// Data elements that meet criteria using this datatype should document
/// a characteristic of the patient not represented by one of the more specific
/// Individual Characteristic datatypes.

class PatientCharacteristic {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  PatientCharacteristic({
    this.startDatetime,
    this.stopDatetime,
  });
}
