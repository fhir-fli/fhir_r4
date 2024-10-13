/// The processing mode that applies to this list.
enum ListMode {
  /// Display: Working List
  /// Definition: This list is the master list, maintained in an ongoing fashion with regular updates as the real world list it is tracking changes.
  working,

  /// Display: Snapshot List
  /// Definition: This list was prepared as a snapshot. It should not be assumed to be current.
  snapshot,

  /// Display: Change List
  /// Definition: A point-in-time list that shows what changes have been made or recommended.  E.g. a discharge medication list showing what was added and removed during an encounter.
  changes,
  ;

  @override
  String toString() {
    switch (this) {
      case working:
        return 'working';
      case snapshot:
        return 'snapshot';
      case changes:
        return 'changes';
    }
  }

  /// Returns a [String] from a [ListMode] enum.
  String toJson() => toString();

  /// Returns a [ListMode] from a [String] enum.
  static ListMode fromString(String str) {
    switch (str) {
      case 'working':
        return ListMode.working;
      case 'snapshot':
        return ListMode.snapshot;
      case 'changes':
        return ListMode.changes;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [ListMode] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static ListMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
