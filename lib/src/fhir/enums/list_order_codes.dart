import 'package:json_annotation/json_annotation.dart';

/// Base values for the order of the items in a list resource.
enum ListOrderCodes {
  /// Display: Sorted by User
  /// Definition: The list was sorted by a user. The criteria the user used are not specified.
  @JsonValue('user')
  user,
  /// Display: Sorted by System
  /// Definition: The list was sorted by the system. The criteria the user used are not specified; define additional codes to specify a particular order (or use other defined codes).
  @JsonValue('system')
  system,
  /// Display: Sorted by Event Date
  /// Definition: The list is sorted by the data of the event. This can be used when the list has items which are dates with past or future events.
  @JsonValue('event-date')
  event_date,
  /// Display: Sorted by Item Date
  /// Definition: The list is sorted by the date the item was added to the list. Note that the date added to the list is not explicit in the list itself.
  @JsonValue('entry-date')
  entry_date,
  /// Display: Sorted by Priority
  /// Definition: The list is sorted by priority. The exact method in which priority has been determined is not specified.
  @JsonValue('priority')
  priority,
  /// Display: Sorted Alphabetically
  /// Definition: The list is sorted alphabetically by an unspecified property of the items in the list.
  @JsonValue('alphabetic')
  alphabetic,
  /// Display: Sorted by Category
  /// Definition: The list is sorted categorically by an unspecified property of the items in the list.
  @JsonValue('category')
  category,
  /// Display: Sorted by Patient
  /// Definition: The list is sorted by patient, with items for each patient grouped together.
  @JsonValue('patient')
  patient,
;

@override
  String toString() {
      switch(this) {
        case user: return 'user';
        case system: return 'system';
        case event_date: return 'event-date';
        case entry_date: return 'entry-date';
        case priority: return 'priority';
        case alphabetic: return 'alphabetic';
        case category: return 'category';
        case patient: return 'patient';
      }
      }
String toJson() => toString();
  ListOrderCodes fromString(String str) {
    switch(str) {
      case 'user': return ListOrderCodes.user;
      case 'system': return ListOrderCodes.system;
      case 'event-date': return ListOrderCodes.event_date;
      case 'entry-date': return ListOrderCodes.entry_date;
      case 'priority': return ListOrderCodes.priority;
      case 'alphabetic': return ListOrderCodes.alphabetic;
      case 'category': return ListOrderCodes.category;
      case 'patient': return ListOrderCodes.patient;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 ListOrderCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
