part of '../primitive_types.dart';

/// Actual enum for IdentifierUse
enum IdentifierUseBuilderEnum {
  /// usual
  usual,

  /// official
  official,

  /// temp
  temp,

  /// secondary
  secondary,

  /// old
  old,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case IdentifierUseBuilderEnum.usual:
        return 'usual';
      case IdentifierUseBuilderEnum.official:
        return 'official';
      case IdentifierUseBuilderEnum.temp:
        return 'temp';
      case IdentifierUseBuilderEnum.secondary:
        return 'secondary';
      case IdentifierUseBuilderEnum.old:
        return 'old';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static IdentifierUseBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return IdentifierUseBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static IdentifierUseBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'usual':
        return IdentifierUseBuilderEnum.usual;
      case 'official':
        return IdentifierUseBuilderEnum.official;
      case 'temp':
        return IdentifierUseBuilderEnum.temp;
      case 'secondary':
        return IdentifierUseBuilderEnum.secondary;
      case 'old':
        return IdentifierUseBuilderEnum.old;
    }
    return null;
  }
}

/// Identifies the purpose for this identifier, if known .
class IdentifierUseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  IdentifierUseBuilder._({
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
  factory IdentifierUseBuilder(
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
    final valueEnum = IdentifierUseBuilderEnum.fromString(
      valueString,
    );
    return IdentifierUseBuilder._(
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

  /// Create empty [IdentifierUseBuilder]
  /// with element only
  factory IdentifierUseBuilder.empty() =>
      IdentifierUseBuilder._(valueString: null);

  /// Factory constructor to create
  /// [IdentifierUseBuilder] from JSON.
  factory IdentifierUseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return IdentifierUseBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'IdentifierUseBuilder cannot be constructed from JSON.',
      );
    }
    return IdentifierUseBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for IdentifierUseBuilder
  final IdentifierUseBuilderEnum? valueEnum;

  /// usual
  static IdentifierUseBuilder usual = IdentifierUseBuilder._(
    valueString: 'usual',
    valueEnum: IdentifierUseBuilderEnum.usual,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/identifier-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Usual',
    ),
  );

  /// official
  static IdentifierUseBuilder official = IdentifierUseBuilder._(
    valueString: 'official',
    valueEnum: IdentifierUseBuilderEnum.official,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/identifier-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Official',
    ),
  );

  /// temp
  static IdentifierUseBuilder temp = IdentifierUseBuilder._(
    valueString: 'temp',
    valueEnum: IdentifierUseBuilderEnum.temp,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/identifier-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Temp',
    ),
  );

  /// secondary
  static IdentifierUseBuilder secondary = IdentifierUseBuilder._(
    valueString: 'secondary',
    valueEnum: IdentifierUseBuilderEnum.secondary,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/identifier-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Secondary',
    ),
  );

  /// old
  static IdentifierUseBuilder old = IdentifierUseBuilder._(
    valueString: 'old',
    valueEnum: IdentifierUseBuilderEnum.old,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/identifier-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Old',
    ),
  );

  /// For instances where an Element is present but not value
  static IdentifierUseBuilder elementOnly = IdentifierUseBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<IdentifierUseBuilder> values = [
    usual,
    official,
    temp,
    secondary,
    old,
  ];

  /// Returns the enum value with an element attached
  IdentifierUseBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return IdentifierUseBuilder._(
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
