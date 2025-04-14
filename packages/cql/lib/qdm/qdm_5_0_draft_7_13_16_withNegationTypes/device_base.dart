import 'package:cql/engine/types/cql_literal.dart';

class DeviceBase {
  final LiteralDateTime? authorTime;
  final LiteralCode? reason;

  DeviceBase({
    this.authorTime,
    this.reason,
  });
}
