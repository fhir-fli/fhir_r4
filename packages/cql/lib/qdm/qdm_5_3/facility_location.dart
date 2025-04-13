import 'package:cql/engine/types/cql_literal.dart';

/// This attribute type is new to QDM 5.0. It represents a facility
/// location and is used to capture location information for an encounter

class FacilityLocation {
  final LiteralCode code;
  final LiteralDateTimeInterval? locationPeriod;

  FacilityLocation({
    required this.code,
    this.locationPeriod,
  });
}
