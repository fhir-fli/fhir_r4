// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// How slices are interpreted when evaluating an instance.
@Entity()
class SlicingRules extends FhirCode {
  /// Factory constructor to create [SlicingRules] from JSON.
  factory SlicingRules.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlicingRules.elementOnly(element);
    }
    if (values.contains(value)) {
      return SlicingRules._(value, element);
    }
    throw ArgumentError(
      'SlicingRules.fromJson: JSON value is not a valid value',
    );
  }

  /// closed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SlicingRules.closed([this.element])
      : dbValue = 'closed',
        super('closed', element);

  /// open
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SlicingRules.open([this.element])
      : dbValue = 'open',
        super('open', element);

  /// openAtEnd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SlicingRules.openAtEnd([this.element])
      : dbValue = 'openAtEnd',
        super('openAtEnd', element);

  /// For instances where an Element is present but not value

  SlicingRules.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SlicingRules._(super.input, [super.element])
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
    'closed',
    'open',
    'openAtEnd',
  ];

  /// Returns the enum value with an element attached
  SlicingRules withElement(Element? newElement) {
    return SlicingRules._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SlicingRules.$value';
}
