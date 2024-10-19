// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How an element value is interpreted when discrimination is evaluated.
@Entity()
class DiscriminatorType extends FhirCode {
  /// Factory constructor to create [DiscriminatorType] from JSON.
  factory DiscriminatorType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiscriminatorType.elementOnly(element);
    }
    if (values.contains(value)) {
      return DiscriminatorType._(value, element);
    }
    throw ArgumentError(
      'DiscriminatorType.fromJson: JSON value is not a valid value',
    );
  }

  /// value
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiscriminatorType.value([this.element])
      : dbValue = 'value',
        super('value', element);

  /// exists
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiscriminatorType.exists([this.element])
      : dbValue = 'exists',
        super('exists', element);

  /// pattern
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiscriminatorType.pattern([this.element])
      : dbValue = 'pattern',
        super('pattern', element);

  /// type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiscriminatorType.type([this.element])
      : dbValue = 'type',
        super('type', element);

  /// profile
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DiscriminatorType.profile([this.element])
      : dbValue = 'profile',
        super('profile', element);

  /// For instances where an Element is present but not value

  DiscriminatorType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DiscriminatorType._(super.input, [super.element])
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
    'value',
    'exists',
    'pattern',
    'type',
    'profile',
  ];

  /// Returns the enum value with an element attached
  DiscriminatorType withElement(Element? newElement) {
    return DiscriminatorType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DiscriminatorType.$value';
}
