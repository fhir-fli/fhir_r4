// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Classification of warning type.
@Entity()
class WarningType extends FhirCode {
  /// Factory constructor to create [WarningType] from JSON.
  factory WarningType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return WarningType.elementOnly(element);
    }
    if (values.contains(value)) {
      return WarningType._(value, element);
    }
    throw ArgumentError(
      'WarningType.fromJson: JSON value is not a valid value',
    );
  }

  /// P313
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WarningType.P313([this.element])
      : dbValue = 'P313',
        super('P313', element);

  /// P314
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WarningType.P314([this.element])
      : dbValue = 'P314',
        super('P314', element);

  /// P315
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WarningType.P315([this.element])
      : dbValue = 'P315',
        super('P315', element);

  /// P320
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WarningType.P320([this.element])
      : dbValue = 'P320',
        super('P320', element);

  /// P321
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WarningType.P321([this.element])
      : dbValue = 'P321',
        super('P321', element);

  /// P322
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WarningType.P322([this.element])
      : dbValue = 'P322',
        super('P322', element);

  /// P330
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WarningType.P330([this.element])
      : dbValue = 'P330',
        super('P330', element);

  /// P331
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WarningType.P331([this.element])
      : dbValue = 'P331',
        super('P331', element);

  /// P361
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WarningType.P361([this.element])
      : dbValue = 'P361',
        super('P361', element);

  /// P363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  WarningType.P363([this.element])
      : dbValue = 'P363',
        super('P363', element);

  /// For instances where an Element is present but not value

  WarningType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  WarningType._(super.input, [super.element])
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
    'P313',
    'P314',
    'P315',
    'P320',
    'P321',
    'P322',
    'P330',
    'P331',
    'P361',
    'P363',
  ];

  /// Returns the enum value with an element attached
  WarningType withElement(Element? newElement) {
    return WarningType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'WarningType.$value';
}
