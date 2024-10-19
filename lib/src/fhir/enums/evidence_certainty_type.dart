// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The aspect of quality, confidence, or certainty.
@Entity()
class EvidenceCertaintyType extends FhirCode {
  /// Factory constructor to create [EvidenceCertaintyType] from JSON.
  factory EvidenceCertaintyType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceCertaintyType.elementOnly(element);
    }
    if (values.contains(value)) {
      return EvidenceCertaintyType._(value, element);
    }
    throw ArgumentError(
      'EvidenceCertaintyType.fromJson: JSON value is not a valid value',
    );
  }

  /// Overall
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyType.Overall([this.element])
      : dbValue = 'Overall',
        super('Overall', element);

  /// RiskOfBias
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyType.RiskOfBias([this.element])
      : dbValue = 'RiskOfBias',
        super('RiskOfBias', element);

  /// Inconsistency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyType.Inconsistency([this.element])
      : dbValue = 'Inconsistency',
        super('Inconsistency', element);

  /// Indirectness
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyType.Indirectness([this.element])
      : dbValue = 'Indirectness',
        super('Indirectness', element);

  /// Imprecision
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyType.Imprecision([this.element])
      : dbValue = 'Imprecision',
        super('Imprecision', element);

  /// PublicationBias
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyType.PublicationBias([this.element])
      : dbValue = 'PublicationBias',
        super('PublicationBias', element);

  /// DoseResponseGradient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyType.DoseResponseGradient([this.element])
      : dbValue = 'DoseResponseGradient',
        super('DoseResponseGradient', element);

  /// PlausibleConfounding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyType.PlausibleConfounding([this.element])
      : dbValue = 'PlausibleConfounding',
        super('PlausibleConfounding', element);

  /// LargeEffect
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyType.LargeEffect([this.element])
      : dbValue = 'LargeEffect',
        super('LargeEffect', element);

  /// For instances where an Element is present but not value

  EvidenceCertaintyType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EvidenceCertaintyType._(super.input, [super.element])
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
    'Overall',
    'RiskOfBias',
    'Inconsistency',
    'Indirectness',
    'Imprecision',
    'PublicationBias',
    'DoseResponseGradient',
    'PlausibleConfounding',
    'LargeEffect',
  ];

  /// Returns the enum value with an element attached
  EvidenceCertaintyType withElement(Element? newElement) {
    return EvidenceCertaintyType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceCertaintyType.$value';
}
