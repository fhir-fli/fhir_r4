// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Details of how a designation would be used
@Entity()
class DesignationUse extends FhirCode {
  /// Factory constructor to create [DesignationUse] from JSON.
  factory DesignationUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DesignationUse.elementOnly(element);
    }
    if (values.contains(value)) {
      return DesignationUse._(value, element);
    }
    throw ArgumentError(
      'DesignationUse.fromJson: JSON value is not a valid value',
    );
  }

  /// value900000000000003001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DesignationUse.value900000000000003001([this.element])
      : dbValue = '900000000000003001',
        super('900000000000003001', element);

  /// value900000000000013009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DesignationUse.value900000000000013009([this.element])
      : dbValue = '900000000000013009',
        super('900000000000013009', element);

  /// For instances where an Element is present but not value

  DesignationUse.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DesignationUse._(super.input, [super.element])
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
    '900000000000003001',
    '900000000000013009',
  ];

  /// Returns the enum value with an element attached
  DesignationUse withElement(Element? newElement) {
    return DesignationUse._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DesignationUse.$value';
}
