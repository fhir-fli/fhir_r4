// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of the diagnostic report.
class DiagnosticReportStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DiagnosticReportStatus._({
    required super.validatedValue,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory DiagnosticReportStatus(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return DiagnosticReportStatus._(
      validatedValue: validated,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [DiagnosticReportStatus] with element only
  factory DiagnosticReportStatus.empty() =>
      DiagnosticReportStatus._(validatedValue: '');

  /// Factory constructor to create [DiagnosticReportStatus] from JSON.
  factory DiagnosticReportStatus.fromJson(Map<String, dynamic> json) {
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
      validatedValue: value,
      element: element,
    );
  }

  /// registered
  static final DiagnosticReportStatus registered = DiagnosticReportStatus._(
    validatedValue: 'registered',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Registered'.toFhirString,
  );

  /// partial
  static final DiagnosticReportStatus partial = DiagnosticReportStatus._(
    validatedValue: 'partial',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Partial'.toFhirString,
  );

  /// preliminary
  static final DiagnosticReportStatus preliminary = DiagnosticReportStatus._(
    validatedValue: 'preliminary',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Preliminary'.toFhirString,
  );

  /// final_
  static final DiagnosticReportStatus final_ = DiagnosticReportStatus._(
    validatedValue: 'final',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Final'.toFhirString,
  );

  /// amended
  static final DiagnosticReportStatus amended = DiagnosticReportStatus._(
    validatedValue: 'amended',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Amended'.toFhirString,
  );

  /// corrected
  static final DiagnosticReportStatus corrected = DiagnosticReportStatus._(
    validatedValue: 'corrected',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Corrected'.toFhirString,
  );

  /// appended
  static final DiagnosticReportStatus appended = DiagnosticReportStatus._(
    validatedValue: 'appended',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Appended'.toFhirString,
  );

  /// cancelled
  static final DiagnosticReportStatus cancelled = DiagnosticReportStatus._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// entered_in_error
  static final DiagnosticReportStatus entered_in_error =
      DiagnosticReportStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// unknown
  static final DiagnosticReportStatus unknown = DiagnosticReportStatus._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unknown'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DiagnosticReportStatus elementOnly =
      DiagnosticReportStatus._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DiagnosticReportStatus withElement(Element? newElement) {
    return DiagnosticReportStatus._(
      validatedValue: value,
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
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
