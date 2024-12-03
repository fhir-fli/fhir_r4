// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Whether the application produces or consumes documents.
class DocumentMode extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DocumentMode._(super.value, [super.element]);

  /// Factory constructor to create [DocumentMode] from JSON.
  factory DocumentMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DocumentMode cannot be constructed from JSON.',
      );
    }
    return DocumentMode._(value, element);
  }

  /// producer
  static final DocumentMode producer = DocumentMode._(
    'producer',
  );

  /// consumer
  static final DocumentMode consumer = DocumentMode._(
    'consumer',
  );

  /// For instances where an Element is present but not value

  static final DocumentMode elementOnly = DocumentMode._('');

  /// List of all enum-like values
  static final List<DocumentMode> values = [
    producer,
    consumer,
  ];

  /// Clones the current instance
  @override
  DocumentMode clone() => DocumentMode._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  DocumentMode setElement(
    String name,
    dynamic elementValue,
  ) {
    return DocumentMode._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  DocumentMode withElement(Element? newElement) {
    return DocumentMode._(value, newElement);
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
  DocumentMode copyWith({
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
    return DocumentMode._(
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
