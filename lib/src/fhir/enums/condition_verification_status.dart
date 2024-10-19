// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The verification status to support or decline the clinical status of the condition or diagnosis.
@Entity()
class ConditionVerificationStatus extends FhirCode {
  /// Factory constructor to create [ConditionVerificationStatus] from JSON.
  factory ConditionVerificationStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionVerificationStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConditionVerificationStatus._(value, element);
    }
    throw ArgumentError(
      'ConditionVerificationStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// unconfirmed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionVerificationStatus.unconfirmed([this.element])
      : dbValue = 'unconfirmed',
        super('unconfirmed', element);

  /// provisional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionVerificationStatus.provisional([this.element])
      : dbValue = 'provisional',
        super('provisional', element);

  /// differential
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionVerificationStatus.differential([this.element])
      : dbValue = 'differential',
        super('differential', element);

  /// confirmed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionVerificationStatus.confirmed([this.element])
      : dbValue = 'confirmed',
        super('confirmed', element);

  /// refuted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionVerificationStatus.refuted([this.element])
      : dbValue = 'refuted',
        super('refuted', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionVerificationStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// For instances where an Element is present but not value

  ConditionVerificationStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConditionVerificationStatus._(super.input, [super.element])
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
    'unconfirmed',
    'provisional',
    'differential',
    'confirmed',
    'refuted',
    'entered-in-error',
  ];

  /// Returns the enum value with an element attached
  ConditionVerificationStatus withElement(Element? newElement) {
    return ConditionVerificationStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConditionVerificationStatus.$value';
}
