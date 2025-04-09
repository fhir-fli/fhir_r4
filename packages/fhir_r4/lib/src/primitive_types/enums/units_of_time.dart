// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for UnitsOfTime
enum UnitsOfTimeEnum {
  /// s
  s,

  /// min
  min,

  /// h
  h,

  /// d
  d,

  /// wk
  wk,

  /// mo
  mo,

  /// a
  a,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case UnitsOfTimeEnum.s:
        return 's';
      case UnitsOfTimeEnum.min:
        return 'min';
      case UnitsOfTimeEnum.h:
        return 'h';
      case UnitsOfTimeEnum.d:
        return 'd';
      case UnitsOfTimeEnum.wk:
        return 'wk';
      case UnitsOfTimeEnum.mo:
        return 'mo';
      case UnitsOfTimeEnum.a:
        return 'a';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static UnitsOfTimeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return UnitsOfTimeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static UnitsOfTimeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 's':
        return UnitsOfTimeEnum.s;
      case 'min':
        return UnitsOfTimeEnum.min;
      case 'h':
        return UnitsOfTimeEnum.h;
      case 'd':
        return UnitsOfTimeEnum.d;
      case 'wk':
        return UnitsOfTimeEnum.wk;
      case 'mo':
        return UnitsOfTimeEnum.mo;
      case 'a':
        return UnitsOfTimeEnum.a;
    }
    return null;
  }
}

/// A unit of time (units from UCUM).
class UnitsOfTime extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const UnitsOfTime._({
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
  factory UnitsOfTime(
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
    final valueEnum = UnitsOfTimeEnum.fromString(valueString);
    return UnitsOfTime._(
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

  /// Factory constructor to create [UnitsOfTime]
  /// from JSON.
  factory UnitsOfTime.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = UnitsOfTimeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitsOfTime._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'UnitsOfTime cannot be constructed from JSON.',
      );
    }
    return UnitsOfTime._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for UnitsOfTime
  final UnitsOfTimeEnum? valueEnum;

  /// s
  static const UnitsOfTime s = UnitsOfTime._(
    valueString: 's',
    valueEnum: UnitsOfTimeEnum.s,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'second',
    ),
  );

  /// min
  static const UnitsOfTime min = UnitsOfTime._(
    valueString: 'min',
    valueEnum: UnitsOfTimeEnum.min,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'minute',
    ),
  );

  /// h
  static const UnitsOfTime h = UnitsOfTime._(
    valueString: 'h',
    valueEnum: UnitsOfTimeEnum.h,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'hour',
    ),
  );

  /// d
  static const UnitsOfTime d = UnitsOfTime._(
    valueString: 'd',
    valueEnum: UnitsOfTimeEnum.d,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'day',
    ),
  );

  /// wk
  static const UnitsOfTime wk = UnitsOfTime._(
    valueString: 'wk',
    valueEnum: UnitsOfTimeEnum.wk,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'week',
    ),
  );

  /// mo
  static const UnitsOfTime mo = UnitsOfTime._(
    valueString: 'mo',
    valueEnum: UnitsOfTimeEnum.mo,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'month',
    ),
  );

  /// a
  static const UnitsOfTime a = UnitsOfTime._(
    valueString: 'a',
    valueEnum: UnitsOfTimeEnum.a,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'year',
    ),
  );

  /// List of all enum-like values
  static final List<UnitsOfTime> values = [
    s,
    min,
    h,
    d,
    wk,
    mo,
    a,
  ];

  /// Returns the enum value with an element attached
  UnitsOfTime withElement(Element? newElement) {
    return UnitsOfTime._(
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
  UnitsOfTime clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  UnitsOfTimeCopyWithImpl<UnitsOfTime> get copyWith =>
      UnitsOfTimeCopyWithImpl<UnitsOfTime>(
        this,
        (v) => v as UnitsOfTime,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class UnitsOfTimeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  UnitsOfTimeCopyWithImpl(super._value, super._then);

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
      UnitsOfTime(
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
