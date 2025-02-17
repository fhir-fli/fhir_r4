// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the diagnostic report.
class DiagnosticReportStatus extends FhirCode {
  // Private constructor for internal use (like enum)
  DiagnosticReportStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [DiagnosticReportStatus] with element only
  factory DiagnosticReportStatus.empty() => DiagnosticReportStatus._('');

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
    return DiagnosticReportStatus._(
      value,
      element: element,
    );
  }

  /// registered
  static final DiagnosticReportStatus registered = DiagnosticReportStatus._(
    'registered',
  );

  /// partial
  static final DiagnosticReportStatus partial = DiagnosticReportStatus._(
    'partial',
  );

  /// preliminary
  static final DiagnosticReportStatus preliminary = DiagnosticReportStatus._(
    'preliminary',
  );

  /// final_
  static final DiagnosticReportStatus final_ = DiagnosticReportStatus._(
    'final',
  );

  /// amended
  static final DiagnosticReportStatus amended = DiagnosticReportStatus._(
    'amended',
  );

  /// corrected
  static final DiagnosticReportStatus corrected = DiagnosticReportStatus._(
    'corrected',
  );

  /// appended
  static final DiagnosticReportStatus appended = DiagnosticReportStatus._(
    'appended',
  );

  /// cancelled
  static final DiagnosticReportStatus cancelled = DiagnosticReportStatus._(
    'cancelled',
  );

  /// entered_in_error
  static final DiagnosticReportStatus entered_in_error =
      DiagnosticReportStatus._(
    'entered-in-error',
  );

  /// unknown
  static final DiagnosticReportStatus unknown = DiagnosticReportStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final DiagnosticReportStatus elementOnly =
      DiagnosticReportStatus._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DiagnosticReportStatus withElement(Element? newElement) {
    return DiagnosticReportStatus._(
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
  DiagnosticReportStatus copyWith({
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
    return DiagnosticReportStatus._(
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
