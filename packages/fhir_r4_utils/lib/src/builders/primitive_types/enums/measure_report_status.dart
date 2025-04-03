// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of the measure report.
class MeasureReportStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MeasureReportStatusBuilder._({
    required super.valueString,
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
  factory MeasureReportStatusBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return MeasureReportStatusBuilder._(
      valueString: valueString,
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

  /// Create empty [MeasureReportStatusBuilder] with element only
  factory MeasureReportStatusBuilder.empty() =>
      MeasureReportStatusBuilder._(valueString: '');

  /// Factory constructor to create [MeasureReportStatusBuilder]
  /// from JSON.
  factory MeasureReportStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasureReportStatusBuilder cannot be constructed from JSON.',
      );
    }
    return MeasureReportStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// complete
  static MeasureReportStatusBuilder complete = MeasureReportStatusBuilder._(
    valueString: 'complete',
    system:
        'http://hl7.org/fhir/ValueSet/measure-report-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Complete'.toFhirStringBuilder,
  );

  /// pending
  static MeasureReportStatusBuilder pending = MeasureReportStatusBuilder._(
    valueString: 'pending',
    system:
        'http://hl7.org/fhir/ValueSet/measure-report-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Pending'.toFhirStringBuilder,
  );

  /// error
  static MeasureReportStatusBuilder error = MeasureReportStatusBuilder._(
    valueString: 'error',
    system:
        'http://hl7.org/fhir/ValueSet/measure-report-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static MeasureReportStatusBuilder elementOnly =
      MeasureReportStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<MeasureReportStatusBuilder> values = [
    complete,
    pending,
    error,
  ];

  /// Clones the current instance
  @override
  MeasureReportStatusBuilder clone() => MeasureReportStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  MeasureReportStatusBuilder withElement(ElementBuilder? newElement) {
    return MeasureReportStatusBuilder._(
        valueString: valueString, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  MeasureReportStatusBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for MeasureReportStatus: $newValue');
    }
    return MeasureReportStatusBuilder._(
      valueString: newValue ?? valueString,
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
