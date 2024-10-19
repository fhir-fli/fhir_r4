// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Type of a name for a Medicinal Product.
@Entity()
class ProductNameType extends FhirCode {
  /// Factory constructor to create [ProductNameType] from JSON.
  factory ProductNameType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductNameType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProductNameType._(value, element);
    }
    throw ArgumentError(
      'ProductNameType.fromJson: JSON value is not a valid value',
    );
  }

  /// BAN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNameType.BAN([this.element])
      : dbValue = 'BAN',
        super('BAN', element);

  /// INN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNameType.INN([this.element])
      : dbValue = 'INN',
        super('INN', element);

  /// INNM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNameType.INNM([this.element])
      : dbValue = 'INNM',
        super('INNM', element);

  /// pINN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNameType.pINN([this.element])
      : dbValue = 'pINN',
        super('pINN', element);

  /// rINN
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductNameType.rINN([this.element])
      : dbValue = 'rINN',
        super('rINN', element);

  /// For instances where an Element is present but not value

  ProductNameType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProductNameType._(super.input, [super.element])
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
    'BAN',
    'INN',
    'INNM',
    'pINN',
    'rINN',
  ];

  /// Returns the enum value with an element attached
  ProductNameType withElement(Element? newElement) {
    return ProductNameType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProductNameType.$value';
}
