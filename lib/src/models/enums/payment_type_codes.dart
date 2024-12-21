// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Payment Type codes.
class PaymentTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PaymentTypeCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [PaymentTypeCodes] from JSON.
  factory PaymentTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentTypeCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PaymentTypeCodes cannot be constructed from JSON.',
      );
    }
    return PaymentTypeCodes._(value, element: element);
  }

  /// payment
  static final PaymentTypeCodes payment = PaymentTypeCodes._(
    'payment',
  );

  /// adjustment
  static final PaymentTypeCodes adjustment = PaymentTypeCodes._(
    'adjustment',
  );

  /// advance
  static final PaymentTypeCodes advance = PaymentTypeCodes._(
    'advance',
  );

  /// For instances where an Element is present but not value

  static final PaymentTypeCodes elementOnly = PaymentTypeCodes._('');

  /// List of all enum-like values
  static final List<PaymentTypeCodes> values = [
    payment,
    adjustment,
    advance,
  ];

  /// Clones the current instance
  @override
  PaymentTypeCodes clone() => PaymentTypeCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  PaymentTypeCodes withElement(Element? newElement) {
    return PaymentTypeCodes._(
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
  PaymentTypeCodes copyWith({
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
    return PaymentTypeCodes._(
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
