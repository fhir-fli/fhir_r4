// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of the measure report.
class MeasureReportType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  MeasureReportType._({
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
  factory MeasureReportType(
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
    return MeasureReportType._(
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

  /// Create empty [MeasureReportType] with element only
  factory MeasureReportType.empty() => MeasureReportType._(validatedValue: '');

  /// Factory constructor to create [MeasureReportType] from JSON.
  factory MeasureReportType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasureReportType cannot be constructed from JSON.',
      );
    }
    return MeasureReportType._(
      validatedValue: value,
      element: element,
    );
  }

  /// individual
  static final MeasureReportType individual = MeasureReportType._(
    validatedValue: 'individual',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Individual'.toFhirString,
  );

  /// subject_list
  static final MeasureReportType subject_list = MeasureReportType._(
    validatedValue: 'subject-list',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Subject List'.toFhirString,
  );

  /// summary
  static final MeasureReportType summary = MeasureReportType._(
    validatedValue: 'summary',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Summary'.toFhirString,
  );

  /// data_collection
  static final MeasureReportType data_collection = MeasureReportType._(
    validatedValue: 'data-collection',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Data Collection'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final MeasureReportType elementOnly =
      MeasureReportType._(validatedValue: '');

  /// List of all enum-like values
  static final List<MeasureReportType> values = [
    individual,
    subject_list,
    summary,
    data_collection,
  ];

  /// Clones the current instance
  @override
  MeasureReportType clone() => MeasureReportType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MeasureReportType withElement(Element? newElement) {
    return MeasureReportType._(validatedValue: value, element: newElement);
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
  MeasureReportType copyWith({
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
    return MeasureReportType._(
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
