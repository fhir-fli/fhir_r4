// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// NLM codes Internet or Print.
@Entity()
class CitedMedium extends FhirCode {
  /// Factory constructor to create [CitedMedium] from JSON.
  factory CitedMedium.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedMedium.elementOnly(element);
    }
    if (values.contains(value)) {
      return CitedMedium._(value, element);
    }
    throw ArgumentError(
      'CitedMedium.fromJson: JSON value is not a valid value',
    );
  }

  /// internet
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedMedium.internet([this.element])
      : dbValue = 'internet',
        super('internet', element);

  /// print
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedMedium.print([this.element])
      : dbValue = 'print',
        super('print', element);

  /// offline_digital_storage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedMedium.offline_digital_storage([this.element])
      : dbValue = 'offline-digital-storage',
        super('offline-digital-storage', element);

  /// internet_without_issue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedMedium.internet_without_issue([this.element])
      : dbValue = 'internet-without-issue',
        super('internet-without-issue', element);

  /// print_without_issue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedMedium.print_without_issue([this.element])
      : dbValue = 'print-without-issue',
        super('print-without-issue', element);

  /// offline_digital_storage_without_issue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  CitedMedium.offline_digital_storage_without_issue([this.element])
      : dbValue = 'offline-digital-storage-without-issue',
        super('offline-digital-storage-without-issue', element);

  /// For instances where an Element is present but not value

  CitedMedium.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  CitedMedium._(super.input, [super.element])
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
    'internet',
    'print',
    'offline-digital-storage',
    'internet-without-issue',
    'print-without-issue',
    'offline-digital-storage-without-issue',
  ];

  /// Returns the enum value with an element attached
  CitedMedium withElement(Element? newElement) {
    return CitedMedium._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CitedMedium.$value';
}
