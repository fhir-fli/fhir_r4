part of '../primitive_types.dart';

/// Actual enum for AddressType
enum AddressTypeEnum {
  /// postal
  postal,

  /// physical
  physical,

  /// both
  both,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AddressTypeEnum.postal:
        return 'postal';
      case AddressTypeEnum.physical:
        return 'physical';
      case AddressTypeEnum.both:
        return 'both';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AddressTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return AddressTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AddressTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'postal':
        return AddressTypeEnum.postal;
      case 'physical':
        return AddressTypeEnum.physical;
      case 'both':
        return AddressTypeEnum.both;
    }
    return null;
  }
}

/// The type of an address (physical / postal).
class AddressType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const AddressType._({
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
  factory AddressType(
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
    final valueEnum = AddressTypeEnum.fromString(valueString);
    return AddressType._(
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

  /// Factory constructor to create [AddressType]
  /// from JSON.
  factory AddressType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = AddressTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AddressType cannot be constructed from JSON.',
      );
    }
    return AddressType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for AddressType
  final AddressTypeEnum? valueEnum;

  /// postal
  static const AddressType postal = AddressType._(
    valueString: 'postal',
    valueEnum: AddressTypeEnum.postal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Postal',
    ),
  );

  /// physical
  static const AddressType physical = AddressType._(
    valueString: 'physical',
    valueEnum: AddressTypeEnum.physical,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Physical',
    ),
  );

  /// both
  static const AddressType both = AddressType._(
    valueString: 'both',
    valueEnum: AddressTypeEnum.both,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/address-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Postal & Physical',
    ),
  );

  /// List of all enum-like values
  static final List<AddressType> values = [
    postal,
    physical,
    both,
  ];

  /// Returns the enum value with an element attached
  AddressType withElement(Element? newElement) {
    return AddressType._(
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
  AddressType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  AddressTypeCopyWithImpl<AddressType> get copyWith =>
      AddressTypeCopyWithImpl<AddressType>(
        this,
        (v) => v as AddressType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class AddressTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  AddressTypeCopyWithImpl(super._value, super._then);

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
      AddressType(
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
