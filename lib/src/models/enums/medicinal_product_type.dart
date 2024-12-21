// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Overall defining type of this Medicinal Product.
class MedicinalProductType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicinalProductType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MedicinalProductType] from JSON.
  factory MedicinalProductType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicinalProductType cannot be constructed from JSON.',
      );
    }
    return MedicinalProductType._(value, element: element);
  }

  /// MedicinalProduct
  static final MedicinalProductType MedicinalProduct = MedicinalProductType._(
    'MedicinalProduct',
  );

  /// InvestigationalProduct
  static final MedicinalProductType InvestigationalProduct =
      MedicinalProductType._(
    'InvestigationalProduct',
  );

  /// For instances where an Element is present but not value

  static final MedicinalProductType elementOnly = MedicinalProductType._('');

  /// List of all enum-like values
  static final List<MedicinalProductType> values = [
    MedicinalProduct,
    InvestigationalProduct,
  ];

  /// Clones the current instance
  @override
  MedicinalProductType clone() => MedicinalProductType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicinalProductType withElement(Element? newElement) {
    return MedicinalProductType._(
      value,
      element: newElement,
    );
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
  MedicinalProductType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return MedicinalProductType._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
