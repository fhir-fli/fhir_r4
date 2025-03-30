// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of method used to execute a subscription.
class SubscriptionChannelTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SubscriptionChannelTypeBuilder._({
    required super.validatedValue,
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
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return SubscriptionChannelTypeBuilder._(
      validatedValue: validated,
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
      SubscriptionChannelTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [SubscriptionChannelTypeBuilder]
  /// from JSON.
  factory SubscriptionChannelTypeBuilder.fromJson(Map<String, dynamic> json) {
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
      validatedValue: value,
      element: element,
    );
  }

  /// rest_hook
  static SubscriptionChannelTypeBuilder rest_hook =
      SubscriptionChannelTypeBuilder._(
    validatedValue: 'rest-hook',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Rest Hook'.toFhirStringBuilder,
  );

  /// websocket
  static SubscriptionChannelTypeBuilder websocket =
      SubscriptionChannelTypeBuilder._(
    validatedValue: 'websocket',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Websocket'.toFhirStringBuilder,
  );

  /// email
  static SubscriptionChannelTypeBuilder email =
      SubscriptionChannelTypeBuilder._(
    validatedValue: 'email',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Email'.toFhirStringBuilder,
  );

  /// sms
  static SubscriptionChannelTypeBuilder sms = SubscriptionChannelTypeBuilder._(
    validatedValue: 'sms',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SMS'.toFhirStringBuilder,
  );

  /// message
  static SubscriptionChannelTypeBuilder message =
      SubscriptionChannelTypeBuilder._(
    validatedValue: 'message',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Message'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SubscriptionChannelTypeBuilder elementOnly =
      SubscriptionChannelTypeBuilder._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SubscriptionChannelTypeBuilder withElement(ElementBuilder? newElement) {
    return SubscriptionChannelTypeBuilder._(
        validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  SubscriptionChannelTypeBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SubscriptionChannelTypeBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
