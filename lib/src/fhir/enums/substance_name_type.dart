// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The type of a name given to a substance.
@Entity()
class SubstanceNameType extends FhirCode {
  /// Factory constructor to create [SubstanceNameType] from JSON.
  factory SubstanceNameType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceNameType.elementOnly(element);
    }
    if (values.contains(value)) {
      return SubstanceNameType._(value, element);
    }
    throw ArgumentError(
      'SubstanceNameType.fromJson: JSON value is not a valid value',
    );
  }

  /// Systematic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameType.Systematic([this.element])
      : dbValue = 'Systematic',
        super('Systematic', element);

  /// Scientific
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameType.Scientific([this.element])
      : dbValue = 'Scientific',
        super('Scientific', element);

  /// Brand
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubstanceNameType.Brand([this.element])
      : dbValue = 'Brand',
        super('Brand', element);

  /// For instances where an Element is present but not value

  SubstanceNameType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SubstanceNameType._(super.input, [super.element])
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
    'Systematic',
    'Scientific',
    'Brand',
  ];

  /// Returns the enum value with an element attached
  SubstanceNameType withElement(Element? newElement) {
    return SubstanceNameType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubstanceNameType.$value';
}
