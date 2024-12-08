// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The impact of the content of a message.
class MessageSignificanceCategory extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MessageSignificanceCategory._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MessageSignificanceCategory] from JSON.
  factory MessageSignificanceCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageSignificanceCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MessageSignificanceCategory cannot be constructed from JSON.',
      );
    }
    return MessageSignificanceCategory._(value, element: element);
  }

  /// consequence
  static final MessageSignificanceCategory consequence =
      MessageSignificanceCategory._(
    'consequence',
  );

  /// currency
  static final MessageSignificanceCategory currency =
      MessageSignificanceCategory._(
    'currency',
  );

  /// notification
  static final MessageSignificanceCategory notification =
      MessageSignificanceCategory._(
    'notification',
  );

  /// For instances where an Element is present but not value

  static final MessageSignificanceCategory elementOnly =
      MessageSignificanceCategory._('');

  /// List of all enum-like values
  static final List<MessageSignificanceCategory> values = [
    consequence,
    currency,
    notification,
  ];

  /// Clones the current instance
  @override
  MessageSignificanceCategory clone() => MessageSignificanceCategory._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MessageSignificanceCategory withElement(Element? newElement) {
    return MessageSignificanceCategory._(value, element: newElement);
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
  MessageSignificanceCategory copyWith({
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
    return MessageSignificanceCategory._(
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
