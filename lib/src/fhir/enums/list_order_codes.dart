// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Base values for the order of the items in a list resource.
enum ListOrderCodes {
  /// Display: Sorted by User
  /// Definition: The list was sorted by a user. The criteria the user used are not specified.
  user('user'),

  /// Display: Sorted by System
  /// Definition: The list was sorted by the system. The criteria the user used are not specified; define additional codes to specify a particular order (or use other defined codes).
  system('system'),

  /// Display: Sorted by Event Date
  /// Definition: The list is sorted by the data of the event. This can be used when the list has items which are dates with past or future events.
  event_date('event-date'),

  /// Display: Sorted by Item Date
  /// Definition: The list is sorted by the date the item was added to the list. Note that the date added to the list is not explicit in the list itself.
  entry_date('entry-date'),

  /// Display: Sorted by Priority
  /// Definition: The list is sorted by priority. The exact method in which priority has been determined is not specified.
  priority('priority'),

  /// Display: Sorted Alphabetically
  /// Definition: The list is sorted alphabetically by an unspecified property of the items in the list.
  alphabetic('alphabetic'),

  /// Display: Sorted by Category
  /// Definition: The list is sorted categorically by an unspecified property of the items in the list.
  category('category'),

  /// Display: Sorted by Patient
  /// Definition: The list is sorted by patient, with items for each patient grouped together.
  patient('patient'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ListOrderCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ListOrderCodes] instances.
  static ListOrderCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListOrderCodes.elementOnly.withElement(
        element,
      );
    }
    return ListOrderCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ListOrderCodes withElement(Element? newElement) {
    return ListOrderCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
