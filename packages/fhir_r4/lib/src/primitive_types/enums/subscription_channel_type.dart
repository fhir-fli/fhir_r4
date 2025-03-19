// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of method used to execute a subscription.
class SubscriptionChannelType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SubscriptionChannelType._({
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
  factory SubscriptionChannelType(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return SubscriptionChannelType._(
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

  /// Create empty [SubscriptionChannelType] with element only
  factory SubscriptionChannelType.empty() =>
      SubscriptionChannelType._(validatedValue: '');

  /// Factory constructor to create [SubscriptionChannelType] from JSON.
  factory SubscriptionChannelType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionChannelType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionChannelType cannot be constructed from JSON.',
      );
    }
    return SubscriptionChannelType._(validatedValue: value, element: element);
  }

  /// rest_hook
  static final SubscriptionChannelType rest_hook = SubscriptionChannelType._(
    validatedValue: 'rest-hook',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Rest Hook'.toFhirString,
  );

  /// websocket
  static final SubscriptionChannelType websocket = SubscriptionChannelType._(
    validatedValue: 'websocket',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Websocket'.toFhirString,
  );

  /// email
  static final SubscriptionChannelType email = SubscriptionChannelType._(
    validatedValue: 'email',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Email'.toFhirString,
  );

  /// sms
  static final SubscriptionChannelType sms = SubscriptionChannelType._(
    validatedValue: 'sms',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SMS'.toFhirString,
  );

  /// message
  static final SubscriptionChannelType message = SubscriptionChannelType._(
    validatedValue: 'message',
    system: 'http://hl7.org/fhir/ValueSet/subscription-channel-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Message'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SubscriptionChannelType elementOnly =
      SubscriptionChannelType._(validatedValue: '');

  /// List of all enum-like values
  static final List<SubscriptionChannelType> values = [
    rest_hook,
    websocket,
    email,
    sms,
    message,
  ];

  /// Clones the current instance
  @override
  SubscriptionChannelType clone() => SubscriptionChannelType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SubscriptionChannelType withElement(Element? newElement) {
    return SubscriptionChannelType._(
      validatedValue: value,
      element: newElement,
    );
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
  SubscriptionChannelType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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
    return SubscriptionChannelType._(
      validatedValue: newValue ?? value,
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
