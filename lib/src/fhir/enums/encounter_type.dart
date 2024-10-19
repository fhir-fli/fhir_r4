// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This example value set defines a set of codes that can be used to indicate the type of encounter: a specific code indicating type of service provided.
@Entity()
class EncounterType extends FhirCode {
  /// Factory constructor to create [EncounterType] from JSON.
  factory EncounterType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterType.elementOnly(element);
    }
    if (values.contains(value)) {
      return EncounterType._(value, element);
    }
    throw ArgumentError(
      'EncounterType.fromJson: JSON value is not a valid value',
    );
  }

  /// ADMS
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterType.ADMS([this.element])
      : dbValue = 'ADMS',
        super('ADMS', element);

  /// BD_BM_clin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterType.BD_BM_clin([this.element])
      : dbValue = 'BD/BM-clin',
        super('BD/BM-clin', element);

  /// CCS60
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterType.CCS60([this.element])
      : dbValue = 'CCS60',
        super('CCS60', element);

  /// OKI
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EncounterType.OKI([this.element])
      : dbValue = 'OKI',
        super('OKI', element);

  /// For instances where an Element is present but not value

  EncounterType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EncounterType._(super.input, [super.element])
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
    'ADMS',
    'BD/BM-clin',
    'CCS60',
    'OKI',
  ];

  /// Returns the enum value with an element attached
  EncounterType withElement(Element? newElement) {
    return EncounterType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EncounterType.$value';
}
