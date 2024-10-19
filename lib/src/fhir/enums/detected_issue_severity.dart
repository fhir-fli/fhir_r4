// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Indicates the potential degree of impact of the identified issue on the patient.
@Entity()
class DetectedIssueSeverity extends FhirCode {
  /// Factory constructor to create [DetectedIssueSeverity] from JSON.
  factory DetectedIssueSeverity.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DetectedIssueSeverity.elementOnly(element);
    }
    if (values.contains(value)) {
      return DetectedIssueSeverity._(value, element);
    }
    throw ArgumentError(
      'DetectedIssueSeverity.fromJson: JSON value is not a valid value',
    );
  }

  /// high
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DetectedIssueSeverity.high([this.element])
      : dbValue = 'high',
        super('high', element);

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DetectedIssueSeverity.moderate([this.element])
      : dbValue = 'moderate',
        super('moderate', element);

  /// low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DetectedIssueSeverity.low([this.element])
      : dbValue = 'low',
        super('low', element);

  /// For instances where an Element is present but not value

  DetectedIssueSeverity.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DetectedIssueSeverity._(super.input, [super.element])
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
    'high',
    'moderate',
    'low',
  ];

  /// Returns the enum value with an element attached
  DetectedIssueSeverity withElement(Element? newElement) {
    return DetectedIssueSeverity._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DetectedIssueSeverity.$value';
}
