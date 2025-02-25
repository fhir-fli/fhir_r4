// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the measure report.
class MeasureReportStatus extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  MeasureReportStatus._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [MeasureReportStatus] with element only
  factory MeasureReportStatus.empty() => MeasureReportStatus._('');

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
    return MeasureReportStatus._(
      value,
      element: element,
    );
  }

  /// complete
  static final MeasureReportStatus complete = MeasureReportStatus._(
    'complete',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Complete'.toFhirString,
  );

  /// pending
  static final MeasureReportStatus pending = MeasureReportStatus._(
    'pending',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pending'.toFhirString,
  );

  /// error
  static final MeasureReportStatus error = MeasureReportStatus._(
    'error',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Error'.toFhirString,
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
    return MeasureReportStatus._(
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
