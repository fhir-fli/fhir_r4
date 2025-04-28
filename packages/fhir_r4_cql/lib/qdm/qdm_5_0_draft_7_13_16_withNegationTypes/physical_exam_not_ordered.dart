import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// Data elements that meet criteria using this datatype should document
/// that the physical exam indicated by the QDM category and its corresponding value set
/// was not ordered.

class PhysicalExamNotOrdered {
  final LiteralDateTime? authorTime;
  final LiteralCode? negationRationale;

  PhysicalExamNotOrdered({
    this.authorTime,
    this.negationRationale,
  });
}
