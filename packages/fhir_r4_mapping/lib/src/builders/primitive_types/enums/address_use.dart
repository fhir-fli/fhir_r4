part of '../primitive_types.dart';

/// Actual enum for AddressUse
enum AddressUseBuilderEnum {
  /// home
  home,

  /// work
  work,

  /// temp
  temp,

  /// old
  old,

  /// billing
  billing,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AddressUseBuilderEnum.home:
        return 'home';
      case AddressUseBuilderEnum.work:
        return 'work';
      case AddressUseBuilderEnum.temp:
        return 'temp';
      case AddressUseBuilderEnum.old:
        return 'old';
      case AddressUseBuilderEnum.billing:
        return 'billing';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AddressUseBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AddressUseBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AddressUseBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'home':
        return AddressUseBuilderEnum.home;
      case 'work':
        return AddressUseBuilderEnum.work;
      case 'temp':
        return AddressUseBuilderEnum.temp;
      case 'old':
        return AddressUseBuilderEnum.old;
      case 'billing':
        return AddressUseBuilderEnum.billing;
    }
    return null;
  }
}

/// The use of an address.
class AddressUseBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AddressUseBuilder._({
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
  factory AddressUseBuilder(
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
    final valueEnum = AddressUseBuilderEnum.fromString(
      valueString,
    );
    return AddressUseBuilder._(
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

  /// Create empty [AddressUseBuilder]
  /// with element only
  factory AddressUseBuilder.empty() => AddressUseBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AddressUseBuilder] from JSON.
  factory AddressUseBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressUseBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AddressUseBuilder cannot be constructed from JSON.',
      );
    }
    return AddressUseBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AddressUseBuilder
  final AddressUseBuilderEnum? valueEnum;

  /// home
  static AddressUseBuilder home = AddressUseBuilder._(
    valueString: 'home',
    valueEnum: AddressUseBuilderEnum.home,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Home',
    ),
  );

  /// work
  static AddressUseBuilder work = AddressUseBuilder._(
    valueString: 'work',
    valueEnum: AddressUseBuilderEnum.work,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Work',
    ),
  );

  /// temp
  static AddressUseBuilder temp = AddressUseBuilder._(
    valueString: 'temp',
    valueEnum: AddressUseBuilderEnum.temp,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Temporary',
    ),
  );

  /// old
  static AddressUseBuilder old = AddressUseBuilder._(
    valueString: 'old',
    valueEnum: AddressUseBuilderEnum.old,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Old / Incorrect',
    ),
  );

  /// billing
  static AddressUseBuilder billing = AddressUseBuilder._(
    valueString: 'billing',
    valueEnum: AddressUseBuilderEnum.billing,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-use',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Billing',
    ),
  );

  /// For instances where an Element is present but not value
  static AddressUseBuilder elementOnly = AddressUseBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AddressUseBuilder> values = [
    home,
    work,
    temp,
    old,
    billing,
  ];

  /// Returns the enum value with an element attached
  AddressUseBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AddressUseBuilder._(
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
