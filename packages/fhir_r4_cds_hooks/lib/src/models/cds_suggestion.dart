import 'package:fhir_r4_cds_hooks/src/models/cds_action.dart';

/// A suggestion within a CDS Hooks card.
class CdsSuggestion {
  /// Creates a [CdsSuggestion].
  CdsSuggestion({
    required this.label,
    this.uuid,
    this.isRecommended,
    this.actions,
  });

  /// Creates a [CdsSuggestion] from a JSON map.
  factory CdsSuggestion.fromJson(Map<String, dynamic> json) {
    return CdsSuggestion(
      label: json['label'] as String,
      uuid: json['uuid'] as String?,
      isRecommended: json['isRecommended'] as bool?,
      actions: (json['actions'] as List<dynamic>?)
          ?.map((e) => CdsAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  /// Human-readable label for the suggestion.
  final String label;

  /// A unique identifier for the suggestion, used in feedback.
  final String? uuid;

  /// Whether this suggestion is recommended.
  final bool? isRecommended;

  /// The actions to take if this suggestion is accepted.
  final List<CdsAction>? actions;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'label': label,
        if (uuid != null) 'uuid': uuid,
        if (isRecommended != null) 'isRecommended': isRecommended,
        if (actions != null)
          'actions': actions!.map((a) => a.toJson()).toList(),
      };

  /// Returns a copy with the given fields replaced.
  CdsSuggestion copyWith({
    String? label,
    String? uuid,
    bool? isRecommended,
    List<CdsAction>? actions,
  }) {
    return CdsSuggestion(
      label: label ?? this.label,
      uuid: uuid ?? this.uuid,
      isRecommended: isRecommended ?? this.isRecommended,
      actions: actions ?? this.actions,
    );
  }
}
