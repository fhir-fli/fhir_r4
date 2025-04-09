// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for GroupMeasure
enum GroupMeasureEnum {
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
      case GroupMeasureEnum.mean:
        return 'mean';
      case GroupMeasureEnum.median:
        return 'median';
      case GroupMeasureEnum.meanOfMean:
        return 'mean-of-mean';
      case GroupMeasureEnum.meanOfMedian:
        return 'mean-of-median';
      case GroupMeasureEnum.medianOfMean:
        return 'median-of-mean';
      case GroupMeasureEnum.medianOfMedian:
        return 'median-of-median';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static GroupMeasureEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return GroupMeasureEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static GroupMeasureEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'mean':
        return GroupMeasureEnum.mean;
      case 'median':
        return GroupMeasureEnum.median;
      case 'mean-of-mean':
        return GroupMeasureEnum.meanOfMean;
      case 'mean-of-median':
        return GroupMeasureEnum.meanOfMedian;
      case 'median-of-mean':
        return GroupMeasureEnum.medianOfMean;
      case 'median-of-median':
        return GroupMeasureEnum.medianOfMedian;
    }
    return null;
  }
}

/// Possible group measure aggregates (E.g. Mean, Median).
class GroupMeasure extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const GroupMeasure._({
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
  factory GroupMeasure(
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
    final valueEnum = GroupMeasureEnum.fromString(valueString);
    return GroupMeasure._(
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

  /// Factory constructor to create [GroupMeasure]
  /// from JSON.
  factory GroupMeasure.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = GroupMeasureEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupMeasure._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupMeasure cannot be constructed from JSON.',
      );
    }
    return GroupMeasure._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for GroupMeasure
  final GroupMeasureEnum? valueEnum;

  /// mean
  static const GroupMeasure mean = GroupMeasure._(
    valueString: 'mean',
    valueEnum: GroupMeasureEnum.mean,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-measure',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Mean',
    ),
  );

  /// median
  static const GroupMeasure median = GroupMeasure._(
    valueString: 'median',
    valueEnum: GroupMeasureEnum.median,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-measure',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Median',
    ),
  );

  /// mean_of_mean
  static const GroupMeasure meanOfMean = GroupMeasure._(
    valueString: 'mean-of-mean',
    valueEnum: GroupMeasureEnum.meanOfMean,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-measure',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Mean of Study Means',
    ),
  );

  /// mean_of_median
  static const GroupMeasure meanOfMedian = GroupMeasure._(
    valueString: 'mean-of-median',
    valueEnum: GroupMeasureEnum.meanOfMedian,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-measure',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Mean of Study Medins',
    ),
  );

  /// median_of_mean
  static const GroupMeasure medianOfMean = GroupMeasure._(
    valueString: 'median-of-mean',
    valueEnum: GroupMeasureEnum.medianOfMean,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-measure',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Median of Study Means',
    ),
  );

  /// median_of_median
  static const GroupMeasure medianOfMedian = GroupMeasure._(
    valueString: 'median-of-median',
    valueEnum: GroupMeasureEnum.medianOfMedian,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/group-measure',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Median of Study Medians',
    ),
  );

  /// List of all enum-like values
  static final List<GroupMeasure> values = [
    mean,
    median,
    meanOfMean,
    meanOfMedian,
    medianOfMean,
    medianOfMedian,
  ];

  /// Returns the enum value with an element attached
  GroupMeasure withElement(Element? newElement) {
    return GroupMeasure._(
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
  GroupMeasure clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  GroupMeasureCopyWithImpl<GroupMeasure> get copyWith =>
      GroupMeasureCopyWithImpl<GroupMeasure>(
        this,
        (v) => v as GroupMeasure,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class GroupMeasureCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  GroupMeasureCopyWithImpl(super._value, super._then);

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
      GroupMeasure(
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
