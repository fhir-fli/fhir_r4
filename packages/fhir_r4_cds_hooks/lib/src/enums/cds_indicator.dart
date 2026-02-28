/// Visual indicator for a CDS Hooks card.
enum CdsIndicator {
  /// Informational
  info,

  /// Warning
  warning,

  /// Critical / urgent
  critical;

  /// Deserialize from JSON string.
  static CdsIndicator fromJson(String json) =>
      values.firstWhere((e) => e.name == json);

  /// Serialize to JSON string.
  String toJson() => name;
}
