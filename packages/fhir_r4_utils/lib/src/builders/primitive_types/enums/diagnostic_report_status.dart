// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of the diagnostic report.
class DiagnosticReportStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DiagnosticReportStatusBuilder._({
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
  factory DiagnosticReportStatusBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return DiagnosticReportStatusBuilder._(
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

  /// Create empty [DiagnosticReportStatusBuilder] with element only
  factory DiagnosticReportStatusBuilder.empty() =>
      DiagnosticReportStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [DiagnosticReportStatusBuilder] from JSON.
  factory DiagnosticReportStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosticReportStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DiagnosticReportStatusBuilder cannot be constructed from JSON.',
      );
    }
    return DiagnosticReportStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// registered
  static DiagnosticReportStatusBuilder registered =
      DiagnosticReportStatusBuilder._(
    validatedValue: 'registered',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Registered'.toFhirStringBuilder,
  );

  /// partial
  static DiagnosticReportStatusBuilder partial =
      DiagnosticReportStatusBuilder._(
    validatedValue: 'partial',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Partial'.toFhirStringBuilder,
  );

  /// preliminary
  static DiagnosticReportStatusBuilder preliminary =
      DiagnosticReportStatusBuilder._(
    validatedValue: 'preliminary',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Preliminary'.toFhirStringBuilder,
  );

  /// final_
  static DiagnosticReportStatusBuilder final_ = DiagnosticReportStatusBuilder._(
    validatedValue: 'final',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Final'.toFhirStringBuilder,
  );

  /// amended
  static DiagnosticReportStatusBuilder amended =
      DiagnosticReportStatusBuilder._(
    validatedValue: 'amended',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Amended'.toFhirStringBuilder,
  );

  /// corrected
  static DiagnosticReportStatusBuilder corrected =
      DiagnosticReportStatusBuilder._(
    validatedValue: 'corrected',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Corrected'.toFhirStringBuilder,
  );

  /// appended
  static DiagnosticReportStatusBuilder appended =
      DiagnosticReportStatusBuilder._(
    validatedValue: 'appended',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Appended'.toFhirStringBuilder,
  );

  /// cancelled
  static DiagnosticReportStatusBuilder cancelled =
      DiagnosticReportStatusBuilder._(
    validatedValue: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// entered_in_error
  static DiagnosticReportStatusBuilder entered_in_error =
      DiagnosticReportStatusBuilder._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// unknown
  static DiagnosticReportStatusBuilder unknown =
      DiagnosticReportStatusBuilder._(
    validatedValue: 'unknown',
    system: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Unknown'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DiagnosticReportStatusBuilder elementOnly =
      DiagnosticReportStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<DiagnosticReportStatusBuilder> values = [
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
  DiagnosticReportStatusBuilder clone() => DiagnosticReportStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DiagnosticReportStatusBuilder withElement(ElementBuilder? newElement) {
    return DiagnosticReportStatusBuilder._(
        validatedValue: value, element: newElement);
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
  DiagnosticReportStatusBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return DiagnosticReportStatusBuilder._(
      validatedValue: newValue ?? value,
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
