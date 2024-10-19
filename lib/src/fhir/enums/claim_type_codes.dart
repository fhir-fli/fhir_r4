// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes Claim Type codes.
@Entity()
class ClaimTypeCodes extends FhirCode {
  /// Factory constructor to create [ClaimTypeCodes] from JSON.
  factory ClaimTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ClaimTypeCodes._(value, element);
    }
    throw ArgumentError(
      'ClaimTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// institutional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimTypeCodes.institutional([this.element])
      : dbValue = 'institutional',
        super('institutional', element);

  /// oral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimTypeCodes.oral([this.element])
      : dbValue = 'oral',
        super('oral', element);

  /// pharmacy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimTypeCodes.pharmacy([this.element])
      : dbValue = 'pharmacy',
        super('pharmacy', element);

  /// professional
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimTypeCodes.professional([this.element])
      : dbValue = 'professional',
        super('professional', element);

  /// vision
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimTypeCodes.vision([this.element])
      : dbValue = 'vision',
        super('vision', element);

  /// For instances where an Element is present but not value

  ClaimTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ClaimTypeCodes._(super.input, [super.element])
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
    'institutional',
    'oral',
    'pharmacy',
    'professional',
    'vision',
  ];

  /// Returns the enum value with an element attached
  ClaimTypeCodes withElement(Element? newElement) {
    return ClaimTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ClaimTypeCodes.$value';
}
