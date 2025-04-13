import 'package:cql/engine/types/cql_literal.dart';

import 'qdm_5_5.dart';

/// Data elements that meet this criterion indicate the provider's
/// experience with availability of resources (e.g., scheduling, equipment, space, and
/// such consumables as medications). Provider care experience gauges provider
/// satisfaction with key structures, processes, and outcomes in the healthcare delivery
/// system.

class ProviderCareExperience {
  final LiteralDateTime? authorDatetime;
  final QDMEntity? recorder;

  ProviderCareExperience({
    this.authorDatetime,
    this.recorder,
  });
}
