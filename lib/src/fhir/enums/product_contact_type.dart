// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Contact type for a Medicinal Product.
@Entity()
class ProductContactType extends FhirCode {
  /// Factory constructor to create [ProductContactType] from JSON.
  factory ProductContactType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductContactType.elementOnly(element);
    }
    if (values.contains(value)) {
      return ProductContactType._(value, element);
    }
    throw ArgumentError(
      'ProductContactType.fromJson: JSON value is not a valid value',
    );
  }

  /// ProposedMAH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductContactType.ProposedMAH([this.element])
      : dbValue = 'ProposedMAH',
        super('ProposedMAH', element);

  /// ProcedureContactDuring
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductContactType.ProcedureContactDuring([this.element])
      : dbValue = 'ProcedureContactDuring',
        super('ProcedureContactDuring', element);

  /// ProcedureContactAfter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductContactType.ProcedureContactAfter([this.element])
      : dbValue = 'ProcedureContactAfter',
        super('ProcedureContactAfter', element);

  /// QPPV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductContactType.QPPV([this.element])
      : dbValue = 'QPPV',
        super('QPPV', element);

  /// PVEnquiries
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ProductContactType.PVEnquiries([this.element])
      : dbValue = 'PVEnquiries',
        super('PVEnquiries', element);

  /// For instances where an Element is present but not value

  ProductContactType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ProductContactType._(super.input, [super.element])
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
    'ProposedMAH',
    'ProcedureContactDuring',
    'ProcedureContactAfter',
    'QPPV',
    'PVEnquiries',
  ];

  /// Returns the enum value with an element attached
  ProductContactType withElement(Element? newElement) {
    return ProductContactType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ProductContactType.$value';
}
