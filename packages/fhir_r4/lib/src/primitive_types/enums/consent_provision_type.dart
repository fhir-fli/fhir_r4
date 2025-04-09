// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConsentProvisionType
enum ConsentProvisionTypeEnum {
  /// deny
  deny,

  /// permit
  permit,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConsentProvisionTypeEnum.deny:
        return 'deny';
      case ConsentProvisionTypeEnum.permit:
        return 'permit';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConsentProvisionTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ConsentProvisionTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConsentProvisionTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'deny':
        return ConsentProvisionTypeEnum.deny;
      case 'permit':
        return ConsentProvisionTypeEnum.permit;
    }
    return null;
  }
}

/// How a rule statement is applied, such as adding additional consent or
/// removing consent.
class ConsentProvisionType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ConsentProvisionType._({
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
  factory ConsentProvisionType(
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
    final valueEnum = ConsentProvisionTypeEnum.fromString(valueString);
    return ConsentProvisionType._(
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

  /// Factory constructor to create [ConsentProvisionType]
  /// from JSON.
  factory ConsentProvisionType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ConsentProvisionTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentProvisionType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentProvisionType cannot be constructed from JSON.',
      );
    }
    return ConsentProvisionType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ConsentProvisionType
  final ConsentProvisionTypeEnum? valueEnum;

  /// deny
  static const ConsentProvisionType deny = ConsentProvisionType._(
    valueString: 'deny',
    valueEnum: ConsentProvisionTypeEnum.deny,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-provision-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Opt Out',
    ),
  );

  /// permit
  static const ConsentProvisionType permit = ConsentProvisionType._(
    valueString: 'permit',
    valueEnum: ConsentProvisionTypeEnum.permit,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-provision-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Opt In',
    ),
  );

  /// List of all enum-like values
  static final List<ConsentProvisionType> values = [
    deny,
    permit,
  ];

  /// Returns the enum value with an element attached
  ConsentProvisionType withElement(Element? newElement) {
    return ConsentProvisionType._(
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
  ConsentProvisionType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ConsentProvisionTypeCopyWithImpl<ConsentProvisionType> get copyWith =>
      ConsentProvisionTypeCopyWithImpl<ConsentProvisionType>(
        this,
        (v) => v as ConsentProvisionType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ConsentProvisionTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ConsentProvisionTypeCopyWithImpl(super._value, super._then);

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
      ConsentProvisionType(
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
