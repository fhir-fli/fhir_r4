// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Type for strand.
@Entity()
class StrandType extends FhirCode {
  /// Factory constructor to create [StrandType] from JSON.
  factory StrandType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StrandType.elementOnly(element);
    }
    if (values.contains(value)) {
      return StrandType._(value, element);
    }
    throw ArgumentError(
      'StrandType.fromJson: JSON value is not a valid value',
    );
  }

  /// watson
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StrandType.watson([this.element])
      : dbValue = 'watson',
        super('watson', element);

  /// crick
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  StrandType.crick([this.element])
      : dbValue = 'crick',
        super('crick', element);

  /// For instances where an Element is present but not value

  StrandType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  StrandType._(super.input, [super.element])
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
    'watson',
    'crick',
  ];

  /// Returns the enum value with an element attached
  StrandType withElement(Element? newElement) {
    return StrandType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'StrandType.$value';
}
