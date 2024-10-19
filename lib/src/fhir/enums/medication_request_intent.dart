// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// MedicationRequest Intent Codes
@collection
class MedicationRequestIntent {
  /// Constructor for internal use (like enum)
  MedicationRequestIntent({this.fhirCode, this.element})
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

  /// MedicationRequestIntent values
  /// proposal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestIntent proposal = MedicationRequestIntent(
    fhirCode: 'proposal',
  );

  /// plan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestIntent plan = MedicationRequestIntent(
    fhirCode: 'plan',
  );

  /// order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestIntent order = MedicationRequestIntent(
    fhirCode: 'order',
  );

  /// original_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestIntent original_order = MedicationRequestIntent(
    fhirCode: 'original-order',
  );

  /// reflex_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestIntent reflex_order = MedicationRequestIntent(
    fhirCode: 'reflex-order',
  );

  /// filler_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestIntent filler_order = MedicationRequestIntent(
    fhirCode: 'filler-order',
  );

  /// instance_order
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestIntent instance_order = MedicationRequestIntent(
    fhirCode: 'instance-order',
  );

  /// option
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MedicationRequestIntent option = MedicationRequestIntent(
    fhirCode: 'option',
  );

  /// For instances where an Element is present but not value

  static final MedicationRequestIntent elementOnly = MedicationRequestIntent();

  /// List of all enum-like values
  static final List<MedicationRequestIntent> values = [
    proposal,
    plan,
    order,
    original_order,
    reflex_order,
    filler_order,
    instance_order,
    option,
  ];

  /// Returns the enum value with an element attached
  MedicationRequestIntent withElement(Element? newElement) {
    return MedicationRequestIntent(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MedicationRequestIntent] from JSON.
  static MedicationRequestIntent fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationRequestIntent.elementOnly.withElement(element);
    }
    return MedicationRequestIntent.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicationRequestIntent.$fhirCode';
}
