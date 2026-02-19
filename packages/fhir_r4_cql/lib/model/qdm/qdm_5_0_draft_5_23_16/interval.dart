import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// This attribute type is new to QDM 5.0.

class Interval {
  final LiteralDateTime? startDatetime;
  final LiteralDateTime? stopDatetime;

  Interval({
    this.startDatetime,
    this.stopDatetime,
  });
}
