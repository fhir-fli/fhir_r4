import 'package:fhir_r4_cds_hooks/src/enums/cds_feedback_outcome.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_accepted_suggestion.dart';
import 'package:fhir_r4_cds_hooks/src/models/cds_override_reason.dart';

/// Feedback about a single card from the user.
class CdsFeedback {
  /// Creates a [CdsFeedback].
  CdsFeedback({
    required this.card,
    required this.outcome,
    this.acceptedSuggestions,
    this.overrideReason,
    this.outcomeTimestamp,
  });

  /// Creates a [CdsFeedback] from a JSON map.
  factory CdsFeedback.fromJson(Map<String, dynamic> json) {
    return CdsFeedback(
      card: json['card'] as String,
      outcome: CdsFeedbackOutcome.fromJson(json['outcome'] as String),
      acceptedSuggestions: (json['acceptedSuggestions'] as List<dynamic>?)
          ?.map(
            (e) => CdsAcceptedSuggestion.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      overrideReason: json['overrideReason'] != null
          ? CdsOverrideReason.fromJson(
              json['overrideReason'] as Map<String, dynamic>,
            )
          : null,
      outcomeTimestamp: json['outcomeTimestamp'] as String?,
    );
  }

  /// The card identifier this feedback is about.
  final String card;

  /// The outcome of the user's interaction.
  final CdsFeedbackOutcome outcome;

  /// The suggestions the user accepted.
  final List<CdsAcceptedSuggestion>? acceptedSuggestions;

  /// The reason the user overrode the card.
  final CdsOverrideReason? overrideReason;

  /// ISO 8601 timestamp of when the user acted on the card.
  final String? outcomeTimestamp;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'card': card,
        'outcome': outcome.toJson(),
        if (acceptedSuggestions != null)
          'acceptedSuggestions':
              acceptedSuggestions!.map((a) => a.toJson()).toList(),
        if (overrideReason != null) 'overrideReason': overrideReason!.toJson(),
        if (outcomeTimestamp != null) 'outcomeTimestamp': outcomeTimestamp,
      };

  /// Returns a copy with the given fields replaced.
  CdsFeedback copyWith({
    String? card,
    CdsFeedbackOutcome? outcome,
    List<CdsAcceptedSuggestion>? acceptedSuggestions,
    CdsOverrideReason? overrideReason,
    String? outcomeTimestamp,
  }) {
    return CdsFeedback(
      card: card ?? this.card,
      outcome: outcome ?? this.outcome,
      acceptedSuggestions: acceptedSuggestions ?? this.acceptedSuggestions,
      overrideReason: overrideReason ?? this.overrideReason,
      outcomeTimestamp: outcomeTimestamp ?? this.outcomeTimestamp,
    );
  }
}
