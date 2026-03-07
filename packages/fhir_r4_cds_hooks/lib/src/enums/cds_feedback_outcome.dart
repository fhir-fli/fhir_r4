/// Outcome of user interaction with a CDS Hooks card.
enum CdsFeedbackOutcome {
  /// The user accepted the suggestion.
  accepted,

  /// The user overrode the suggestion.
  overridden;

  /// Deserialize from JSON string.
  static CdsFeedbackOutcome fromJson(String json) =>
      values.firstWhere((e) => e.name == json);

  /// Serialize to JSON string.
  String toJson() => name;
}
