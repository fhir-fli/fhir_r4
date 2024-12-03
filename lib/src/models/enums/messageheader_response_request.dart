// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// HL7-defined table of codes which identify conditions under which acknowledgments are required to be returned in response to a message.
class MessageheaderResponseRequest extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MessageheaderResponseRequest._(super.value, [super.element]);

  /// Factory constructor to create [MessageheaderResponseRequest] from JSON.
  factory MessageheaderResponseRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageheaderResponseRequest.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MessageheaderResponseRequest cannot be constructed from JSON.',
      );
    }
    return MessageheaderResponseRequest._(value, element);
  }

  /// always
  static final MessageheaderResponseRequest always =
      MessageheaderResponseRequest._(
    'always',
  );

  /// on_error
  static final MessageheaderResponseRequest on_error =
      MessageheaderResponseRequest._(
    'on-error',
  );

  /// never
  static final MessageheaderResponseRequest never =
      MessageheaderResponseRequest._(
    'never',
  );

  /// on_success
  static final MessageheaderResponseRequest on_success =
      MessageheaderResponseRequest._(
    'on-success',
  );

  /// For instances where an Element is present but not value

  static final MessageheaderResponseRequest elementOnly =
      MessageheaderResponseRequest._('');

  /// List of all enum-like values
  static final List<MessageheaderResponseRequest> values = [
    always,
    on_error,
    never,
    on_success,
  ];

  /// Clones the current instance
  @override
  MessageheaderResponseRequest clone() => MessageheaderResponseRequest._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MessageheaderResponseRequest setElement(
    String name,
    dynamic elementValue,
  ) {
    return MessageheaderResponseRequest._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MessageheaderResponseRequest withElement(Element? newElement) {
    return MessageheaderResponseRequest._(value, newElement);
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
  MessageheaderResponseRequest copyWith({
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
    return MessageheaderResponseRequest._(
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
