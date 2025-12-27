part of '../primitive_types.dart';

/// Actual enum for MeasureReportType
enum MeasureReportTypeBuilderEnum {
  /// individual
  individual,

  /// subject-list
  subjectList,

  /// summary
  summary,

  /// data-collection
  dataCollection,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MeasureReportTypeBuilderEnum.individual:
        return 'individual';
      case MeasureReportTypeBuilderEnum.subjectList:
        return 'subject-list';
      case MeasureReportTypeBuilderEnum.summary:
        return 'summary';
      case MeasureReportTypeBuilderEnum.dataCollection:
        return 'data-collection';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MeasureReportTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MeasureReportTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MeasureReportTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'individual':
        return MeasureReportTypeBuilderEnum.individual;
      case 'subject-list':
        return MeasureReportTypeBuilderEnum.subjectList;
      case 'summary':
        return MeasureReportTypeBuilderEnum.summary;
      case 'data-collection':
        return MeasureReportTypeBuilderEnum.dataCollection;
    }
    return null;
  }
}

/// The type of the measure report.
class MeasureReportTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MeasureReportTypeBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = MeasureReportTypeBuilderEnum.fromString(
      valueString,
    );
    return MeasureReportTypeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [MeasureReportTypeBuilder]
  /// with element only
  factory MeasureReportTypeBuilder.empty() =>
      MeasureReportTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MeasureReportTypeBuilder] from JSON.
  factory MeasureReportTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportTypeBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for MeasureReportTypeBuilder
  final MeasureReportTypeBuilderEnum? valueEnum;

  /// individual
  static MeasureReportTypeBuilder individual = MeasureReportTypeBuilder._(
    valueString: 'individual',
    valueEnum: MeasureReportTypeBuilderEnum.individual,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Individual',
    ),
  );

  /// subject_list
  static MeasureReportTypeBuilder subjectList = MeasureReportTypeBuilder._(
    valueString: 'subject-list',
    valueEnum: MeasureReportTypeBuilderEnum.subjectList,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Subject List',
    ),
  );

  /// summary
  static MeasureReportTypeBuilder summary = MeasureReportTypeBuilder._(
    valueString: 'summary',
    valueEnum: MeasureReportTypeBuilderEnum.summary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Summary',
    ),
  );

  /// data_collection
  static MeasureReportTypeBuilder dataCollection = MeasureReportTypeBuilder._(
    valueString: 'data-collection',
    valueEnum: MeasureReportTypeBuilderEnum.dataCollection,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Data Collection',
    ),
  );

  /// For instances where an Element is present but not value
  static MeasureReportTypeBuilder elementOnly = MeasureReportTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MeasureReportTypeBuilder> values = [
    individual,
    subjectList,
    summary,
    dataCollection,
  ];

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
}
