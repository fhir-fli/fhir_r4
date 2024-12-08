// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The protocol used for message transport.
class MessageTransport extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MessageTransport._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MessageTransport] from JSON.
  factory MessageTransport.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageTransport.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MessageTransport cannot be constructed from JSON.',
      );
    }
    return MessageTransport._(value, element: element);
  }

  /// http
  static final MessageTransport http = MessageTransport._(
    'http',
  );

  /// ftp
  static final MessageTransport ftp = MessageTransport._(
    'ftp',
  );

  /// mllp
  static final MessageTransport mllp = MessageTransport._(
    'mllp',
  );

  /// For instances where an Element is present but not value

  static final MessageTransport elementOnly = MessageTransport._('');

  /// List of all enum-like values
  static final List<MessageTransport> values = [
    http,
    ftp,
    mllp,
  ];

  /// Clones the current instance
  @override
  MessageTransport clone() => MessageTransport._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MessageTransport withElement(Element? newElement) {
    return MessageTransport._(value, element: newElement);
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
  MessageTransport copyWith({
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
    return MessageTransport._(
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
