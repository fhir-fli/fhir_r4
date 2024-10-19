// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Laterality: SNOMED-CT concepts for 'left', 'right', and 'bilateral'
@Entity()
class Laterality extends FhirCode {
  /// Factory constructor to create [Laterality] from JSON.
  factory Laterality.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Laterality.elementOnly(element);
    }
    if (values.contains(value)) {
      return Laterality._(value, element);
    }
    throw ArgumentError(
      'Laterality.fromJson: JSON value is not a valid value',
    );
  }

  /// value419161000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Laterality.value419161000([this.element])
      : dbValue = '419161000',
        super('419161000', element);

  /// value419465000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Laterality.value419465000([this.element])
      : dbValue = '419465000',
        super('419465000', element);

  /// value51440002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Laterality.value51440002([this.element])
      : dbValue = '51440002',
        super('51440002', element);

  /// For instances where an Element is present but not value

  Laterality.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  Laterality._(super.input, [super.element])
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
    '419161000',
    '419465000',
    '51440002',
  ];

  /// Returns the enum value with an element attached
  Laterality withElement(Element? newElement) {
    return Laterality._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'Laterality.$value';
}
