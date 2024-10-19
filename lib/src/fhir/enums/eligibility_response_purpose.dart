// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A code specifying the types of information being requested.
@Entity()
class EligibilityResponsePurpose extends FhirCode {
  /// Factory constructor to create [EligibilityResponsePurpose] from JSON.
  factory EligibilityResponsePurpose.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityResponsePurpose.elementOnly(element);
    }
    if (values.contains(value)) {
      return EligibilityResponsePurpose._(value, element);
    }
    throw ArgumentError(
      'EligibilityResponsePurpose.fromJson: JSON value is not a valid value',
    );
  }

  /// auth_requirements
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EligibilityResponsePurpose.auth_requirements([this.element])
      : dbValue = 'auth-requirements',
        super('auth-requirements', element);

  /// benefits
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EligibilityResponsePurpose.benefits([this.element])
      : dbValue = 'benefits',
        super('benefits', element);

  /// discovery
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EligibilityResponsePurpose.discovery([this.element])
      : dbValue = 'discovery',
        super('discovery', element);

  /// validation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  EligibilityResponsePurpose.validation([this.element])
      : dbValue = 'validation',
        super('validation', element);

  /// For instances where an Element is present but not value

  EligibilityResponsePurpose.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  EligibilityResponsePurpose._(super.input, [super.element])
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
    'auth-requirements',
    'benefits',
    'discovery',
    'validation',
  ];

  /// Returns the enum value with an element attached
  EligibilityResponsePurpose withElement(Element? newElement) {
    return EligibilityResponsePurpose._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EligibilityResponsePurpose.$value';
}
