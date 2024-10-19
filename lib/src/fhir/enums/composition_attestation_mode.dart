// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The way in which a person authenticated a composition.
@Entity()
class CompositionAttestationMode extends FhirCode {
  /// Factory constructor to create [CompositionAttestationMode] from JSON.
  factory CompositionAttestationMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionAttestationMode.elementOnly(element);
    }
    if (values.contains(value)) {
      return CompositionAttestationMode._(value, element);
    }
    throw ArgumentError(
      'CompositionAttestationMode.fromJson: JSON value is not a valid value',
    );
  }

  /// personal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CompositionAttestationMode.personal([this.element])
      : dbValue = 'personal',
        super('personal', element);

  /// professional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CompositionAttestationMode.professional([this.element])
      : dbValue = 'professional',
        super('professional', element);

  /// legal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CompositionAttestationMode.legal([this.element])
      : dbValue = 'legal',
        super('legal', element);

  /// official
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CompositionAttestationMode.official([this.element])
      : dbValue = 'official',
        super('official', element);

  /// For instances where an Element is present but not value

  CompositionAttestationMode.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CompositionAttestationMode._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'personal',
    'professional',
    'legal',
    'official',
  ];

  /// Returns the enum value with an element attached
  CompositionAttestationMode withElement(Element? newElement) {
    return CompositionAttestationMode._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CompositionAttestationMode.$value';
}
