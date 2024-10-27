// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Contact type for a Medicinal Product.
class ProductContactType {
  // Private constructor for internal use (like enum)
  ProductContactType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProductContactType values
  /// ProposedMAH
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductContactType ProposedMAH = ProductContactType._(
    'ProposedMAH',
  );

  /// ProcedureContactDuring
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductContactType ProcedureContactDuring = ProductContactType._(
    'ProcedureContactDuring',
  );

  /// ProcedureContactAfter
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductContactType ProcedureContactAfter = ProductContactType._(
    'ProcedureContactAfter',
  );

  /// QPPV
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductContactType QPPV = ProductContactType._(
    'QPPV',
  );

  /// PVEnquiries
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ProductContactType PVEnquiries = ProductContactType._(
    'PVEnquiries',
  );

  /// For instances where an Element is present but not value

  static final ProductContactType elementOnly = ProductContactType._('');

  /// List of all enum-like values
  static final List<ProductContactType> values = [
    ProposedMAH,
    ProcedureContactDuring,
    ProcedureContactAfter,
    QPPV,
    PVEnquiries,
  ];

  /// Returns the enum value with an element attached
  ProductContactType withElement(Element? newElement) {
    return ProductContactType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ProductContactType] from JSON.
  static ProductContactType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductContactType.elementOnly.withElement(element);
    }
    return ProductContactType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
