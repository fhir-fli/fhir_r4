// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Whether the application produces or consumes documents.
class DocumentMode extends FhirCode {
  // Private constructor for internal use (like enum)
  DocumentMode._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [DocumentMode] with element only
  factory DocumentMode.empty() => DocumentMode._('');

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
    return DocumentMode._(
      value,
      element: element,
    );
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
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DocumentMode withElement(Element? newElement) {
    return DocumentMode._(
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
  DocumentMode copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return DocumentMode._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
