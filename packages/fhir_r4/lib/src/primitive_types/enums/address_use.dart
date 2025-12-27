part of '../primitive_types.dart';

/// Actual enum for AddressUse
enum AddressUseEnum {
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
      case AddressUseEnum.home:
        return 'home';
      case AddressUseEnum.work:
        return 'work';
      case AddressUseEnum.temp:
        return 'temp';
      case AddressUseEnum.old:
        return 'old';
      case AddressUseEnum.billing:
        return 'billing';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AddressUseEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AddressUseEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AddressUseEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'home':
        return AddressUseEnum.home;
      case 'work':
        return AddressUseEnum.work;
      case 'temp':
        return AddressUseEnum.temp;
      case 'old':
        return AddressUseEnum.old;
      case 'billing':
        return AddressUseEnum.billing;
    }
    return null;
  }
}

/// The use of an address.
class AddressUse extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AddressUse._({
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
  factory AddressUse(
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
    final valueEnum = AddressUseEnum.fromString(valueString);
    return AddressUse._(
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

  /// Factory constructor to create [AddressUse]
  /// from JSON.
  factory AddressUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AddressUseEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressUse._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AddressUse cannot be constructed from JSON.',
      );
    }
    return AddressUse._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AddressUse
  final AddressUseEnum? valueEnum;

  /// home
  static const AddressUse home = AddressUse._(
    valueString: 'home',
    valueEnum: AddressUseEnum.home,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Home',
    ),
  );

  /// work
  static const AddressUse work = AddressUse._(
    valueString: 'work',
    valueEnum: AddressUseEnum.work,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Work',
    ),
  );

  /// temp
  static const AddressUse temp = AddressUse._(
    valueString: 'temp',
    valueEnum: AddressUseEnum.temp,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Temporary',
    ),
  );

  /// old
  static const AddressUse old = AddressUse._(
    valueString: 'old',
    valueEnum: AddressUseEnum.old,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Old / Incorrect',
    ),
  );

  /// billing
  static const AddressUse billing = AddressUse._(
    valueString: 'billing',
    valueEnum: AddressUseEnum.billing,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Billing',
    ),
  );

  /// List of all enum-like values
  static final List<AddressUse> values = [
    home,
    work,
    temp,
    old,
    billing,
  ];

  /// Returns the enum value with an element attached
  AddressUse withElement(Element? newElement) {
    return AddressUse._(
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
  AddressUse clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AddressUseCopyWithImpl<AddressUse> get copyWith =>
      AddressUseCopyWithImpl<AddressUse>(
        this,
        (v) => v as AddressUse,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AddressUseCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AddressUseCopyWithImpl(super._value, super._then);

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
      AddressUse(
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
