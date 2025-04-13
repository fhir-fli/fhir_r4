import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document
/// that the vaccine indicated by the QDM
/// category and its corresponding
/// value set was actually administered to
/// the patient.
///

class ImmunizationAdministered {
  final LiteralQuantity? dose;
  final LiteralConcept? negationRationale;
  final LiteralConcept? reason;
  final LiteralConcept? route;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  ImmunizationAdministered({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.reason,
    this.route,
    this.dose,
  });
}
