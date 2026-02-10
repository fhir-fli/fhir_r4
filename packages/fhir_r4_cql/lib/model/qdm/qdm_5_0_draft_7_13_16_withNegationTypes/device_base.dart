import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class DeviceBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;

  DeviceBase({
    this.authorTime,
    this.reason,
  });
}
