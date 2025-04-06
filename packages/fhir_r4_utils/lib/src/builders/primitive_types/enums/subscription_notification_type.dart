// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of notification represented by the status message.
class SubscriptionNotificationTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SubscriptionNotificationTypeBuilder._({
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
  factory SubscriptionNotificationTypeBuilder(
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
    return SubscriptionNotificationTypeBuilder._(
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

  /// Create empty [SubscriptionNotificationTypeBuilder] with element only
  factory SubscriptionNotificationTypeBuilder.empty() =>
      SubscriptionNotificationTypeBuilder._(valueString: '');

  /// Factory constructor to create [SubscriptionNotificationTypeBuilder]
  /// from JSON.
  factory SubscriptionNotificationTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionNotificationTypeBuilder.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionNotificationTypeBuilder cannot be constructed from JSON.',
      );
    }
    return SubscriptionNotificationTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// handshake
  static SubscriptionNotificationTypeBuilder handshake =
      SubscriptionNotificationTypeBuilder._(
    valueString: 'handshake',
    system: 'http://hl7.org/fhir/ValueSet/subscription-notification-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Handshake'.toFhirStringBuilder,
  );

  /// heartbeat
  static SubscriptionNotificationTypeBuilder heartbeat =
      SubscriptionNotificationTypeBuilder._(
    valueString: 'heartbeat',
    system: 'http://hl7.org/fhir/ValueSet/subscription-notification-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Heartbeat'.toFhirStringBuilder,
  );

  /// event_notification
  static SubscriptionNotificationTypeBuilder event_notification =
      SubscriptionNotificationTypeBuilder._(
    valueString: 'event-notification',
    system: 'http://hl7.org/fhir/ValueSet/subscription-notification-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Event Notification'.toFhirStringBuilder,
  );

  /// query_status
  static SubscriptionNotificationTypeBuilder query_status =
      SubscriptionNotificationTypeBuilder._(
    valueString: 'query-status',
    system: 'http://hl7.org/fhir/ValueSet/subscription-notification-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Query Status'.toFhirStringBuilder,
  );

  /// query_event
  static SubscriptionNotificationTypeBuilder query_event =
      SubscriptionNotificationTypeBuilder._(
    valueString: 'query-event',
    system: 'http://hl7.org/fhir/ValueSet/subscription-notification-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Query Event'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SubscriptionNotificationTypeBuilder elementOnly =
      SubscriptionNotificationTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<SubscriptionNotificationTypeBuilder> values = [
    handshake,
    heartbeat,
    event_notification,
    query_status,
    query_event,
  ];

  /// Clones the current instance
  @override
  SubscriptionNotificationTypeBuilder clone() =>
      SubscriptionNotificationTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SubscriptionNotificationTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SubscriptionNotificationTypeBuilder._(
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
  SubscriptionNotificationTypeBuilder copyWith({
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
        'Invalid input for SubscriptionNotificationType: $newValue',
      );
    }
    return SubscriptionNotificationTypeBuilder._(
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
