// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ObservationDataType
enum ObservationDataTypeBuilderEnum {
  /// Quantity
  quantity,

  /// CodeableConcept
  codeableConcept,

  /// string
  string,

  /// boolean
  boolean,

  /// integer
  integer,

  /// Range
  range,

  /// Ratio
  ratio,

  /// SampledData
  sampledData,

  /// time
  time,

  /// dateTime
  dateTime,

  /// Period
  period,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ObservationDataTypeBuilderEnum.quantity:
        return 'Quantity';
      case ObservationDataTypeBuilderEnum.codeableConcept:
        return 'CodeableConcept';
      case ObservationDataTypeBuilderEnum.string:
        return 'string';
      case ObservationDataTypeBuilderEnum.boolean:
        return 'boolean';
      case ObservationDataTypeBuilderEnum.integer:
        return 'integer';
      case ObservationDataTypeBuilderEnum.range:
        return 'Range';
      case ObservationDataTypeBuilderEnum.ratio:
        return 'Ratio';
      case ObservationDataTypeBuilderEnum.sampledData:
        return 'SampledData';
      case ObservationDataTypeBuilderEnum.time:
        return 'time';
      case ObservationDataTypeBuilderEnum.dateTime:
        return 'dateTime';
      case ObservationDataTypeBuilderEnum.period:
        return 'Period';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ObservationDataTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ObservationDataTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ObservationDataTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Quantity':
        return ObservationDataTypeBuilderEnum.quantity;
      case 'CodeableConcept':
        return ObservationDataTypeBuilderEnum.codeableConcept;
      case 'string':
        return ObservationDataTypeBuilderEnum.string;
      case 'boolean':
        return ObservationDataTypeBuilderEnum.boolean;
      case 'integer':
        return ObservationDataTypeBuilderEnum.integer;
      case 'Range':
        return ObservationDataTypeBuilderEnum.range;
      case 'Ratio':
        return ObservationDataTypeBuilderEnum.ratio;
      case 'SampledData':
        return ObservationDataTypeBuilderEnum.sampledData;
      case 'time':
        return ObservationDataTypeBuilderEnum.time;
      case 'dateTime':
        return ObservationDataTypeBuilderEnum.dateTime;
      case 'Period':
        return ObservationDataTypeBuilderEnum.period;
    }
    return null;
  }
}

/// Permitted data type for observation value.
class ObservationDataTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ObservationDataTypeBuilder._({
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
  factory ObservationDataTypeBuilder(
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
    final valueEnum = ObservationDataTypeBuilderEnum.fromString(
      valueString,
    );
    return ObservationDataTypeBuilder._(
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

  /// Create empty [ObservationDataTypeBuilder]
  /// with element only
  factory ObservationDataTypeBuilder.empty() =>
      ObservationDataTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ObservationDataTypeBuilder] from JSON.
  factory ObservationDataTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationDataTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationDataTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ObservationDataTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ObservationDataTypeBuilder
  final ObservationDataTypeBuilderEnum? valueEnum;

  /// Quantity
  static ObservationDataTypeBuilder quantity = ObservationDataTypeBuilder._(
    valueString: 'Quantity',
    valueEnum: ObservationDataTypeBuilderEnum.quantity,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Quantity',
    ),
  );

  /// CodeableConcept
  static ObservationDataTypeBuilder codeableConcept =
      ObservationDataTypeBuilder._(
    valueString: 'CodeableConcept',
    valueEnum: ObservationDataTypeBuilderEnum.codeableConcept,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'CodeableConcept',
    ),
  );

  /// string
  static ObservationDataTypeBuilder string = ObservationDataTypeBuilder._(
    valueString: 'string',
    valueEnum: ObservationDataTypeBuilderEnum.string,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'string',
    ),
  );

  /// boolean
  static ObservationDataTypeBuilder boolean = ObservationDataTypeBuilder._(
    valueString: 'boolean',
    valueEnum: ObservationDataTypeBuilderEnum.boolean,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'boolean',
    ),
  );

  /// integer
  static ObservationDataTypeBuilder integer = ObservationDataTypeBuilder._(
    valueString: 'integer',
    valueEnum: ObservationDataTypeBuilderEnum.integer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'integer',
    ),
  );

  /// Range
  static ObservationDataTypeBuilder range = ObservationDataTypeBuilder._(
    valueString: 'Range',
    valueEnum: ObservationDataTypeBuilderEnum.range,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Range',
    ),
  );

  /// Ratio
  static ObservationDataTypeBuilder ratio = ObservationDataTypeBuilder._(
    valueString: 'Ratio',
    valueEnum: ObservationDataTypeBuilderEnum.ratio,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Ratio',
    ),
  );

  /// SampledData
  static ObservationDataTypeBuilder sampledData = ObservationDataTypeBuilder._(
    valueString: 'SampledData',
    valueEnum: ObservationDataTypeBuilderEnum.sampledData,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SampledData',
    ),
  );

  /// time
  static ObservationDataTypeBuilder time = ObservationDataTypeBuilder._(
    valueString: 'time',
    valueEnum: ObservationDataTypeBuilderEnum.time,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'time',
    ),
  );

  /// dateTime
  static ObservationDataTypeBuilder dateTime = ObservationDataTypeBuilder._(
    valueString: 'dateTime',
    valueEnum: ObservationDataTypeBuilderEnum.dateTime,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'dateTime',
    ),
  );

  /// Period
  static ObservationDataTypeBuilder period = ObservationDataTypeBuilder._(
    valueString: 'Period',
    valueEnum: ObservationDataTypeBuilderEnum.period,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Period',
    ),
  );

  /// For instances where an Element is present but not value
  static ObservationDataTypeBuilder elementOnly = ObservationDataTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ObservationDataTypeBuilder> values = [
    quantity,
    codeableConcept,
    string,
    boolean,
    integer,
    range,
    ratio,
    sampledData,
    time,
    dateTime,
    period,
  ];

  /// Returns the enum value with an element attached
  ObservationDataTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ObservationDataTypeBuilder._(
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
