// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of trigger.
enum TriggerType {
  /// Display: Named Event
  /// Definition: The trigger occurs in response to a specific named event, and no other information about the trigger is specified. Named events are completely pre-coordinated, and the formal semantics of the trigger are not provided.
  named_event('named-event'),

  /// Display: Periodic
  /// Definition: The trigger occurs at a specific time or periodically as described by a timing or schedule. A periodic event cannot have any data elements, but may have a name assigned as a shorthand for the event.
  periodic('periodic'),

  /// Display: Data Changed
  /// Definition: The trigger occurs whenever data of a particular type is changed in any way, either added, modified, or removed.
  data_changed('data-changed'),

  /// Display: Data Added
  /// Definition: The trigger occurs whenever data of a particular type is added.
  data_added('data-added'),

  /// Display: Data Updated
  /// Definition: The trigger occurs whenever data of a particular type is modified.
  data_modified('data-modified'),

  /// Display: Data Removed
  /// Definition: The trigger occurs whenever data of a particular type is removed.
  data_removed('data-removed'),

  /// Display: Data Accessed
  /// Definition: The trigger occurs whenever data of a particular type is accessed.
  data_accessed('data-accessed'),

  /// Display: Data Access Ended
  /// Definition: The trigger occurs whenever access to data of a particular type is completed.
  data_access_ended('data-access-ended'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const TriggerType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [TriggerType] instances.
  static TriggerType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TriggerType.elementOnly.withElement(element);
    }
    return TriggerType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  TriggerType withElement(Element? newElement) {
    return TriggerType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
