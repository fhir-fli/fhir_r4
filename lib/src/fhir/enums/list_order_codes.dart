// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Base values for the order of the items in a list resource.
@collection
class ListOrderCodes {
  /// Constructor for internal use (like enum)
  ListOrderCodes({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ListOrderCodes values
  /// user
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes user = ListOrderCodes(
    fhirCode: 'user',
  );

  /// system
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes system = ListOrderCodes(
    fhirCode: 'system',
  );

  /// event_date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes event_date = ListOrderCodes(
    fhirCode: 'event-date',
  );

  /// entry_date
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes entry_date = ListOrderCodes(
    fhirCode: 'entry-date',
  );

  /// priority
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes priority = ListOrderCodes(
    fhirCode: 'priority',
  );

  /// alphabetic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes alphabetic = ListOrderCodes(
    fhirCode: 'alphabetic',
  );

  /// category
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes category = ListOrderCodes(
    fhirCode: 'category',
  );

  /// patient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListOrderCodes patient = ListOrderCodes(
    fhirCode: 'patient',
  );

  /// For instances where an Element is present but not value

  static final ListOrderCodes elementOnly = ListOrderCodes();

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
    return ListOrderCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ListOrderCodes.$fhirCode';
}
