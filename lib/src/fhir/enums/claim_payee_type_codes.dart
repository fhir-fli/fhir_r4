// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Payee Type codes.
@Entity()
class ClaimPayeeTypeCodes extends FhirCode {
  /// Factory constructor to create [ClaimPayeeTypeCodes] from JSON.
  factory ClaimPayeeTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClaimPayeeTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ClaimPayeeTypeCodes._(value, element);
    }
    throw ArgumentError(
      'ClaimPayeeTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// subscriber
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimPayeeTypeCodes.subscriber([this.element])
      : dbValue = 'subscriber',
        super('subscriber', element);

  /// provider
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimPayeeTypeCodes.provider([this.element])
      : dbValue = 'provider',
        super('provider', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ClaimPayeeTypeCodes.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// For instances where an Element is present but not value

  ClaimPayeeTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ClaimPayeeTypeCodes._(super.input, [super.element])
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
    'subscriber',
    'provider',
    'other',
  ];

  /// Returns the enum value with an element attached
  ClaimPayeeTypeCodes withElement(Element? newElement) {
    return ClaimPayeeTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ClaimPayeeTypeCodes.$value';
}
