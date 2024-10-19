// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines a set of codes that can be used to express the role of a diagnosis on the Encounter or EpisodeOfCare record.
@Entity()
class DiagnosisRole extends FhirCode {
  /// Factory constructor to create [DiagnosisRole] from JSON.
  factory DiagnosisRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosisRole.elementOnly(element);
    }
    if (values.contains(value)) {
      return DiagnosisRole._(value, element);
    }
    throw ArgumentError(
      'DiagnosisRole.fromJson: JSON value is not a valid value',
    );
  }

  /// AD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosisRole.AD([this.element])
      : dbValue = 'AD',
        super('AD', element);

  /// DD
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosisRole.DD([this.element])
      : dbValue = 'DD',
        super('DD', element);

  /// CC
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosisRole.CC([this.element])
      : dbValue = 'CC',
        super('CC', element);

  /// CM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosisRole.CM([this.element])
      : dbValue = 'CM',
        super('CM', element);

  /// pre_op
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosisRole.pre_op([this.element])
      : dbValue = 'pre-op',
        super('pre-op', element);

  /// post_op
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosisRole.post_op([this.element])
      : dbValue = 'post-op',
        super('post-op', element);

  /// billing
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiagnosisRole.billing([this.element])
      : dbValue = 'billing',
        super('billing', element);

  /// For instances where an Element is present but not value

  DiagnosisRole.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DiagnosisRole._(super.input, [super.element])
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
    'AD',
    'DD',
    'CC',
    'CM',
    'pre-op',
    'post-op',
    'billing',
  ];

  /// Returns the enum value with an element attached
  DiagnosisRole withElement(Element? newElement) {
    return DiagnosisRole._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DiagnosisRole.$value';
}
