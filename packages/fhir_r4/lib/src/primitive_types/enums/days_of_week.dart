part of '../primitive_types.dart';

/// Actual enum for DaysOfWeek
enum DaysOfWeekEnum {
  /// mon
  mon,

  /// tue
  tue,

  /// wed
  wed,

  /// thu
  thu,

  /// fri
  fri,

  /// sat
  sat,

  /// sun
  sun,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case DaysOfWeekEnum.mon:
        return 'mon';
      case DaysOfWeekEnum.tue:
        return 'tue';
      case DaysOfWeekEnum.wed:
        return 'wed';
      case DaysOfWeekEnum.thu:
        return 'thu';
      case DaysOfWeekEnum.fri:
        return 'fri';
      case DaysOfWeekEnum.sat:
        return 'sat';
      case DaysOfWeekEnum.sun:
        return 'sun';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DaysOfWeekEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DaysOfWeekEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DaysOfWeekEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'mon':
        return DaysOfWeekEnum.mon;
      case 'tue':
        return DaysOfWeekEnum.tue;
      case 'wed':
        return DaysOfWeekEnum.wed;
      case 'thu':
        return DaysOfWeekEnum.thu;
      case 'fri':
        return DaysOfWeekEnum.fri;
      case 'sat':
        return DaysOfWeekEnum.sat;
      case 'sun':
        return DaysOfWeekEnum.sun;
    }
    return null;
  }
}

/// The days of the week.
class DaysOfWeek extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DaysOfWeek._({
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
  factory DaysOfWeek(
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
    final valueEnum = DaysOfWeekEnum.fromString(valueString);
    return DaysOfWeek._(
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

  /// Factory constructor to create [DaysOfWeek]
  /// from JSON.
  factory DaysOfWeek.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DaysOfWeekEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DaysOfWeek._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DaysOfWeek cannot be constructed from JSON.',
      );
    }
    return DaysOfWeek._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DaysOfWeek
  final DaysOfWeekEnum? valueEnum;

  /// mon
  static const DaysOfWeek mon = DaysOfWeek._(
    valueString: 'mon',
    valueEnum: DaysOfWeekEnum.mon,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Monday',
    ),
  );

  /// tue
  static const DaysOfWeek tue = DaysOfWeek._(
    valueString: 'tue',
    valueEnum: DaysOfWeekEnum.tue,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Tuesday',
    ),
  );

  /// wed
  static const DaysOfWeek wed = DaysOfWeek._(
    valueString: 'wed',
    valueEnum: DaysOfWeekEnum.wed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Wednesday',
    ),
  );

  /// thu
  static const DaysOfWeek thu = DaysOfWeek._(
    valueString: 'thu',
    valueEnum: DaysOfWeekEnum.thu,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Thursday',
    ),
  );

  /// fri
  static const DaysOfWeek fri = DaysOfWeek._(
    valueString: 'fri',
    valueEnum: DaysOfWeekEnum.fri,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Friday',
    ),
  );

  /// sat
  static const DaysOfWeek sat = DaysOfWeek._(
    valueString: 'sat',
    valueEnum: DaysOfWeekEnum.sat,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Saturday',
    ),
  );

  /// sun
  static const DaysOfWeek sun = DaysOfWeek._(
    valueString: 'sun',
    valueEnum: DaysOfWeekEnum.sun,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Sunday',
    ),
  );

  /// List of all enum-like values
  static final List<DaysOfWeek> values = [
    mon,
    tue,
    wed,
    thu,
    fri,
    sat,
    sun,
  ];

  /// Returns the enum value with an element attached
  DaysOfWeek withElement(Element? newElement) {
    return DaysOfWeek._(
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
  DaysOfWeek clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DaysOfWeekCopyWithImpl<DaysOfWeek> get copyWith =>
      DaysOfWeekCopyWithImpl<DaysOfWeek>(
        this,
        (v) => v as DaysOfWeek,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DaysOfWeekCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DaysOfWeekCopyWithImpl(super._value, super._then);

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
      DaysOfWeek(
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
