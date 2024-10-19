// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Indicates the state of the consent.
@collection
class ConsentState {
  /// Constructor for internal use (like enum)
  ConsentState({this.fhirCode, this.element})
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

  /// ConsentState values
  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentState draft = ConsentState(
    fhirCode: 'draft',
  );

  /// proposed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentState proposed = ConsentState(
    fhirCode: 'proposed',
  );

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentState active = ConsentState(
    fhirCode: 'active',
  );

  /// rejected
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentState rejected = ConsentState(
    fhirCode: 'rejected',
  );

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentState inactive = ConsentState(
    fhirCode: 'inactive',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentState entered_in_error = ConsentState(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final ConsentState elementOnly = ConsentState();

  /// List of all enum-like values
  static final List<ConsentState> values = [
    draft,
    proposed,
    active,
    rejected,
    inactive,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  ConsentState withElement(Element? newElement) {
    return ConsentState(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConsentState] from JSON.
  static ConsentState fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentState.elementOnly.withElement(element);
    }
    return ConsentState.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentState.$fhirCode';
}
