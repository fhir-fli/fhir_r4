// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the document reference.
class DocumentReferenceStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DocumentReferenceStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [DocumentReferenceStatus] from JSON.
  factory DocumentReferenceStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentReferenceStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DocumentReferenceStatus cannot be constructed from JSON.',
      );
    }
    return DocumentReferenceStatus._(value, element: element);
  }

  /// current
  static final DocumentReferenceStatus current = DocumentReferenceStatus._(
    'current',
  );

  /// superseded
  static final DocumentReferenceStatus superseded = DocumentReferenceStatus._(
    'superseded',
  );

  /// entered_in_error
  static final DocumentReferenceStatus entered_in_error =
      DocumentReferenceStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final DocumentReferenceStatus elementOnly =
      DocumentReferenceStatus._('');

  /// List of all enum-like values
  static final List<DocumentReferenceStatus> values = [
    current,
    superseded,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  DocumentReferenceStatus clone() => DocumentReferenceStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DocumentReferenceStatus withElement(Element? newElement) {
    return DocumentReferenceStatus._(
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
  DocumentReferenceStatus copyWith({
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
    return DocumentReferenceStatus._(
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
