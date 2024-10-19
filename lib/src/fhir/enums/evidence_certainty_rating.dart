// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The assessment of quality, confidence, or certainty.
@Entity()
class EvidenceCertaintyRating extends FhirCode {
  /// Factory constructor to create [EvidenceCertaintyRating] from JSON.
  factory EvidenceCertaintyRating.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceCertaintyRating.elementOnly(element);
    }
    if (values.contains(value)) {
      return EvidenceCertaintyRating._(value, element);
    }
    throw ArgumentError(
      'EvidenceCertaintyRating.fromJson: JSON value is not a valid value',
    );
  }

  /// high
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.high([this.element])
      : dbValue = 'high',
        super('high', element);

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.moderate([this.element])
      : dbValue = 'moderate',
        super('moderate', element);

  /// low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.low([this.element])
      : dbValue = 'low',
        super('low', element);

  /// very_low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.very_low([this.element])
      : dbValue = 'very-low',
        super('very-low', element);

  /// no_concern
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.no_concern([this.element])
      : dbValue = 'no-concern',
        super('no-concern', element);

  /// serious_concern
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.serious_concern([this.element])
      : dbValue = 'serious-concern',
        super('serious-concern', element);

  /// very_serious_concern
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.very_serious_concern([this.element])
      : dbValue = 'very-serious-concern',
        super('very-serious-concern', element);

  /// extremely_serious_concern
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.extremely_serious_concern([this.element])
      : dbValue = 'extremely-serious-concern',
        super('extremely-serious-concern', element);

  /// present
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.present([this.element])
      : dbValue = 'present',
        super('present', element);

  /// absent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.absent([this.element])
      : dbValue = 'absent',
        super('absent', element);

  /// no_change
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.no_change([this.element])
      : dbValue = 'no-change',
        super('no-change', element);

  /// downcode1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.downcode1([this.element])
      : dbValue = 'downcode1',
        super('downcode1', element);

  /// downcode2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.downcode2([this.element])
      : dbValue = 'downcode2',
        super('downcode2', element);

  /// downcode3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.downcode3([this.element])
      : dbValue = 'downcode3',
        super('downcode3', element);

  /// upcode1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.upcode1([this.element])
      : dbValue = 'upcode1',
        super('upcode1', element);

  /// upcode2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceCertaintyRating.upcode2([this.element])
      : dbValue = 'upcode2',
        super('upcode2', element);

  /// For instances where an Element is present but not value

  EvidenceCertaintyRating.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EvidenceCertaintyRating._(super.input, [super.element])
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
    'high',
    'moderate',
    'low',
    'very-low',
    'no-concern',
    'serious-concern',
    'very-serious-concern',
    'extremely-serious-concern',
    'present',
    'absent',
    'no-change',
    'downcode1',
    'downcode2',
    'downcode3',
    'upcode1',
    'upcode2',
  ];

  /// Returns the enum value with an element attached
  EvidenceCertaintyRating withElement(Element? newElement) {
    return EvidenceCertaintyRating._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceCertaintyRating.$value';
}
