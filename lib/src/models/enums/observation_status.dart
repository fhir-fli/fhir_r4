// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes providing the status of an observation.
class ObservationStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ObservationStatus._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ObservationStatus] from JSON.
  factory ObservationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationStatus cannot be constructed from JSON.',
      );
    }
    return ObservationStatus._(value: value, element: element);
  }

  /// registered
  static final ObservationStatus registered = ObservationStatus._(
    value: 'registered',
  );

  /// preliminary
  static final ObservationStatus preliminary = ObservationStatus._(
    value: 'preliminary',
  );

  /// final_
  static final ObservationStatus final_ = ObservationStatus._(
    value: 'final',
  );

  /// amended
  static final ObservationStatus amended = ObservationStatus._(
    value: 'amended',
  );

  /// corrected
  static final ObservationStatus corrected = ObservationStatus._(
    value: 'corrected',
  );

  /// cancelled
  static final ObservationStatus cancelled = ObservationStatus._(
    value: 'cancelled',
  );

  /// entered_in_error
  static final ObservationStatus entered_in_error = ObservationStatus._(
    value: 'entered-in-error',
  );

  /// unknown
  static final ObservationStatus unknown = ObservationStatus._(
    value: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final ObservationStatus elementOnly = ObservationStatus._(value: '');

  /// List of all enum-like values
  static final List<ObservationStatus> values = [
    registered,
    preliminary,
    final_,
    amended,
    corrected,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ObservationStatus clone() => ObservationStatus._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ObservationStatus withElement(Element? newElement) {
    return ObservationStatus._(value: value, element: newElement);
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
  ObservationStatus copyWith({
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
    return ObservationStatus._(
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
