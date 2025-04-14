// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for DaysOfWeek
enum DaysOfWeekBuilderEnum {
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
      case DaysOfWeekBuilderEnum.mon:
        return 'mon';
      case DaysOfWeekBuilderEnum.tue:
        return 'tue';
      case DaysOfWeekBuilderEnum.wed:
        return 'wed';
      case DaysOfWeekBuilderEnum.thu:
        return 'thu';
      case DaysOfWeekBuilderEnum.fri:
        return 'fri';
      case DaysOfWeekBuilderEnum.sat:
        return 'sat';
      case DaysOfWeekBuilderEnum.sun:
        return 'sun';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DaysOfWeekBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return DaysOfWeekBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DaysOfWeekBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'mon':
        return DaysOfWeekBuilderEnum.mon;
      case 'tue':
        return DaysOfWeekBuilderEnum.tue;
      case 'wed':
        return DaysOfWeekBuilderEnum.wed;
      case 'thu':
        return DaysOfWeekBuilderEnum.thu;
      case 'fri':
        return DaysOfWeekBuilderEnum.fri;
      case 'sat':
        return DaysOfWeekBuilderEnum.sat;
      case 'sun':
        return DaysOfWeekBuilderEnum.sun;
    }
    return null;
  }
}

/// The days of the week.
class DaysOfWeekBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DaysOfWeekBuilder._({
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
  factory DaysOfWeekBuilder(
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
    final valueEnum = DaysOfWeekBuilderEnum.fromString(
      valueString,
    );
    return DaysOfWeekBuilder._(
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

  /// Create empty [DaysOfWeekBuilder]
  /// with element only
  factory DaysOfWeekBuilder.empty() => DaysOfWeekBuilder._(valueString: null);

  /// Factory constructor to create
  /// [DaysOfWeekBuilder] from JSON.
  factory DaysOfWeekBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DaysOfWeekBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DaysOfWeekBuilder cannot be constructed from JSON.',
      );
    }
    return DaysOfWeekBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for DaysOfWeekBuilder
  final DaysOfWeekBuilderEnum? valueEnum;

  /// mon
  static DaysOfWeekBuilder mon = DaysOfWeekBuilder._(
    valueString: 'mon',
    valueEnum: DaysOfWeekBuilderEnum.mon,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Monday',
    ),
  );

  /// tue
  static DaysOfWeekBuilder tue = DaysOfWeekBuilder._(
    valueString: 'tue',
    valueEnum: DaysOfWeekBuilderEnum.tue,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Tuesday',
    ),
  );

  /// wed
  static DaysOfWeekBuilder wed = DaysOfWeekBuilder._(
    valueString: 'wed',
    valueEnum: DaysOfWeekBuilderEnum.wed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Wednesday',
    ),
  );

  /// thu
  static DaysOfWeekBuilder thu = DaysOfWeekBuilder._(
    valueString: 'thu',
    valueEnum: DaysOfWeekBuilderEnum.thu,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Thursday',
    ),
  );

  /// fri
  static DaysOfWeekBuilder fri = DaysOfWeekBuilder._(
    valueString: 'fri',
    valueEnum: DaysOfWeekBuilderEnum.fri,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Friday',
    ),
  );

  /// sat
  static DaysOfWeekBuilder sat = DaysOfWeekBuilder._(
    valueString: 'sat',
    valueEnum: DaysOfWeekBuilderEnum.sat,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Saturday',
    ),
  );

  /// sun
  static DaysOfWeekBuilder sun = DaysOfWeekBuilder._(
    valueString: 'sun',
    valueEnum: DaysOfWeekBuilderEnum.sun,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/days-of-week',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Sunday',
    ),
  );

  /// For instances where an Element is present but not value
  static DaysOfWeekBuilder elementOnly = DaysOfWeekBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<DaysOfWeekBuilder> values = [
    mon,
    tue,
    wed,
    thu,
    fri,
    sat,
    sun,
  ];

  /// Returns the enum value with an element attached
  DaysOfWeekBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return DaysOfWeekBuilder._(
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
