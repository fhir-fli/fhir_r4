// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the diagnostic report.
class DiagnosticReportStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DiagnosticReportStatus._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [DiagnosticReportStatus] from JSON.
  factory DiagnosticReportStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosticReportStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DiagnosticReportStatus cannot be constructed from JSON.',
      );
    }
    return DiagnosticReportStatus._(value: value, element: element);
  }

  /// registered
  static final DiagnosticReportStatus registered = DiagnosticReportStatus._(
    value: 'registered',
  );

  /// partial
  static final DiagnosticReportStatus partial = DiagnosticReportStatus._(
    value: 'partial',
  );

  /// preliminary
  static final DiagnosticReportStatus preliminary = DiagnosticReportStatus._(
    value: 'preliminary',
  );

  /// final_
  static final DiagnosticReportStatus final_ = DiagnosticReportStatus._(
    value: 'final',
  );

  /// amended
  static final DiagnosticReportStatus amended = DiagnosticReportStatus._(
    value: 'amended',
  );

  /// corrected
  static final DiagnosticReportStatus corrected = DiagnosticReportStatus._(
    value: 'corrected',
  );

  /// appended
  static final DiagnosticReportStatus appended = DiagnosticReportStatus._(
    value: 'appended',
  );

  /// cancelled
  static final DiagnosticReportStatus cancelled = DiagnosticReportStatus._(
    value: 'cancelled',
  );

  /// entered_in_error
  static final DiagnosticReportStatus entered_in_error =
      DiagnosticReportStatus._(
    value: 'entered-in-error',
  );

  /// unknown
  static final DiagnosticReportStatus unknown = DiagnosticReportStatus._(
    value: 'unknown',
  );

  /// For instances where an Element is present but not value

  static final DiagnosticReportStatus elementOnly =
      DiagnosticReportStatus._(value: '');

  /// List of all enum-like values
  static final List<DiagnosticReportStatus> values = [
    registered,
    partial,
    preliminary,
    final_,
    amended,
    corrected,
    appended,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  DiagnosticReportStatus clone() => DiagnosticReportStatus._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DiagnosticReportStatus withElement(Element? newElement) {
    return DiagnosticReportStatus._(value: value, element: newElement);
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
  DiagnosticReportStatus copyWith({
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
    return DiagnosticReportStatus._(
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
