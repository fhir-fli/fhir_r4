// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the measure report.
class MeasureReportStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MeasureReportStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MeasureReportStatus] from JSON.
  factory MeasureReportStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasureReportStatus cannot be constructed from JSON.',
      );
    }
    return MeasureReportStatus._(value, element: element);
  }

  /// complete
  static final MeasureReportStatus complete = MeasureReportStatus._(
    'complete',
  );

  /// pending
  static final MeasureReportStatus pending = MeasureReportStatus._(
    'pending',
  );

  /// error
  static final MeasureReportStatus error = MeasureReportStatus._(
    'error',
  );

  /// For instances where an Element is present but not value

  static final MeasureReportStatus elementOnly = MeasureReportStatus._('');

  /// List of all enum-like values
  static final List<MeasureReportStatus> values = [
    complete,
    pending,
    error,
  ];

  /// Clones the current instance
  @override
  MeasureReportStatus clone() => MeasureReportStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MeasureReportStatus withElement(Element? newElement) {
    return MeasureReportStatus._(
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
  MeasureReportStatus copyWith({
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
    return MeasureReportStatus._(
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
