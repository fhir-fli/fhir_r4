// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of the measure report.
class MeasureReportTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MeasureReportTypeBuilder._({
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
  factory MeasureReportTypeBuilder(
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
    return MeasureReportTypeBuilder._(
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

  /// Create empty [MeasureReportTypeBuilder] with element only
  factory MeasureReportTypeBuilder.empty() =>
      MeasureReportTypeBuilder._(valueString: '');

  /// Factory constructor to create [MeasureReportTypeBuilder]
  /// from JSON.
  factory MeasureReportTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasureReportTypeBuilder cannot be constructed from JSON.',
      );
    }
    return MeasureReportTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// individual
  static MeasureReportTypeBuilder individual = MeasureReportTypeBuilder._(
    valueString: 'individual',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Individual'.toFhirStringBuilder,
  );

  /// subject_list
  static MeasureReportTypeBuilder subject_list = MeasureReportTypeBuilder._(
    valueString: 'subject-list',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Subject List'.toFhirStringBuilder,
  );

  /// summary
  static MeasureReportTypeBuilder summary = MeasureReportTypeBuilder._(
    valueString: 'summary',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Summary'.toFhirStringBuilder,
  );

  /// data_collection
  static MeasureReportTypeBuilder data_collection = MeasureReportTypeBuilder._(
    valueString: 'data-collection',
    system: 'http://hl7.org/fhir/ValueSet/measure-report-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Data Collection'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static MeasureReportTypeBuilder elementOnly =
      MeasureReportTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<MeasureReportTypeBuilder> values = [
    individual,
    subject_list,
    summary,
    data_collection,
  ];

  /// Clones the current instance
  @override
  MeasureReportTypeBuilder clone() => MeasureReportTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  MeasureReportTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MeasureReportTypeBuilder._(
      valueString: valueString,
      element: newElement,
    );
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
  MeasureReportTypeBuilder copyWith({
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
      throw ArgumentError(
        'Invalid input for MeasureReportType: $newValue',
      );
    }
    return MeasureReportTypeBuilder._(
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
