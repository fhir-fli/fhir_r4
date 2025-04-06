// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of method used to execute a subscription.
class SubscriptionChannelTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SubscriptionChannelTypeBuilder._({
    required super.valueString,
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
    return SubscriptionChannelTypeBuilder._(
      valueString: valueString,
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

  /// Create empty [SubscriptionChannelTypeBuilder] with element only
  factory SubscriptionChannelTypeBuilder.empty() =>
      SubscriptionChannelTypeBuilder._(valueString: '');

  /// Factory constructor to create [SubscriptionChannelTypeBuilder]
  /// from JSON.
  factory SubscriptionChannelTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionChannelTypeBuilder.elementOnly.withElement(element);
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

  /// rest_hook
  static SubscriptionChannelTypeBuilder rest_hook =
      SubscriptionChannelTypeBuilder._(
    valueString: 'rest-hook',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Rest Hook'.toFhirStringBuilder,
  );

  /// websocket
  static SubscriptionChannelTypeBuilder websocket =
      SubscriptionChannelTypeBuilder._(
    valueString: 'websocket',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Websocket'.toFhirStringBuilder,
  );

  /// email
  static SubscriptionChannelTypeBuilder email =
      SubscriptionChannelTypeBuilder._(
    valueString: 'email',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Email'.toFhirStringBuilder,
  );

  /// sms
  static SubscriptionChannelTypeBuilder sms = SubscriptionChannelTypeBuilder._(
    valueString: 'sms',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SMS'.toFhirStringBuilder,
  );

  /// message
  static SubscriptionChannelTypeBuilder message =
      SubscriptionChannelTypeBuilder._(
    valueString: 'message',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Message'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SubscriptionChannelTypeBuilder elementOnly =
      SubscriptionChannelTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<SubscriptionChannelTypeBuilder> values = [
    rest_hook,
    websocket,
    email,
    sms,
    message,
  ];

  /// Clones the current instance
  @override
  SubscriptionChannelTypeBuilder clone() => SubscriptionChannelTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  SubscriptionChannelTypeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for SubscriptionChannelType: $newValue',
      );
    }
    return SubscriptionChannelTypeBuilder._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
