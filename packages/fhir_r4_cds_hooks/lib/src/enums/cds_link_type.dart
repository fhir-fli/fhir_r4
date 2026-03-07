/// Type of link attached to a CDS Hooks card.
enum CdsLinkType {
  /// An absolute URL to an external resource.
  absolute,

  /// A SMART app launch URL.
  smart;

  /// Deserialize from JSON string.
  static CdsLinkType fromJson(String json) =>
      values.firstWhere((e) => e.name == json);

  /// Serialize to JSON string.
  String toJson() => name;
}
