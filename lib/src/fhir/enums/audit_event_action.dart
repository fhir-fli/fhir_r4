import 'package:json_annotation/json_annotation.dart';

/// Indicator for type of action performed during the event that generated the event.
enum AuditEventAction {
  /// Display: Create
  /// Definition: Create a new database object, such as placing an order.
  @JsonValue('C')
  C,

  /// Display: Read/View/Print
  /// Definition: Display or print data, such as a doctor census.
  @JsonValue('R')
  R,

  /// Display: Update
  /// Definition: Update data, such as revise patient information.
  @JsonValue('U')
  U,

  /// Display: Delete
  /// Definition: Delete items, such as a doctor master file record.
  @JsonValue('D')
  D,

  /// Display: Execute
  /// Definition: Perform a system or application function such as log-on, program execution or use of an object's method, or perform a query/search operation.
  @JsonValue('E')
  E,
  ;

  @override
  String toString() {
    switch (this) {
      case C:
        return 'C';
      case R:
        return 'R';
      case U:
        return 'U';
      case D:
        return 'D';
      case E:
        return 'E';
    }
  }

  String toJson() => toString();
  static AuditEventAction fromString(String str) {
    switch (str) {
      case 'C':
        return AuditEventAction.C;
      case 'R':
        return AuditEventAction.R;
      case 'U':
        return AuditEventAction.U;
      case 'D':
        return AuditEventAction.D;
      case 'E':
        return AuditEventAction.E;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AuditEventAction fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
