// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a sample set of Payment Status codes.
class PaymentStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PaymentStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [PaymentStatusCodes] from JSON.
  factory PaymentStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PaymentStatusCodes cannot be constructed from JSON.',
      );
    }
    return PaymentStatusCodes._(value, element);
  }

  /// paid
  static final PaymentStatusCodes paid = PaymentStatusCodes._(
    'paid',
  );

  /// cleared
  static final PaymentStatusCodes cleared = PaymentStatusCodes._(
    'cleared',
  );

  /// For instances where an Element is present but not value

  static final PaymentStatusCodes elementOnly = PaymentStatusCodes._('');

  /// List of all enum-like values
  static final List<PaymentStatusCodes> values = [
    paid,
    cleared,
  ];

  /// Clones the current instance
  @override
  PaymentStatusCodes clone() => PaymentStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  PaymentStatusCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return PaymentStatusCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  PaymentStatusCodes withElement(Element? newElement) {
    return PaymentStatusCodes._(value, newElement);
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
  PaymentStatusCodes copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return PaymentStatusCodes._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
