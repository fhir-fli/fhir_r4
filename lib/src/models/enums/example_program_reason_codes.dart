// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Program Reason Span codes.
class ExampleProgramReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExampleProgramReasonCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ExampleProgramReasonCodes] from JSON.
  factory ExampleProgramReasonCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleProgramReasonCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExampleProgramReasonCodes cannot be constructed from JSON.',
      );
    }
    return ExampleProgramReasonCodes._(value: value, element: element);
  }

  /// as_
  static final ExampleProgramReasonCodes as_ = ExampleProgramReasonCodes._(
    value: 'as',
  );

  /// hd
  static final ExampleProgramReasonCodes hd = ExampleProgramReasonCodes._(
    value: 'hd',
  );

  /// auscr
  static final ExampleProgramReasonCodes auscr = ExampleProgramReasonCodes._(
    value: 'auscr',
  );

  /// none
  static final ExampleProgramReasonCodes none = ExampleProgramReasonCodes._(
    value: 'none',
  );

  /// For instances where an Element is present but not value

  static final ExampleProgramReasonCodes elementOnly =
      ExampleProgramReasonCodes._(value: '');

  /// List of all enum-like values
  static final List<ExampleProgramReasonCodes> values = [
    as_,
    hd,
    auscr,
    none,
  ];

  /// Clones the current instance
  @override
  ExampleProgramReasonCodes clone() => ExampleProgramReasonCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExampleProgramReasonCodes withElement(Element? newElement) {
    return ExampleProgramReasonCodes._(value: value, element: newElement);
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
  ExampleProgramReasonCodes copyWith({
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
    return ExampleProgramReasonCodes._(
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
