// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Base values for the order of the items in a list resource.
class ListOrderCodes {
  // Private constructor for internal use (like enum)
  ListOrderCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ListOrderCodes values
  /// user
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes user = ListOrderCodes._(
    'user',
  );

  /// system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes system = ListOrderCodes._(
    'system',
  );

  /// event_date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes event_date = ListOrderCodes._(
    'event-date',
  );

  /// entry_date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes entry_date = ListOrderCodes._(
    'entry-date',
  );

  /// priority
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes priority = ListOrderCodes._(
    'priority',
  );

  /// alphabetic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes alphabetic = ListOrderCodes._(
    'alphabetic',
  );

  /// category
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes category = ListOrderCodes._(
    'category',
  );

  /// patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes patient = ListOrderCodes._(
    'patient',
  );

  /// For instances where an Element is present but not value

  static final ListOrderCodes elementOnly = ListOrderCodes._('');

  /// List of all enum-like values
  static final List<ListOrderCodes> values = [
    user,
    system,
    event_date,
    entry_date,
    priority,
    alphabetic,
    category,
    patient,
  ];

  /// Returns the enum value with an element attached
  ListOrderCodes withElement(Element? newElement) {
    return ListOrderCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ListOrderCodes] from JSON.
  static ListOrderCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListOrderCodes.elementOnly.withElement(element);
    }
    return ListOrderCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
