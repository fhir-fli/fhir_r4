// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example set of codes that can be used for billing purposes.
class ChargeItemCode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ChargeItemCode._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ChargeItemCode] from JSON.
  factory ChargeItemCode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChargeItemCode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ChargeItemCode cannot be constructed from JSON.',
      );
    }
    return ChargeItemCode._(value, element: element);
  }

  /// value1100
  static final ChargeItemCode value1100 = ChargeItemCode._(
    '1100',
  );

  /// value1210
  static final ChargeItemCode value1210 = ChargeItemCode._(
    '1210',
  );

  /// value1320
  static final ChargeItemCode value1320 = ChargeItemCode._(
    '1320',
  );

  /// For instances where an Element is present but not value

  static final ChargeItemCode elementOnly = ChargeItemCode._('');

  /// List of all enum-like values
  static final List<ChargeItemCode> values = [
    value1100,
    value1210,
    value1320,
  ];

  /// Clones the current instance
  @override
  ChargeItemCode clone() => ChargeItemCode._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ChargeItemCode withElement(Element? newElement) {
    return ChargeItemCode._(value, element: newElement);
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
  ChargeItemCode copyWith({
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
    return ChargeItemCode._(
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
