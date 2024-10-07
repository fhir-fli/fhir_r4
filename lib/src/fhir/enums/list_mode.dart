import 'package:json_annotation/json_annotation.dart';

/// The processing mode that applies to this list.
enum ListMode {
  /// Display: Working List
  /// Definition: This list is the master list, maintained in an ongoing fashion with regular updates as the real world list it is tracking changes.
  @JsonValue('working')
  working,

  /// Display: Snapshot List
  /// Definition: This list was prepared as a snapshot. It should not be assumed to be current.
  @JsonValue('snapshot')
  snapshot,

  /// Display: Change List
  /// Definition: A point-in-time list that shows what changes have been made or recommended.  E.g. a discharge medication list showing what was added and removed during an encounter.
  @JsonValue('changes')
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

  String toJson() => toString();
  ListMode fromString(String str) {
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

  ListMode fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
