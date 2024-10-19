// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes the financial processing priority codes.
@Entity()
class ProcessPriorityCodes extends FhirCode {
  /// Factory constructor to create [ProcessPriorityCodes] from JSON.
  factory ProcessPriorityCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcessPriorityCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProcessPriorityCodes._(value, element);
    }
    throw ArgumentError(
      'ProcessPriorityCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// stat
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcessPriorityCodes.stat([this.element])
      : dbValue = 'stat',
        super('stat', element);

  /// normal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcessPriorityCodes.normal([this.element])
      : dbValue = 'normal',
        super('normal', element);

  /// deferred_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProcessPriorityCodes.deferred_([this.element])
      : dbValue = 'deferred',
        super('deferred', element);

  /// For instances where an Element is present but not value

  ProcessPriorityCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProcessPriorityCodes._(super.input, [super.element])
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
    'stat',
    'normal',
    'deferred',
  ];

  /// Returns the enum value with an element attached
  ProcessPriorityCodes withElement(Element? newElement) {
    return ProcessPriorityCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProcessPriorityCodes.$value';
}
