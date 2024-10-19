// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A classification of the ingredient identifying its purpose within the product.
@Entity()
class IngredientRole extends FhirCode {
  /// Factory constructor to create [IngredientRole] from JSON.
  factory IngredientRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IngredientRole.elementOnly(element);
    }
    if (values.contains(value)) {
      return IngredientRole._(value, element);
    }
    throw ArgumentError(
      'IngredientRole.fromJson: JSON value is not a valid value',
    );
  }

  /// value100000072072
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IngredientRole.value100000072072([this.element])
      : dbValue = '100000072072',
        super('100000072072', element);

  /// value100000072073
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IngredientRole.value100000072073([this.element])
      : dbValue = '100000072073',
        super('100000072073', element);

  /// value100000072082
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IngredientRole.value100000072082([this.element])
      : dbValue = '100000072082',
        super('100000072082', element);

  /// value100000136065
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IngredientRole.value100000136065([this.element])
      : dbValue = '100000136065',
        super('100000136065', element);

  /// value100000136066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IngredientRole.value100000136066([this.element])
      : dbValue = '100000136066',
        super('100000136066', element);

  /// value100000136178
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IngredientRole.value100000136178([this.element])
      : dbValue = '100000136178',
        super('100000136178', element);

  /// value100000136179
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IngredientRole.value100000136179([this.element])
      : dbValue = '100000136179',
        super('100000136179', element);

  /// value100000136561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IngredientRole.value100000136561([this.element])
      : dbValue = '100000136561',
        super('100000136561', element);

  /// value200000003427
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  IngredientRole.value200000003427([this.element])
      : dbValue = '200000003427',
        super('200000003427', element);

  /// For instances where an Element is present but not value

  IngredientRole.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  IngredientRole._(super.input, [super.element])
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
    '100000072072',
    '100000072073',
    '100000072082',
    '100000136065',
    '100000136066',
    '100000136178',
    '100000136179',
    '100000136561',
    '200000003427',
  ];

  /// Returns the enum value with an element attached
  IngredientRole withElement(Element? newElement) {
    return IngredientRole._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'IngredientRole.$value';
}
