// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// BiologicallyDerived Product Storage Scale.
@Entity()
class BiologicallyDerivedProductStorageScale extends FhirCode {
  /// Factory constructor to create [BiologicallyDerivedProductStorageScale] from JSON.
  factory BiologicallyDerivedProductStorageScale.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStorageScale.elementOnly(element);
    }
    if (values.contains(value)) {
      return BiologicallyDerivedProductStorageScale._(value, element);
    }
    throw ArgumentError(
      'BiologicallyDerivedProductStorageScale.fromJson: JSON value is not a valid value',
    );
  }

  /// farenheit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BiologicallyDerivedProductStorageScale.farenheit([this.element])
      : dbValue = 'farenheit',
        super('farenheit', element);

  /// celsius
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BiologicallyDerivedProductStorageScale.celsius([this.element])
      : dbValue = 'celsius',
        super('celsius', element);

  /// kelvin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BiologicallyDerivedProductStorageScale.kelvin([this.element])
      : dbValue = 'kelvin',
        super('kelvin', element);

  /// For instances where an Element is present but not value

  BiologicallyDerivedProductStorageScale.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  BiologicallyDerivedProductStorageScale._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'farenheit',
    'celsius',
    'kelvin',
  ];

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductStorageScale withElement(Element? newElement) {
    return BiologicallyDerivedProductStorageScale._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BiologicallyDerivedProductStorageScale.$value';
}
