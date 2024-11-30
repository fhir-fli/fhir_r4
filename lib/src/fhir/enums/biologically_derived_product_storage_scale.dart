// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// BiologicallyDerived Product Storage Scale.
class BiologicallyDerivedProductStorageScale {
  // Private constructor for internal use (like enum)
  BiologicallyDerivedProductStorageScale._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// BiologicallyDerivedProductStorageScale values
  /// farenheit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductStorageScale farenheit =
      BiologicallyDerivedProductStorageScale._(
    'farenheit',
  );

  /// celsius
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductStorageScale celsius =
      BiologicallyDerivedProductStorageScale._(
    'celsius',
  );

  /// kelvin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductStorageScale kelvin =
      BiologicallyDerivedProductStorageScale._(
    'kelvin',
  );

  /// For instances where an Element is present but not value

  static final BiologicallyDerivedProductStorageScale elementOnly =
      BiologicallyDerivedProductStorageScale._('');

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductStorageScale> values = [
    farenheit,
    celsius,
    kelvin,
  ];

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductStorageScale withElement(Element? newElement) {
    return BiologicallyDerivedProductStorageScale._(fhirCode,
        element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [BiologicallyDerivedProductStorageScale] from JSON.
  static BiologicallyDerivedProductStorageScale fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStorageScale.elementOnly
          .withElement(element);
    }
    return BiologicallyDerivedProductStorageScale._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
