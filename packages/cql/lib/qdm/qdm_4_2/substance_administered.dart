import 'package:cql/engine/types/cql_literal.dart';

///
/// Data elements that meet criteria using this
/// datatype should document
/// that the substance indicated by the QDM
/// category and its
/// corresponding value set was actually given to the
/// patient.
///

class SubstanceAdministered {
  final LiteralQuantity? dose;
  final LiteralConcept? frequency;
  final LiteralConcept? negationRationale;
  final LiteralConcept? route;
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  SubstanceAdministered({
    this.startDatetime,
    this.stopDatetime,
    this.negationRationale,
    this.dose,
    this.frequency,
    this.route,
  });
}
