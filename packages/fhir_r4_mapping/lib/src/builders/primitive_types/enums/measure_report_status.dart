part of '../primitive_types.dart';

/// Actual enum for MeasureReportStatus
enum MeasureReportStatusBuilderEnum {
  /// complete
  complete,

  /// pending
  pending,

  /// error
  error,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MeasureReportStatusBuilderEnum.complete:
        return 'complete';
      case MeasureReportStatusBuilderEnum.pending:
        return 'pending';
      case MeasureReportStatusBuilderEnum.error:
        return 'error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MeasureReportStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return MeasureReportStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MeasureReportStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'complete':
        return MeasureReportStatusBuilderEnum.complete;
      case 'pending':
        return MeasureReportStatusBuilderEnum.pending;
      case 'error':
        return MeasureReportStatusBuilderEnum.error;
    }
    return null;
  }
}

/// The status of the measure report.
class MeasureReportStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  MeasureReportStatusBuilder._({
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
    final valueEnum = MeasureReportStatusBuilderEnum.fromString(
      valueString,
    );
    return MeasureReportStatusBuilder._(
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

  /// Create empty [MeasureReportStatusBuilder]
  /// with element only
  factory MeasureReportStatusBuilder.empty() =>
      MeasureReportStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [MeasureReportStatusBuilder] from JSON.
  factory MeasureReportStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportStatusBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for MeasureReportStatusBuilder
  final MeasureReportStatusBuilderEnum? valueEnum;

  /// complete
  static MeasureReportStatusBuilder complete = MeasureReportStatusBuilder._(
    valueString: 'complete',
    valueEnum: MeasureReportStatusBuilderEnum.complete,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Complete',
    ),
  );

  /// pending
  static MeasureReportStatusBuilder pending = MeasureReportStatusBuilder._(
    valueString: 'pending',
    valueEnum: MeasureReportStatusBuilderEnum.pending,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Pending',
    ),
  );

  /// error
  static MeasureReportStatusBuilder error = MeasureReportStatusBuilder._(
    valueString: 'error',
    valueEnum: MeasureReportStatusBuilderEnum.error,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Error',
    ),
  );

  /// For instances where an Element is present but not value
  static MeasureReportStatusBuilder elementOnly = MeasureReportStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<MeasureReportStatusBuilder> values = [
    complete,
    pending,
    error,
  ];

  /// Returns the enum value with an element attached
  MeasureReportStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return MeasureReportStatusBuilder._(
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
