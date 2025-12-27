part of '../primitive_types.dart';

/// Actual enum for MeasureReportType
enum MeasureReportTypeEnum {
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
      case MeasureReportTypeEnum.individual:
        return 'individual';
      case MeasureReportTypeEnum.subjectList:
        return 'subject-list';
      case MeasureReportTypeEnum.summary:
        return 'summary';
      case MeasureReportTypeEnum.dataCollection:
        return 'data-collection';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MeasureReportTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MeasureReportTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MeasureReportTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'individual':
        return MeasureReportTypeEnum.individual;
      case 'subject-list':
        return MeasureReportTypeEnum.subjectList;
      case 'summary':
        return MeasureReportTypeEnum.summary;
      case 'data-collection':
        return MeasureReportTypeEnum.dataCollection;
    }
    return null;
  }
}

/// The type of the measure report.
class MeasureReportType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MeasureReportType._({
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
  factory MeasureReportType(
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
    final valueEnum = MeasureReportTypeEnum.fromString(valueString);
    return MeasureReportType._(
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

  /// Factory constructor to create [MeasureReportType]
  /// from JSON.
  factory MeasureReportType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MeasureReportTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasureReportType cannot be constructed from JSON.',
      );
    }
    return MeasureReportType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MeasureReportType
  final MeasureReportTypeEnum? valueEnum;

  /// individual
  static const MeasureReportType individual = MeasureReportType._(
    valueString: 'individual',
    valueEnum: MeasureReportTypeEnum.individual,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Individual',
    ),
  );

  /// subject_list
  static const MeasureReportType subjectList = MeasureReportType._(
    valueString: 'subject-list',
    valueEnum: MeasureReportTypeEnum.subjectList,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Subject List',
    ),
  );

  /// summary
  static const MeasureReportType summary = MeasureReportType._(
    valueString: 'summary',
    valueEnum: MeasureReportTypeEnum.summary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Summary',
    ),
  );

  /// data_collection
  static const MeasureReportType dataCollection = MeasureReportType._(
    valueString: 'data-collection',
    valueEnum: MeasureReportTypeEnum.dataCollection,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Data Collection',
    ),
  );

  /// List of all enum-like values
  static final List<MeasureReportType> values = [
    individual,
    subjectList,
    summary,
    dataCollection,
  ];

  /// Returns the enum value with an element attached
  MeasureReportType withElement(Element? newElement) {
    return MeasureReportType._(
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
  MeasureReportType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MeasureReportTypeCopyWithImpl<MeasureReportType> get copyWith =>
      MeasureReportTypeCopyWithImpl<MeasureReportType>(
        this,
        (v) => v as MeasureReportType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MeasureReportTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MeasureReportTypeCopyWithImpl(super._value, super._then);

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
      MeasureReportType(
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
