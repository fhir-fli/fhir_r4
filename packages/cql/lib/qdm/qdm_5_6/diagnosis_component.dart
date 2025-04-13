import 'package:cql/engine/types/cql_literal.dart';

/// Coded diagnoses/problems addressed during the encounter.

class DiagnosisComponent {
  final LiteralCode code;
  final LiteralCode? presentOnAdmissionIndicator;
  final LiteralInteger? rank;

  DiagnosisComponent({
    required this.code,
    this.presentOnAdmissionIndicator,
    this.rank,
  });
}
