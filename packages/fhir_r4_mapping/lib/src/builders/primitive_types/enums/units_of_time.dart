part of '../primitive_types.dart';

/// Actual enum for UnitsOfTime
enum UnitsOfTimeBuilderEnum {
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
      case UnitsOfTimeBuilderEnum.s:
        return 's';
      case UnitsOfTimeBuilderEnum.min:
        return 'min';
      case UnitsOfTimeBuilderEnum.h:
        return 'h';
      case UnitsOfTimeBuilderEnum.d:
        return 'd';
      case UnitsOfTimeBuilderEnum.wk:
        return 'wk';
      case UnitsOfTimeBuilderEnum.mo:
        return 'mo';
      case UnitsOfTimeBuilderEnum.a:
        return 'a';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static UnitsOfTimeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return UnitsOfTimeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static UnitsOfTimeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 's':
        return UnitsOfTimeBuilderEnum.s;
      case 'min':
        return UnitsOfTimeBuilderEnum.min;
      case 'h':
        return UnitsOfTimeBuilderEnum.h;
      case 'd':
        return UnitsOfTimeBuilderEnum.d;
      case 'wk':
        return UnitsOfTimeBuilderEnum.wk;
      case 'mo':
        return UnitsOfTimeBuilderEnum.mo;
      case 'a':
        return UnitsOfTimeBuilderEnum.a;
    }
    return null;
  }
}

/// A unit of time (units from UCUM).
class UnitsOfTimeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  UnitsOfTimeBuilder._({
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
  factory UnitsOfTimeBuilder(
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
    final valueEnum = UnitsOfTimeBuilderEnum.fromString(
      valueString,
    );
    return UnitsOfTimeBuilder._(
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

  /// Create empty [UnitsOfTimeBuilder]
  /// with element only
  factory UnitsOfTimeBuilder.empty() => UnitsOfTimeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [UnitsOfTimeBuilder] from JSON.
  factory UnitsOfTimeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitsOfTimeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'UnitsOfTimeBuilder cannot be constructed from JSON.',
      );
    }
    return UnitsOfTimeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for UnitsOfTimeBuilder
  final UnitsOfTimeBuilderEnum? valueEnum;

  /// s
  static UnitsOfTimeBuilder s = UnitsOfTimeBuilder._(
    valueString: 's',
    valueEnum: UnitsOfTimeBuilderEnum.s,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'second',
    ),
  );

  /// min
  static UnitsOfTimeBuilder min = UnitsOfTimeBuilder._(
    valueString: 'min',
    valueEnum: UnitsOfTimeBuilderEnum.min,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'minute',
    ),
  );

  /// h
  static UnitsOfTimeBuilder h = UnitsOfTimeBuilder._(
    valueString: 'h',
    valueEnum: UnitsOfTimeBuilderEnum.h,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'hour',
    ),
  );

  /// d
  static UnitsOfTimeBuilder d = UnitsOfTimeBuilder._(
    valueString: 'd',
    valueEnum: UnitsOfTimeBuilderEnum.d,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'day',
    ),
  );

  /// wk
  static UnitsOfTimeBuilder wk = UnitsOfTimeBuilder._(
    valueString: 'wk',
    valueEnum: UnitsOfTimeBuilderEnum.wk,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'week',
    ),
  );

  /// mo
  static UnitsOfTimeBuilder mo = UnitsOfTimeBuilder._(
    valueString: 'mo',
    valueEnum: UnitsOfTimeBuilderEnum.mo,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'month',
    ),
  );

  /// a
  static UnitsOfTimeBuilder a = UnitsOfTimeBuilder._(
    valueString: 'a',
    valueEnum: UnitsOfTimeBuilderEnum.a,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/units-of-time',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'year',
    ),
  );

  /// For instances where an Element is present but not value
  static UnitsOfTimeBuilder elementOnly = UnitsOfTimeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<UnitsOfTimeBuilder> values = [
    s,
    min,
    h,
    d,
    wk,
    mo,
    a,
  ];

  /// Returns the enum value with an element attached
  UnitsOfTimeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return UnitsOfTimeBuilder._(
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
