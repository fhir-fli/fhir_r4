// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The current status of the test report.
class TestReportStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  TestReportStatus._({
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
  factory TestReportStatus(
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
    return TestReportStatus._(
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

  /// Create empty [TestReportStatus] with element only
  factory TestReportStatus.empty() => TestReportStatus._(validatedValue: '');

  /// Factory constructor to create [TestReportStatus] from JSON.
  factory TestReportStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TestReportStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('TestReportStatus cannot be constructed from JSON.');
    }
    return TestReportStatus._(validatedValue: value, element: element);
  }

  /// completed
  static final TestReportStatus completed = TestReportStatus._(
    validatedValue: 'completed',
    system: 'http://hl7.org/fhir/ValueSet/report-status-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Completed'.toFhirString,
  );

  /// in_progress
  static final TestReportStatus in_progress = TestReportStatus._(
    validatedValue: 'in-progress',
    system: 'http://hl7.org/fhir/ValueSet/report-status-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'In Progress'.toFhirString,
  );

  /// waiting
  static final TestReportStatus waiting = TestReportStatus._(
    validatedValue: 'waiting',
    system: 'http://hl7.org/fhir/ValueSet/report-status-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Waiting'.toFhirString,
  );

  /// stopped
  static final TestReportStatus stopped = TestReportStatus._(
    validatedValue: 'stopped',
    system: 'http://hl7.org/fhir/ValueSet/report-status-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Stopped'.toFhirString,
  );

  /// entered_in_error
  static final TestReportStatus entered_in_error = TestReportStatus._(
    validatedValue: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/report-status-codes'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered In Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final TestReportStatus elementOnly =
      TestReportStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<TestReportStatus> values = [
    completed,
    in_progress,
    waiting,
    stopped,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  TestReportStatus clone() => TestReportStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TestReportStatus withElement(Element? newElement) {
    return TestReportStatus._(validatedValue: value, element: newElement);
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
  TestReportStatus copyWith({
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
    return TestReportStatus._(
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
