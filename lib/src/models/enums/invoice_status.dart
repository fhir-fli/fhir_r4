// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of an Invoice.
class InvoiceStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  InvoiceStatus._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [InvoiceStatus] from JSON.
  factory InvoiceStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvoiceStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InvoiceStatus cannot be constructed from JSON.',
      );
    }
    return InvoiceStatus._(value: value, element: element);
  }

  /// draft
  static final InvoiceStatus draft = InvoiceStatus._(
    value: 'draft',
  );

  /// issued
  static final InvoiceStatus issued = InvoiceStatus._(
    value: 'issued',
  );

  /// balanced
  static final InvoiceStatus balanced = InvoiceStatus._(
    value: 'balanced',
  );

  /// cancelled
  static final InvoiceStatus cancelled = InvoiceStatus._(
    value: 'cancelled',
  );

  /// entered_in_error
  static final InvoiceStatus entered_in_error = InvoiceStatus._(
    value: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final InvoiceStatus elementOnly = InvoiceStatus._(value: '');

  /// List of all enum-like values
  static final List<InvoiceStatus> values = [
    draft,
    issued,
    balanced,
    cancelled,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  InvoiceStatus clone() => InvoiceStatus._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  InvoiceStatus withElement(Element? newElement) {
    return InvoiceStatus._(value: value, element: newElement);
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
  InvoiceStatus copyWith({
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
    return InvoiceStatus._(
      value: newValue ?? value,
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
