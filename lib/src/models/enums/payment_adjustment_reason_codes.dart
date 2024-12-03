// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes smattering of Payment Adjustment Reason codes.
class PaymentAdjustmentReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PaymentAdjustmentReasonCodes._(super.value, [super.element]);

  /// Factory constructor to create [PaymentAdjustmentReasonCodes] from JSON.
  factory PaymentAdjustmentReasonCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PaymentAdjustmentReasonCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PaymentAdjustmentReasonCodes cannot be constructed from JSON.',
      );
    }
    return PaymentAdjustmentReasonCodes._(value, element);
  }

  /// a001
  static final PaymentAdjustmentReasonCodes a001 =
      PaymentAdjustmentReasonCodes._(
    'a001',
  );

  /// a002
  static final PaymentAdjustmentReasonCodes a002 =
      PaymentAdjustmentReasonCodes._(
    'a002',
  );

  /// For instances where an Element is present but not value

  static final PaymentAdjustmentReasonCodes elementOnly =
      PaymentAdjustmentReasonCodes._('');

  /// List of all enum-like values
  static final List<PaymentAdjustmentReasonCodes> values = [
    a001,
    a002,
  ];

  /// Clones the current instance
  @override
  PaymentAdjustmentReasonCodes clone() => PaymentAdjustmentReasonCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  PaymentAdjustmentReasonCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return PaymentAdjustmentReasonCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  PaymentAdjustmentReasonCodes withElement(Element? newElement) {
    return PaymentAdjustmentReasonCodes._(value, newElement);
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
  PaymentAdjustmentReasonCodes copyWith({
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
    return PaymentAdjustmentReasonCodes._(
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
