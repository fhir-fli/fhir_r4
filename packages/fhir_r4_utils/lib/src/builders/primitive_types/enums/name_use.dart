// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for NameUse
enum NameUseBuilderEnum {
  /// usual
  usual,

  /// official
  official,

  /// temp
  temp,

  /// nickname
  nickname,

  /// anonymous
  anonymous,

  /// old
  old,

  /// maiden
  maiden,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case NameUseBuilderEnum.usual:
        return 'usual';
      case NameUseBuilderEnum.official:
        return 'official';
      case NameUseBuilderEnum.temp:
        return 'temp';
      case NameUseBuilderEnum.nickname:
        return 'nickname';
      case NameUseBuilderEnum.anonymous:
        return 'anonymous';
      case NameUseBuilderEnum.old:
        return 'old';
      case NameUseBuilderEnum.maiden:
        return 'maiden';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static NameUseBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return NameUseBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static NameUseBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'usual':
        return NameUseBuilderEnum.usual;
      case 'official':
        return NameUseBuilderEnum.official;
      case 'temp':
        return NameUseBuilderEnum.temp;
      case 'nickname':
        return NameUseBuilderEnum.nickname;
      case 'anonymous':
        return NameUseBuilderEnum.anonymous;
      case 'old':
        return NameUseBuilderEnum.old;
      case 'maiden':
        return NameUseBuilderEnum.maiden;
    }
    return null;
  }
}

/// The use of a human name.
class NameUseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  NameUseBuilder._({
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
  factory NameUseBuilder(
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
    final valueEnum = NameUseBuilderEnum.fromString(
      valueString,
    );
    return NameUseBuilder._(
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

  /// Create empty [NameUseBuilder]
  /// with element only
  factory NameUseBuilder.empty() => NameUseBuilder._(valueString: null);

  /// Factory constructor to create
  /// [NameUseBuilder] from JSON.
  factory NameUseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NameUseBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NameUseBuilder cannot be constructed from JSON.',
      );
    }
    return NameUseBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for NameUseBuilder
  final NameUseBuilderEnum? valueEnum;

  /// usual
  static NameUseBuilder usual = NameUseBuilder._(
    valueString: 'usual',
    valueEnum: NameUseBuilderEnum.usual,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Usual',
    ),
  );

  /// official
  static NameUseBuilder official = NameUseBuilder._(
    valueString: 'official',
    valueEnum: NameUseBuilderEnum.official,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Official',
    ),
  );

  /// temp
  static NameUseBuilder temp = NameUseBuilder._(
    valueString: 'temp',
    valueEnum: NameUseBuilderEnum.temp,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Temp',
    ),
  );

  /// nickname
  static NameUseBuilder nickname = NameUseBuilder._(
    valueString: 'nickname',
    valueEnum: NameUseBuilderEnum.nickname,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Nickname',
    ),
  );

  /// anonymous
  static NameUseBuilder anonymous = NameUseBuilder._(
    valueString: 'anonymous',
    valueEnum: NameUseBuilderEnum.anonymous,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Anonymous',
    ),
  );

  /// old
  static NameUseBuilder old = NameUseBuilder._(
    valueString: 'old',
    valueEnum: NameUseBuilderEnum.old,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Old',
    ),
  );

  /// maiden
  static NameUseBuilder maiden = NameUseBuilder._(
    valueString: 'maiden',
    valueEnum: NameUseBuilderEnum.maiden,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/name-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Name changed for Marriage',
    ),
  );

  /// For instances where an Element is present but not value
  static NameUseBuilder elementOnly = NameUseBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<NameUseBuilder> values = [
    usual,
    official,
    temp,
    nickname,
    anonymous,
    old,
    maiden,
  ];

  /// Returns the enum value with an element attached
  NameUseBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return NameUseBuilder._(
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
