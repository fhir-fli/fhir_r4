/// Selection behavior for suggestions within a CDS Hooks card.
enum CdsSelectionBehavior {
  /// At most one suggestion may be selected.
  atMostOne('at-most-one'),

  /// Any number of suggestions may be selected.
  any('any');

  const CdsSelectionBehavior(this._wire);

  final String _wire;

  /// Deserialize from JSON string.
  static CdsSelectionBehavior fromJson(String json) =>
      values.firstWhere((e) => e._wire == json);

  /// Serialize to JSON string.
  String toJson() => _wire;
}
