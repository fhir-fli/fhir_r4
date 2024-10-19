// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Overall nature of the adverse event, e.g. real or potential.
@Entity()
class AdverseEventActuality extends FhirCode {
  /// Factory constructor to create [AdverseEventActuality] from JSON.
  factory AdverseEventActuality.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventActuality.elementOnly(element);
    }
    if (values.contains(value)) {
      return AdverseEventActuality._(value, element);
    }
    throw ArgumentError(
      'AdverseEventActuality.fromJson: JSON value is not a valid value',
    );
  }

  /// actual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventActuality.actual([this.element])
      : dbValue = 'actual',
        super('actual', element);

  /// potential
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdverseEventActuality.potential([this.element])
      : dbValue = 'potential',
        super('potential', element);

  /// For instances where an Element is present but not value

  AdverseEventActuality.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AdverseEventActuality._(super.input, [super.element])
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
    'actual',
    'potential',
  ];

  /// Returns the enum value with an element attached
  AdverseEventActuality withElement(Element? newElement) {
    return AdverseEventActuality._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdverseEventActuality.$value';
}
