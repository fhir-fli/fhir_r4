// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of the measure report.
class MeasureReportStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  MeasureReportStatus._({
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
  factory MeasureReportStatus(
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
    return MeasureReportStatus._(
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

  /// Create empty [MeasureReportStatus] with element only
  factory MeasureReportStatus.empty() =>
      MeasureReportStatus._(validatedValue: '');

  /// Factory constructor to create [MeasureReportStatus] from JSON.
  factory MeasureReportStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'MeasureReportStatus cannot be constructed from JSON.',);
    }
    return MeasureReportStatus._(validatedValue: value, element: element);
  }

  /// complete
  static final MeasureReportStatus complete = MeasureReportStatus._(
    validatedValue: 'complete',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Complete'.toFhirString,
  );

  /// pending
  static final MeasureReportStatus pending = MeasureReportStatus._(
    validatedValue: 'pending',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pending'.toFhirString,
  );

  /// error
  static final MeasureReportStatus error = MeasureReportStatus._(
    validatedValue: 'error',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final MeasureReportStatus elementOnly =
      MeasureReportStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<MeasureReportStatus> values = [
    complete,
    pending,
    error,
  ];

  /// Clones the current instance
  @override
  MeasureReportStatus clone() => MeasureReportStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MeasureReportStatus withElement(Element? newElement) {
    return MeasureReportStatus._(validatedValue: value, element: newElement);
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
