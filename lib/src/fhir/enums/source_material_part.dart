// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// An anatomical origin of the source material within an organism.
@Entity()
class SourceMaterialPart extends FhirCode {
  /// Factory constructor to create [SourceMaterialPart] from JSON.
  factory SourceMaterialPart.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SourceMaterialPart.elementOnly(element);
    }
    if (values.contains(value)) {
      return SourceMaterialPart._(value, element);
    }
    throw ArgumentError(
      'SourceMaterialPart.fromJson: JSON value is not a valid value',
    );
  }

  /// Animal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SourceMaterialPart.Animal([this.element])
      : dbValue = 'Animal',
        super('Animal', element);

  /// Plant
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SourceMaterialPart.Plant([this.element])
      : dbValue = 'Plant',
        super('Plant', element);

  /// Mineral
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SourceMaterialPart.Mineral([this.element])
      : dbValue = 'Mineral',
        super('Mineral', element);

  /// For instances where an Element is present but not value

  SourceMaterialPart.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SourceMaterialPart._(super.input, [super.element])
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
    'Animal',
    'Plant',
    'Mineral',
  ];

  /// Returns the enum value with an element attached
  SourceMaterialPart withElement(Element? newElement) {
    return SourceMaterialPart._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SourceMaterialPart.$value';
}
