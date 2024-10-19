// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Use of contact point.
@Entity()
class ContactPointUse extends FhirCode {
  /// Factory constructor to create [ContactPointUse] from JSON.
  factory ContactPointUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointUse.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContactPointUse._(value, element);
    }
    throw ArgumentError(
      'ContactPointUse.fromJson: JSON value is not a valid value',
    );
  }

  /// home
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactPointUse.home([this.element])
      : dbValue = 'home',
        super('home', element);

  /// work
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactPointUse.work([this.element])
      : dbValue = 'work',
        super('work', element);

  /// temp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactPointUse.temp([this.element])
      : dbValue = 'temp',
        super('temp', element);

  /// old
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactPointUse.old([this.element])
      : dbValue = 'old',
        super('old', element);

  /// mobile
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContactPointUse.mobile([this.element])
      : dbValue = 'mobile',
        super('mobile', element);

  /// For instances where an Element is present but not value

  ContactPointUse.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContactPointUse._(super.input, [super.element])
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
    'home',
    'work',
    'temp',
    'old',
    'mobile',
  ];

  /// Returns the enum value with an element attached
  ContactPointUse withElement(Element? newElement) {
    return ContactPointUse._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContactPointUse.$value';
}
