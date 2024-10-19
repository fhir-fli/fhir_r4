// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The overall intended use of a product.
@Entity()
class ProductIntendedUse extends FhirCode {
  /// Factory constructor to create [ProductIntendedUse] from JSON.
  factory ProductIntendedUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductIntendedUse.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProductIntendedUse._(value, element);
    }
    throw ArgumentError(
      'ProductIntendedUse.fromJson: JSON value is not a valid value',
    );
  }

  /// Prevention
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductIntendedUse.Prevention([this.element])
      : dbValue = 'Prevention',
        super('Prevention', element);

  /// Treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductIntendedUse.Treatment([this.element])
      : dbValue = 'Treatment',
        super('Treatment', element);

  /// Alleviation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductIntendedUse.Alleviation([this.element])
      : dbValue = 'Alleviation',
        super('Alleviation', element);

  /// Diagnosis
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductIntendedUse.Diagnosis([this.element])
      : dbValue = 'Diagnosis',
        super('Diagnosis', element);

  /// Monitoring
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductIntendedUse.Monitoring([this.element])
      : dbValue = 'Monitoring',
        super('Monitoring', element);

  /// For instances where an Element is present but not value

  ProductIntendedUse.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProductIntendedUse._(super.input, [super.element])
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
    'Prevention',
    'Treatment',
    'Alleviation',
    'Diagnosis',
    'Monitoring',
  ];

  /// Returns the enum value with an element attached
  ProductIntendedUse withElement(Element? newElement) {
    return ProductIntendedUse._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProductIntendedUse.$value';
}
