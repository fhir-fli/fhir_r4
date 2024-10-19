// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// BiologicallyDerived Product Storage Scale.
@collection
class BiologicallyDerivedProductStorageScale {
  /// Constructor for internal use (like enum)
  BiologicallyDerivedProductStorageScale({this.fhirCode, this.element})
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

  /// BiologicallyDerivedProductStorageScale values
  /// farenheit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductStorageScale farenheit =
      BiologicallyDerivedProductStorageScale(
    fhirCode: 'farenheit',
  );

  /// celsius
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductStorageScale celsius =
      BiologicallyDerivedProductStorageScale(
    fhirCode: 'celsius',
  );

  /// kelvin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BiologicallyDerivedProductStorageScale kelvin =
      BiologicallyDerivedProductStorageScale(
    fhirCode: 'kelvin',
  );

  /// For instances where an Element is present but not value

  static final BiologicallyDerivedProductStorageScale elementOnly =
      BiologicallyDerivedProductStorageScale();

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductStorageScale> values = [
    farenheit,
    celsius,
    kelvin,
  ];

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductStorageScale withElement(Element? newElement) {
    return BiologicallyDerivedProductStorageScale(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
    return BiologicallyDerivedProductStorageScale.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BiologicallyDerivedProductStorageScale.$fhirCode';
}
