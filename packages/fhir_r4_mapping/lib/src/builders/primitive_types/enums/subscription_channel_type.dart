// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SubscriptionChannelType
enum SubscriptionChannelTypeBuilderEnum {
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
      case SubscriptionChannelTypeBuilderEnum.restHook:
        return 'rest-hook';
      case SubscriptionChannelTypeBuilderEnum.websocket:
        return 'websocket';
      case SubscriptionChannelTypeBuilderEnum.email:
        return 'email';
      case SubscriptionChannelTypeBuilderEnum.sms:
        return 'sms';
      case SubscriptionChannelTypeBuilderEnum.message:
        return 'message';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SubscriptionChannelTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SubscriptionChannelTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SubscriptionChannelTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'rest-hook':
        return SubscriptionChannelTypeBuilderEnum.restHook;
      case 'websocket':
        return SubscriptionChannelTypeBuilderEnum.websocket;
      case 'email':
        return SubscriptionChannelTypeBuilderEnum.email;
      case 'sms':
        return SubscriptionChannelTypeBuilderEnum.sms;
      case 'message':
        return SubscriptionChannelTypeBuilderEnum.message;
    }
    return null;
  }
}

/// The type of method used to execute a subscription.
class SubscriptionChannelTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SubscriptionChannelTypeBuilder._({
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
  factory SubscriptionChannelTypeBuilder(
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
    final valueEnum = SubscriptionChannelTypeBuilderEnum.fromString(
      valueString,
    );
    return SubscriptionChannelTypeBuilder._(
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

  /// Create empty [SubscriptionChannelTypeBuilder]
  /// with element only
  factory SubscriptionChannelTypeBuilder.empty() =>
      SubscriptionChannelTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SubscriptionChannelTypeBuilder] from JSON.
  factory SubscriptionChannelTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionChannelTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionChannelTypeBuilder cannot be constructed from JSON.',
      );
    }
    return SubscriptionChannelTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SubscriptionChannelTypeBuilder
  final SubscriptionChannelTypeBuilderEnum? valueEnum;

  /// rest_hook
  static SubscriptionChannelTypeBuilder restHook =
      SubscriptionChannelTypeBuilder._(
    valueString: 'rest-hook',
    valueEnum: SubscriptionChannelTypeBuilderEnum.restHook,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-channel-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Rest Hook',
    ),
  );

  /// websocket
  static SubscriptionChannelTypeBuilder websocket =
      SubscriptionChannelTypeBuilder._(
    valueString: 'websocket',
    valueEnum: SubscriptionChannelTypeBuilderEnum.websocket,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-channel-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Websocket',
    ),
  );

  /// email
  static SubscriptionChannelTypeBuilder email =
      SubscriptionChannelTypeBuilder._(
    valueString: 'email',
    valueEnum: SubscriptionChannelTypeBuilderEnum.email,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-channel-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Email',
    ),
  );

  /// sms
  static SubscriptionChannelTypeBuilder sms = SubscriptionChannelTypeBuilder._(
    valueString: 'sms',
    valueEnum: SubscriptionChannelTypeBuilderEnum.sms,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-channel-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SMS',
    ),
  );

  /// message
  static SubscriptionChannelTypeBuilder message =
      SubscriptionChannelTypeBuilder._(
    valueString: 'message',
    valueEnum: SubscriptionChannelTypeBuilderEnum.message,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-channel-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Message',
    ),
  );

  /// For instances where an Element is present but not value
  static SubscriptionChannelTypeBuilder elementOnly =
      SubscriptionChannelTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SubscriptionChannelTypeBuilder> values = [
    restHook,
    websocket,
    email,
    sms,
    message,
  ];

  /// Returns the enum value with an element attached
  SubscriptionChannelTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SubscriptionChannelTypeBuilder._(
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
