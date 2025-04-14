// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GroupMeasure
enum GroupMeasureBuilderEnum {
  /// mean
  mean,

  /// median
  median,

  /// mean-of-mean
  meanOfMean,

  /// mean-of-median
  meanOfMedian,

  /// median-of-mean
  medianOfMean,

  /// median-of-median
  medianOfMedian,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case GroupMeasureBuilderEnum.mean:
        return 'mean';
      case GroupMeasureBuilderEnum.median:
        return 'median';
      case GroupMeasureBuilderEnum.meanOfMean:
        return 'mean-of-mean';
      case GroupMeasureBuilderEnum.meanOfMedian:
        return 'mean-of-median';
      case GroupMeasureBuilderEnum.medianOfMean:
        return 'median-of-mean';
      case GroupMeasureBuilderEnum.medianOfMedian:
        return 'median-of-median';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GroupMeasureBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return GroupMeasureBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GroupMeasureBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'mean':
        return GroupMeasureBuilderEnum.mean;
      case 'median':
        return GroupMeasureBuilderEnum.median;
      case 'mean-of-mean':
        return GroupMeasureBuilderEnum.meanOfMean;
      case 'mean-of-median':
        return GroupMeasureBuilderEnum.meanOfMedian;
      case 'median-of-mean':
        return GroupMeasureBuilderEnum.medianOfMean;
      case 'median-of-median':
        return GroupMeasureBuilderEnum.medianOfMedian;
    }
    return null;
  }
}

/// Possible group measure aggregates (E.g. Mean, Median).
class GroupMeasureBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GroupMeasureBuilder._({
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
  factory GroupMeasureBuilder(
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
    final valueEnum = GroupMeasureBuilderEnum.fromString(
      valueString,
    );
    return GroupMeasureBuilder._(
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

  /// Create empty [GroupMeasureBuilder]
  /// with element only
  factory GroupMeasureBuilder.empty() =>
      GroupMeasureBuilder._(valueString: null);

  /// Factory constructor to create
  /// [GroupMeasureBuilder] from JSON.
  factory GroupMeasureBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupMeasureBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupMeasureBuilder cannot be constructed from JSON.',
      );
    }
    return GroupMeasureBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for GroupMeasureBuilder
  final GroupMeasureBuilderEnum? valueEnum;

  /// mean
  static GroupMeasureBuilder mean = GroupMeasureBuilder._(
    valueString: 'mean',
    valueEnum: GroupMeasureBuilderEnum.mean,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-measure',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Mean',
    ),
  );

  /// median
  static GroupMeasureBuilder median = GroupMeasureBuilder._(
    valueString: 'median',
    valueEnum: GroupMeasureBuilderEnum.median,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-measure',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Median',
    ),
  );

  /// mean_of_mean
  static GroupMeasureBuilder meanOfMean = GroupMeasureBuilder._(
    valueString: 'mean-of-mean',
    valueEnum: GroupMeasureBuilderEnum.meanOfMean,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-measure',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Mean of Study Means',
    ),
  );

  /// mean_of_median
  static GroupMeasureBuilder meanOfMedian = GroupMeasureBuilder._(
    valueString: 'mean-of-median',
    valueEnum: GroupMeasureBuilderEnum.meanOfMedian,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-measure',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Mean of Study Medins',
    ),
  );

  /// median_of_mean
  static GroupMeasureBuilder medianOfMean = GroupMeasureBuilder._(
    valueString: 'median-of-mean',
    valueEnum: GroupMeasureBuilderEnum.medianOfMean,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-measure',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Median of Study Means',
    ),
  );

  /// median_of_median
  static GroupMeasureBuilder medianOfMedian = GroupMeasureBuilder._(
    valueString: 'median-of-median',
    valueEnum: GroupMeasureBuilderEnum.medianOfMedian,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-measure',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Median of Study Medians',
    ),
  );

  /// For instances where an Element is present but not value
  static GroupMeasureBuilder elementOnly = GroupMeasureBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<GroupMeasureBuilder> values = [
    mean,
    median,
    meanOfMean,
    meanOfMedian,
    medianOfMean,
    medianOfMedian,
  ];

  /// Returns the enum value with an element attached
  GroupMeasureBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return GroupMeasureBuilder._(
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
