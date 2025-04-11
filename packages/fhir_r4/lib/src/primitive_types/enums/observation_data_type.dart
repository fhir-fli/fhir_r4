// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ObservationDataType
enum ObservationDataTypeEnum {
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
      case ObservationDataTypeEnum.quantity:
        return 'Quantity';
      case ObservationDataTypeEnum.codeableConcept:
        return 'CodeableConcept';
      case ObservationDataTypeEnum.string:
        return 'string';
      case ObservationDataTypeEnum.boolean:
        return 'boolean';
      case ObservationDataTypeEnum.integer:
        return 'integer';
      case ObservationDataTypeEnum.range:
        return 'Range';
      case ObservationDataTypeEnum.ratio:
        return 'Ratio';
      case ObservationDataTypeEnum.sampledData:
        return 'SampledData';
      case ObservationDataTypeEnum.time:
        return 'time';
      case ObservationDataTypeEnum.dateTime:
        return 'dateTime';
      case ObservationDataTypeEnum.period:
        return 'Period';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ObservationDataTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ObservationDataTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ObservationDataTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'Quantity':
        return ObservationDataTypeEnum.quantity;
      case 'CodeableConcept':
        return ObservationDataTypeEnum.codeableConcept;
      case 'string':
        return ObservationDataTypeEnum.string;
      case 'boolean':
        return ObservationDataTypeEnum.boolean;
      case 'integer':
        return ObservationDataTypeEnum.integer;
      case 'Range':
        return ObservationDataTypeEnum.range;
      case 'Ratio':
        return ObservationDataTypeEnum.ratio;
      case 'SampledData':
        return ObservationDataTypeEnum.sampledData;
      case 'time':
        return ObservationDataTypeEnum.time;
      case 'dateTime':
        return ObservationDataTypeEnum.dateTime;
      case 'Period':
        return ObservationDataTypeEnum.period;
    }
    return null;
  }
}

/// Permitted data type for observation value.
class ObservationDataType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ObservationDataType._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ObservationDataType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = ObservationDataTypeEnum.fromString(valueString);
    return ObservationDataType._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [ObservationDataType]
  /// from JSON.
  factory ObservationDataType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ObservationDataTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationDataType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ObservationDataType cannot be constructed from JSON.',
      );
    }
    return ObservationDataType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ObservationDataType
  final ObservationDataTypeEnum? valueEnum;

  /// Quantity
  static const ObservationDataType quantity = ObservationDataType._(
    valueString: 'Quantity',
    valueEnum: ObservationDataTypeEnum.quantity,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Quantity',
    ),
  );

  /// CodeableConcept
  static const ObservationDataType codeableConcept = ObservationDataType._(
    valueString: 'CodeableConcept',
    valueEnum: ObservationDataTypeEnum.codeableConcept,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'CodeableConcept',
    ),
  );

  /// string
  static const ObservationDataType string = ObservationDataType._(
    valueString: 'string',
    valueEnum: ObservationDataTypeEnum.string,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'string',
    ),
  );

  /// boolean
  static const ObservationDataType boolean = ObservationDataType._(
    valueString: 'boolean',
    valueEnum: ObservationDataTypeEnum.boolean,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'boolean',
    ),
  );

  /// integer
  static const ObservationDataType integer = ObservationDataType._(
    valueString: 'integer',
    valueEnum: ObservationDataTypeEnum.integer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'integer',
    ),
  );

  /// Range
  static const ObservationDataType range = ObservationDataType._(
    valueString: 'Range',
    valueEnum: ObservationDataTypeEnum.range,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Range',
    ),
  );

  /// Ratio
  static const ObservationDataType ratio = ObservationDataType._(
    valueString: 'Ratio',
    valueEnum: ObservationDataTypeEnum.ratio,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Ratio',
    ),
  );

  /// SampledData
  static const ObservationDataType sampledData = ObservationDataType._(
    valueString: 'SampledData',
    valueEnum: ObservationDataTypeEnum.sampledData,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SampledData',
    ),
  );

  /// time
  static const ObservationDataType time = ObservationDataType._(
    valueString: 'time',
    valueEnum: ObservationDataTypeEnum.time,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'time',
    ),
  );

  /// dateTime
  static const ObservationDataType dateTime = ObservationDataType._(
    valueString: 'dateTime',
    valueEnum: ObservationDataTypeEnum.dateTime,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'dateTime',
    ),
  );

  /// Period
  static const ObservationDataType period = ObservationDataType._(
    valueString: 'Period',
    valueEnum: ObservationDataTypeEnum.period,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/permitted-data-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Period',
    ),
  );

  /// List of all enum-like values
  static final List<ObservationDataType> values = [
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
  ObservationDataType withElement(Element? newElement) {
    return ObservationDataType._(
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

  @override
  ObservationDataType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ObservationDataTypeCopyWithImpl<ObservationDataType> get copyWith =>
      ObservationDataTypeCopyWithImpl<ObservationDataType>(
        this,
        (v) => v as ObservationDataType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ObservationDataTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ObservationDataTypeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      ObservationDataType(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
