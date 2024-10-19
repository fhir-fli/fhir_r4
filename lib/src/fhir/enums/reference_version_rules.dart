// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Whether a reference needs to be version specific or version independent, or whether either can be used.
@Entity()
class ReferenceVersionRules extends FhirCode {
  /// Factory constructor to create [ReferenceVersionRules] from JSON.
  factory ReferenceVersionRules.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceVersionRules.elementOnly(element);
    }
    if (values.contains(value)) {
      return ReferenceVersionRules._(value, element);
    }
    throw ArgumentError(
      'ReferenceVersionRules.fromJson: JSON value is not a valid value',
    );
  }

  /// either
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferenceVersionRules.either([this.element])
      : dbValue = 'either',
        super('either', element);

  /// independent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferenceVersionRules.independent([this.element])
      : dbValue = 'independent',
        super('independent', element);

  /// specific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ReferenceVersionRules.specific([this.element])
      : dbValue = 'specific',
        super('specific', element);

  /// For instances where an Element is present but not value

  ReferenceVersionRules.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ReferenceVersionRules._(super.input, [super.element])
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
    'either',
    'independent',
    'specific',
  ];

  /// Returns the enum value with an element attached
  ReferenceVersionRules withElement(Element? newElement) {
    return ReferenceVersionRules._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ReferenceVersionRules.$value';
}
