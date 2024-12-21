// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of a guidance response.
class GuidanceResponseStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  GuidanceResponseStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [GuidanceResponseStatus] from JSON.
  factory GuidanceResponseStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GuidanceResponseStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GuidanceResponseStatus cannot be constructed from JSON.',
      );
    }
    return GuidanceResponseStatus._(value, element: element);
  }

  /// success
  static final GuidanceResponseStatus success = GuidanceResponseStatus._(
    'success',
  );

  /// data_requested
  static final GuidanceResponseStatus data_requested = GuidanceResponseStatus._(
    'data-requested',
  );

  /// data_required
  static final GuidanceResponseStatus data_required = GuidanceResponseStatus._(
    'data-required',
  );

  /// in_progress
  static final GuidanceResponseStatus in_progress = GuidanceResponseStatus._(
    'in-progress',
  );

  /// failure
  static final GuidanceResponseStatus failure = GuidanceResponseStatus._(
    'failure',
  );

  /// entered_in_error
  static final GuidanceResponseStatus entered_in_error =
      GuidanceResponseStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final GuidanceResponseStatus elementOnly =
      GuidanceResponseStatus._('');

  /// List of all enum-like values
  static final List<GuidanceResponseStatus> values = [
    success,
    data_requested,
    data_required,
    in_progress,
    failure,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  GuidanceResponseStatus clone() => GuidanceResponseStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GuidanceResponseStatus withElement(Element? newElement) {
    return GuidanceResponseStatus._(
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
  GuidanceResponseStatus copyWith({
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
    return GuidanceResponseStatus._(
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
