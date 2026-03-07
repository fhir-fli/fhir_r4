/// Type of FHIR action within a CDS Hooks suggestion.
enum CdsActionType {
  /// Create a new resource.
  create,

  /// Update an existing resource.
  update,

  /// Delete an existing resource.
  delete;

  /// Deserialize from JSON string.
  static CdsActionType fromJson(String json) =>
      values.firstWhere((e) => e.name == json);

  /// Serialize to JSON string.
  String toJson() => name;
}
