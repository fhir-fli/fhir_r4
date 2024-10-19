// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The quality of how direct the match is.
@Entity()
class EvidenceDirectness extends FhirCode {
  /// Factory constructor to create [EvidenceDirectness] from JSON.
  factory EvidenceDirectness.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceDirectness.elementOnly(element);
    }
    if (values.contains(value)) {
      return EvidenceDirectness._(value, element);
    }
    throw ArgumentError(
      'EvidenceDirectness.fromJson: JSON value is not a valid value',
    );
  }

  /// low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceDirectness.low([this.element])
      : dbValue = 'low',
        super('low', element);

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceDirectness.moderate([this.element])
      : dbValue = 'moderate',
        super('moderate', element);

  /// high
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceDirectness.high([this.element])
      : dbValue = 'high',
        super('high', element);

  /// exact
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EvidenceDirectness.exact([this.element])
      : dbValue = 'exact',
        super('exact', element);

  /// For instances where an Element is present but not value

  EvidenceDirectness.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EvidenceDirectness._(super.input, [super.element])
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
    'low',
    'moderate',
    'high',
    'exact',
  ];

  /// Returns the enum value with an element attached
  EvidenceDirectness withElement(Element? newElement) {
    return EvidenceDirectness._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceDirectness.$value';
}
