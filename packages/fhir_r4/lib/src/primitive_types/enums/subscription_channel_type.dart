// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SubscriptionChannelType
enum SubscriptionChannelTypeEnum {
  /// rest-hook
  restHook,

  /// websocket
  websocket,

  /// email
  email,

  /// sms
  sms,

  /// message
  message,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SubscriptionChannelTypeEnum.restHook:
        return 'rest-hook';
      case SubscriptionChannelTypeEnum.websocket:
        return 'websocket';
      case SubscriptionChannelTypeEnum.email:
        return 'email';
      case SubscriptionChannelTypeEnum.sms:
        return 'sms';
      case SubscriptionChannelTypeEnum.message:
        return 'message';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SubscriptionChannelTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SubscriptionChannelTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SubscriptionChannelTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'rest-hook':
        return SubscriptionChannelTypeEnum.restHook;
      case 'websocket':
        return SubscriptionChannelTypeEnum.websocket;
      case 'email':
        return SubscriptionChannelTypeEnum.email;
      case 'sms':
        return SubscriptionChannelTypeEnum.sms;
      case 'message':
        return SubscriptionChannelTypeEnum.message;
    }
    return null;
  }
}

/// The type of method used to execute a subscription.
class SubscriptionChannelType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SubscriptionChannelType._({
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
  factory SubscriptionChannelType(
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
    final valueEnum = SubscriptionChannelTypeEnum.fromString(valueString);
    return SubscriptionChannelType._(
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

  /// Factory constructor to create [SubscriptionChannelType]
  /// from JSON.
  factory SubscriptionChannelType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SubscriptionChannelTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionChannelType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionChannelType cannot be constructed from JSON.',
      );
    }
    return SubscriptionChannelType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SubscriptionChannelType
  final SubscriptionChannelTypeEnum? valueEnum;

  /// rest_hook
  static const SubscriptionChannelType restHook = SubscriptionChannelType._(
    valueString: 'rest-hook',
    valueEnum: SubscriptionChannelTypeEnum.restHook,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-channel-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Rest Hook',
    ),
  );

  /// websocket
  static const SubscriptionChannelType websocket = SubscriptionChannelType._(
    valueString: 'websocket',
    valueEnum: SubscriptionChannelTypeEnum.websocket,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-channel-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Websocket',
    ),
  );

  /// email
  static const SubscriptionChannelType email = SubscriptionChannelType._(
    valueString: 'email',
    valueEnum: SubscriptionChannelTypeEnum.email,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-channel-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Email',
    ),
  );

  /// sms
  static const SubscriptionChannelType sms = SubscriptionChannelType._(
    valueString: 'sms',
    valueEnum: SubscriptionChannelTypeEnum.sms,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-channel-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SMS',
    ),
  );

  /// message
  static const SubscriptionChannelType message = SubscriptionChannelType._(
    valueString: 'message',
    valueEnum: SubscriptionChannelTypeEnum.message,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-channel-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Message',
    ),
  );

  /// List of all enum-like values
  static final List<SubscriptionChannelType> values = [
    restHook,
    websocket,
    email,
    sms,
    message,
  ];

  /// Returns the enum value with an element attached
  SubscriptionChannelType withElement(Element? newElement) {
    return SubscriptionChannelType._(
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
  SubscriptionChannelType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SubscriptionChannelTypeCopyWithImpl<SubscriptionChannelType> get copyWith =>
      SubscriptionChannelTypeCopyWithImpl<SubscriptionChannelType>(
        this,
        (v) => v as SubscriptionChannelType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SubscriptionChannelTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SubscriptionChannelTypeCopyWithImpl(super._value, super._then);

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
      SubscriptionChannelType(
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
