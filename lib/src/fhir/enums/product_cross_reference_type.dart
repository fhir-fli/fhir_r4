// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Relationship to another Medicinal Product.
@Entity()
class ProductCrossReferenceType extends FhirCode {
  /// Factory constructor to create [ProductCrossReferenceType] from JSON.
  factory ProductCrossReferenceType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductCrossReferenceType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProductCrossReferenceType._(value, element);
    }
    throw ArgumentError(
      'ProductCrossReferenceType.fromJson: JSON value is not a valid value',
    );
  }

  /// InvestigationalProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductCrossReferenceType.InvestigationalProduct([this.element])
      : dbValue = 'InvestigationalProduct',
        super('InvestigationalProduct', element);

  /// VirtualProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductCrossReferenceType.VirtualProduct([this.element])
      : dbValue = 'VirtualProduct',
        super('VirtualProduct', element);

  /// ActualProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductCrossReferenceType.ActualProduct([this.element])
      : dbValue = 'ActualProduct',
        super('ActualProduct', element);

  /// BrandedProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductCrossReferenceType.BrandedProduct([this.element])
      : dbValue = 'BrandedProduct',
        super('BrandedProduct', element);

  /// GenericProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductCrossReferenceType.GenericProduct([this.element])
      : dbValue = 'GenericProduct',
        super('GenericProduct', element);

  /// Parallel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductCrossReferenceType.Parallel([this.element])
      : dbValue = 'Parallel',
        super('Parallel', element);

  /// For instances where an Element is present but not value

  ProductCrossReferenceType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProductCrossReferenceType._(super.input, [super.element])
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
    'InvestigationalProduct',
    'VirtualProduct',
    'ActualProduct',
    'BrandedProduct',
    'GenericProduct',
    'Parallel',
  ];

  /// Returns the enum value with an element attached
  ProductCrossReferenceType withElement(Element? newElement) {
    return ProductCrossReferenceType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProductCrossReferenceType.$value';
}
