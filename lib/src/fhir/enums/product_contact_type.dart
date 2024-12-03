// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Contact type for a Medicinal Product.
class ProductContactType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProductContactType._(super.value, [super.element]);

  /// Factory constructor to create [ProductContactType] from JSON.
  factory ProductContactType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProductContactType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'ProductContactType cannot be constructed from JSON.');
    }
    return ProductContactType._(value, element);
  }

  /// ProposedMAH
  static final ProductContactType ProposedMAH = ProductContactType._(
    'ProposedMAH',
  );

  /// ProcedureContactDuring
  static final ProductContactType ProcedureContactDuring = ProductContactType._(
    'ProcedureContactDuring',
  );

  /// ProcedureContactAfter
  static final ProductContactType ProcedureContactAfter = ProductContactType._(
    'ProcedureContactAfter',
  );

  /// QPPV
  static final ProductContactType QPPV = ProductContactType._(
    'QPPV',
  );

  /// PVEnquiries
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

  /// Clones the current instance
  @override
  ProductContactType clone() => ProductContactType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ProductContactType setElement(
    String name,
    dynamic elementValue,
  ) {
    return ProductContactType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ProductContactType withElement(Element? newElement) {
    return ProductContactType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ProductContactType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ProductContactType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
