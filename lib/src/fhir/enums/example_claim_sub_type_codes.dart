// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Claim SubType codes which are used to distinguish the claim types for example within type institutional there may be subtypes for emergency services, bed stay and transportation.
@Entity()
class ExampleClaimSubTypeCodes extends FhirCode {
  /// Factory constructor to create [ExampleClaimSubTypeCodes] from JSON.
  factory ExampleClaimSubTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleClaimSubTypeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExampleClaimSubTypeCodes._(value, element);
    }
    throw ArgumentError(
      'ExampleClaimSubTypeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// ortho
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleClaimSubTypeCodes.ortho([this.element])
      : dbValue = 'ortho',
        super('ortho', element);

  /// emergency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleClaimSubTypeCodes.emergency([this.element])
      : dbValue = 'emergency',
        super('emergency', element);

  /// For instances where an Element is present but not value

  ExampleClaimSubTypeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExampleClaimSubTypeCodes._(super.input, [super.element])
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
    'ortho',
    'emergency',
  ];

  /// Returns the enum value with an element attached
  ExampleClaimSubTypeCodes withElement(Element? newElement) {
    return ExampleClaimSubTypeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleClaimSubTypeCodes.$value';
}
