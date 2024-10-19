// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Identifies the purpose for this identifier, if known .
@Entity()
class IdentifierUse extends FhirCode {
  /// Factory constructor to create [IdentifierUse] from JSON.
  factory IdentifierUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierUse.elementOnly(element);
    }
    if (values.contains(value)) {
      return IdentifierUse._(value, element);
    }
    throw ArgumentError(
      'IdentifierUse.fromJson: JSON value is not a valid value',
    );
  }

  /// usual
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierUse.usual([this.element])
      : dbValue = 'usual',
        super('usual', element);

  /// official
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierUse.official([this.element])
      : dbValue = 'official',
        super('official', element);

  /// temp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierUse.temp([this.element])
      : dbValue = 'temp',
        super('temp', element);

  /// secondary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierUse.secondary([this.element])
      : dbValue = 'secondary',
        super('secondary', element);

  /// old
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IdentifierUse.old([this.element])
      : dbValue = 'old',
        super('old', element);

  /// For instances where an Element is present but not value

  IdentifierUse.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  IdentifierUse._(super.input, [super.element])
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
    'usual',
    'official',
    'temp',
    'secondary',
    'old',
  ];

  /// Returns the enum value with an element attached
  IdentifierUse withElement(Element? newElement) {
    return IdentifierUse._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IdentifierUse.$value';
}
