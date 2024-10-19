// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Biologically Derived Product Category.
@Entity()
class BiologicallyDerivedProductCategory extends FhirCode {
  /// Factory constructor to create [BiologicallyDerivedProductCategory] from JSON.
  factory BiologicallyDerivedProductCategory.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductCategory.elementOnly(element);
    }
    if (values.contains(value)) {
      return BiologicallyDerivedProductCategory._(value, element);
    }
    throw ArgumentError(
      'BiologicallyDerivedProductCategory.fromJson: JSON value is not a valid value',
    );
  }

  /// organ
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BiologicallyDerivedProductCategory.organ([this.element])
      : dbValue = 'organ',
        super('organ', element);

  /// tissue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BiologicallyDerivedProductCategory.tissue([this.element])
      : dbValue = 'tissue',
        super('tissue', element);

  /// fluid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BiologicallyDerivedProductCategory.fluid([this.element])
      : dbValue = 'fluid',
        super('fluid', element);

  /// cells
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BiologicallyDerivedProductCategory.cells([this.element])
      : dbValue = 'cells',
        super('cells', element);

  /// biologicalAgent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BiologicallyDerivedProductCategory.biologicalAgent([this.element])
      : dbValue = 'biologicalAgent',
        super('biologicalAgent', element);

  /// For instances where an Element is present but not value

  BiologicallyDerivedProductCategory.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  BiologicallyDerivedProductCategory._(super.input, [super.element])
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
    'organ',
    'tissue',
    'fluid',
    'cells',
    'biologicalAgent',
  ];

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductCategory withElement(Element? newElement) {
    return BiologicallyDerivedProductCategory._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BiologicallyDerivedProductCategory.$value';
}
