import 'package:fhir_r4_cds_hooks/src/models/cds_service_definition.dart';

/// The response from the CDS Hooks discovery endpoint.
class CdsDiscoveryResponse {
  /// Creates a [CdsDiscoveryResponse].
  CdsDiscoveryResponse({required this.services});

  /// Creates a [CdsDiscoveryResponse] from a JSON map.
  factory CdsDiscoveryResponse.fromJson(Map<String, dynamic> json) {
    return CdsDiscoveryResponse(
      services: (json['services'] as List<dynamic>)
          .map(
            (e) => CdsServiceDefinition.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );
  }

  /// The list of available CDS services.
  final List<CdsServiceDefinition> services;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'services': services.map((s) => s.toJson()).toList(),
      };

  /// Returns a copy with the given fields replaced.
  CdsDiscoveryResponse copyWith({List<CdsServiceDefinition>? services}) {
    return CdsDiscoveryResponse(services: services ?? this.services);
  }
}
