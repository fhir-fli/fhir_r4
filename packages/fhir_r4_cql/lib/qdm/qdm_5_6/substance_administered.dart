import 'package:fhir_r4_cql/fhir_r4_cql.dart';

import 'qdm_5_6.dart';

/// Data elements that meet criteria using this datatype should document
/// that the substance indicated by the QDM category and its corresponding value set was
/// actually given to the patient. Timing: The Relevant Period addresses: startTime -
/// when a single substance administration event starts (e.g., the initiation of an
/// intravenous infusion, or administering a the substance orally or topically to a
/// patient); stopTime - when a single substance administration event ends (e.g., the
/// end time of the intravenous infusion, or the administration of a substance orally or
/// topically is completed - for oral or topical administration, the start and stop
/// times are the same)

class SubstanceAdministered {
  final LiteralDateTime? authorDatetime;
  final LiteralQuantity? dosage;
  final LiteralCode? frequency;
  final LiteralCode? negationRationale;
  final QDMEntity? performer;
  final LiteralDateTime? relevantDatetime;
  final LiteralDateTimeInterval? relevantPeriod;
  final LiteralCode? route;

  SubstanceAdministered({
    this.authorDatetime,
    this.relevantDatetime,
    this.relevantPeriod,
    this.dosage,
    this.frequency,
    this.route,
    this.negationRationale,
    this.performer,
  });
}
