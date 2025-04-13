// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for PropertyTypeEnum
enum PropertyTypeEnumBuilderEnum {
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
      case PropertyTypeEnumBuilderEnum.code:
        return 'code';
      case PropertyTypeEnumBuilderEnum.coding:
        return 'Coding';
      case PropertyTypeEnumBuilderEnum.string:
        return 'string';
      case PropertyTypeEnumBuilderEnum.integer:
        return 'integer';
      case PropertyTypeEnumBuilderEnum.boolean:
        return 'boolean';
      case PropertyTypeEnumBuilderEnum.dateTime:
        return 'dateTime';
      case PropertyTypeEnumBuilderEnum.decimal:
        return 'decimal';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static PropertyTypeEnumBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return PropertyTypeEnumBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static PropertyTypeEnumBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'code':
        return PropertyTypeEnumBuilderEnum.code;
      case 'Coding':
        return PropertyTypeEnumBuilderEnum.coding;
      case 'string':
        return PropertyTypeEnumBuilderEnum.string;
      case 'integer':
        return PropertyTypeEnumBuilderEnum.integer;
      case 'boolean':
        return PropertyTypeEnumBuilderEnum.boolean;
      case 'dateTime':
        return PropertyTypeEnumBuilderEnum.dateTime;
      case 'decimal':
        return PropertyTypeEnumBuilderEnum.decimal;
    }
    return null;
  }
}

/// The type of a property value.
class PropertyTypeEnumBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  PropertyTypeEnumBuilder._({
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
  factory PropertyTypeEnumBuilder(
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
    final valueEnum = PropertyTypeEnumBuilderEnum.fromString(
      valueString,
    );
    return PropertyTypeEnumBuilder._(
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

  /// Create empty [PropertyTypeEnumBuilder]
  /// with element only
  factory PropertyTypeEnumBuilder.empty() =>
      PropertyTypeEnumBuilder._(valueString: null);

  /// Factory constructor to create
  /// [PropertyTypeEnumBuilder] from JSON.
  factory PropertyTypeEnumBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PropertyTypeEnumBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PropertyTypeEnumBuilder cannot be constructed from JSON.',
      );
    }
    return PropertyTypeEnumBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for PropertyTypeEnumBuilder
  final PropertyTypeEnumBuilderEnum? valueEnum;

  /// code
  static PropertyTypeEnumBuilder code = PropertyTypeEnumBuilder._(
    valueString: 'code',
    valueEnum: PropertyTypeEnumBuilderEnum.code,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'code (internal reference)',
    ),
  );

  /// Coding
  static PropertyTypeEnumBuilder coding = PropertyTypeEnumBuilder._(
    valueString: 'Coding',
    valueEnum: PropertyTypeEnumBuilderEnum.coding,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Coding (external reference)',
    ),
  );

  /// string
  static PropertyTypeEnumBuilder string = PropertyTypeEnumBuilder._(
    valueString: 'string',
    valueEnum: PropertyTypeEnumBuilderEnum.string,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'string',
    ),
  );

  /// integer
  static PropertyTypeEnumBuilder integer = PropertyTypeEnumBuilder._(
    valueString: 'integer',
    valueEnum: PropertyTypeEnumBuilderEnum.integer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'integer',
    ),
  );

  /// boolean
  static PropertyTypeEnumBuilder boolean = PropertyTypeEnumBuilder._(
    valueString: 'boolean',
    valueEnum: PropertyTypeEnumBuilderEnum.boolean,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'boolean',
    ),
  );

  /// dateTime
  static PropertyTypeEnumBuilder dateTime = PropertyTypeEnumBuilder._(
    valueString: 'dateTime',
    valueEnum: PropertyTypeEnumBuilderEnum.dateTime,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'dateTime',
    ),
  );

  /// decimal
  static PropertyTypeEnumBuilder decimal = PropertyTypeEnumBuilder._(
    valueString: 'decimal',
    valueEnum: PropertyTypeEnumBuilderEnum.decimal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/concept-property-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'decimal',
    ),
  );

  /// For instances where an Element is present but not value
  static PropertyTypeEnumBuilder elementOnly = PropertyTypeEnumBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<PropertyTypeEnumBuilder> values = [
    code,
    coding,
    string,
    integer,
    boolean,
    dateTime,
    decimal,
  ];

  /// Returns the enum value with an element attached
  PropertyTypeEnumBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return PropertyTypeEnumBuilder._(
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
