part of '../primitive_types.dart';

/// Actual enum for PropertyTypeEnum
enum PropertyTypeEnumEnum {
  /// code
  code,

  /// Coding
  coding,

  /// string
  string,

  /// integer
  integer,

  /// boolean
  boolean,

  /// dateTime
  dateTime,

  /// decimal
  decimal,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case PropertyTypeEnumEnum.code:
        return 'code';
      case PropertyTypeEnumEnum.coding:
        return 'Coding';
      case PropertyTypeEnumEnum.string:
        return 'string';
      case PropertyTypeEnumEnum.integer:
        return 'integer';
      case PropertyTypeEnumEnum.boolean:
        return 'boolean';
      case PropertyTypeEnumEnum.dateTime:
        return 'dateTime';
      case PropertyTypeEnumEnum.decimal:
        return 'decimal';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PropertyTypeEnumEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return PropertyTypeEnumEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PropertyTypeEnumEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'code':
        return PropertyTypeEnumEnum.code;
      case 'Coding':
        return PropertyTypeEnumEnum.coding;
      case 'string':
        return PropertyTypeEnumEnum.string;
      case 'integer':
        return PropertyTypeEnumEnum.integer;
      case 'boolean':
        return PropertyTypeEnumEnum.boolean;
      case 'dateTime':
        return PropertyTypeEnumEnum.dateTime;
      case 'decimal':
        return PropertyTypeEnumEnum.decimal;
    }
    return null;
  }
}

/// The type of a property value.
class PropertyTypeEnum extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const PropertyTypeEnum._({
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
  factory PropertyTypeEnum(
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
    final valueEnum = PropertyTypeEnumEnum.fromString(valueString);
    return PropertyTypeEnum._(
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

  /// Factory constructor to create [PropertyTypeEnum]
  /// from JSON.
  factory PropertyTypeEnum.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = PropertyTypeEnumEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyTypeEnum._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PropertyTypeEnum cannot be constructed from JSON.',
      );
    }
    return PropertyTypeEnum._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for PropertyTypeEnum
  final PropertyTypeEnumEnum? valueEnum;

  /// code
  static const PropertyTypeEnum code = PropertyTypeEnum._(
    valueString: 'code',
    valueEnum: PropertyTypeEnumEnum.code,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'code (internal reference)',
    ),
  );

  /// Coding
  static const PropertyTypeEnum coding = PropertyTypeEnum._(
    valueString: 'Coding',
    valueEnum: PropertyTypeEnumEnum.coding,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Coding (external reference)',
    ),
  );

  /// string
  static const PropertyTypeEnum string = PropertyTypeEnum._(
    valueString: 'string',
    valueEnum: PropertyTypeEnumEnum.string,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'string',
    ),
  );

  /// integer
  static const PropertyTypeEnum integer = PropertyTypeEnum._(
    valueString: 'integer',
    valueEnum: PropertyTypeEnumEnum.integer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'integer',
    ),
  );

  /// boolean
  static const PropertyTypeEnum boolean = PropertyTypeEnum._(
    valueString: 'boolean',
    valueEnum: PropertyTypeEnumEnum.boolean,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'boolean',
    ),
  );

  /// dateTime
  static const PropertyTypeEnum dateTime = PropertyTypeEnum._(
    valueString: 'dateTime',
    valueEnum: PropertyTypeEnumEnum.dateTime,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'dateTime',
    ),
  );

  /// decimal
  static const PropertyTypeEnum decimal = PropertyTypeEnum._(
    valueString: 'decimal',
    valueEnum: PropertyTypeEnumEnum.decimal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'decimal',
    ),
  );

  /// List of all enum-like values
  static final List<PropertyTypeEnum> values = [
    code,
    coding,
    string,
    integer,
    boolean,
    dateTime,
    decimal,
  ];

  /// Returns the enum value with an element attached
  PropertyTypeEnum withElement(Element? newElement) {
    return PropertyTypeEnum._(
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
  PropertyTypeEnum clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  PropertyTypeEnumCopyWithImpl<PropertyTypeEnum> get copyWith =>
      PropertyTypeEnumCopyWithImpl<PropertyTypeEnum>(
        this,
        (v) => v as PropertyTypeEnum,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class PropertyTypeEnumCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  PropertyTypeEnumCopyWithImpl(super._value, super._then);

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
      PropertyTypeEnum(
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
