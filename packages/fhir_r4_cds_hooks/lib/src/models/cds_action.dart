import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4_cds_hooks/src/enums/cds_action_type.dart';

/// An action within a CDS Hooks suggestion.
class CdsAction {
  /// Creates a [CdsAction].
  CdsAction({
    required this.type,
    this.description,
    this.resource,
    this.resourceId,
  });

  /// Creates a [CdsAction] from a JSON map.
  factory CdsAction.fromJson(Map<String, dynamic> json) {
    return CdsAction(
      type: CdsActionType.fromJson(json['type'] as String),
      description: json['description'] as String?,
      resource: json['resource'] != null
          ? Resource.fromJson(json['resource'] as Map<String, dynamic>)
          : null,
      resourceId: json['resourceId'] as String?,
    );
  }

  /// The type of action.
  final CdsActionType type;

  /// A human-readable description of the action.
  final String? description;

  /// The FHIR resource associated with the action.
  final Resource? resource;

  /// The resource ID to use for delete actions.
  final String? resourceId;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'type': type.toJson(),
        if (description != null) 'description': description,
        if (resource != null) 'resource': resource!.toJson(),
        if (resourceId != null) 'resourceId': resourceId,
      };

  /// Returns a copy with the given fields replaced.
  CdsAction copyWith({
    CdsActionType? type,
    String? description,
    Resource? resource,
    String? resourceId,
  }) {
    return CdsAction(
      type: type ?? this.type,
      description: description ?? this.description,
      resource: resource ?? this.resource,
      resourceId: resourceId ?? this.resourceId,
    );
  }
}
