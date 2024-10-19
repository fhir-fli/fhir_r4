// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How a search parameter relates to the set of elements returned by evaluating its xpath query.
@Entity()
class XPathUsageType extends FhirCode {
  /// Factory constructor to create [XPathUsageType] from JSON.
  factory XPathUsageType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return XPathUsageType.elementOnly(element);
    }
    if (values.contains(value)) {
      return XPathUsageType._(value, element);
    }
    throw ArgumentError(
      'XPathUsageType.fromJson: JSON value is not a valid value',
    );
  }

  /// normal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  XPathUsageType.normal([this.element])
      : dbValue = 'normal',
        super('normal', element);

  /// phonetic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  XPathUsageType.phonetic([this.element])
      : dbValue = 'phonetic',
        super('phonetic', element);

  /// nearby
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  XPathUsageType.nearby([this.element])
      : dbValue = 'nearby',
        super('nearby', element);

  /// distance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  XPathUsageType.distance([this.element])
      : dbValue = 'distance',
        super('distance', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  XPathUsageType.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// For instances where an Element is present but not value

  XPathUsageType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  XPathUsageType._(super.input, [super.element])
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
    'normal',
    'phonetic',
    'nearby',
    'distance',
    'other',
  ];

  /// Returns the enum value with an element attached
  XPathUsageType withElement(Element? newElement) {
    return XPathUsageType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'XPathUsageType.$value';
}
