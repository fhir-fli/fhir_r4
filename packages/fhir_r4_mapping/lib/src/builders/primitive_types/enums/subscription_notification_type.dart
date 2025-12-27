part of '../primitive_types.dart';

/// Actual enum for SubscriptionNotificationType
enum SubscriptionNotificationTypeBuilderEnum {
  /// handshake
  handshake,

  /// heartbeat
  heartbeat,

  /// event-notification
  eventNotification,

  /// query-status
  queryStatus,

  /// query-event
  queryEvent,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SubscriptionNotificationTypeBuilderEnum.handshake:
        return 'handshake';
      case SubscriptionNotificationTypeBuilderEnum.heartbeat:
        return 'heartbeat';
      case SubscriptionNotificationTypeBuilderEnum.eventNotification:
        return 'event-notification';
      case SubscriptionNotificationTypeBuilderEnum.queryStatus:
        return 'query-status';
      case SubscriptionNotificationTypeBuilderEnum.queryEvent:
        return 'query-event';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SubscriptionNotificationTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SubscriptionNotificationTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SubscriptionNotificationTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'handshake':
        return SubscriptionNotificationTypeBuilderEnum.handshake;
      case 'heartbeat':
        return SubscriptionNotificationTypeBuilderEnum.heartbeat;
      case 'event-notification':
        return SubscriptionNotificationTypeBuilderEnum.eventNotification;
      case 'query-status':
        return SubscriptionNotificationTypeBuilderEnum.queryStatus;
      case 'query-event':
        return SubscriptionNotificationTypeBuilderEnum.queryEvent;
    }
    return null;
  }
}

/// The type of notification represented by the status message.
class SubscriptionNotificationTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SubscriptionNotificationTypeBuilder._({
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
    final valueEnum = SubscriptionNotificationTypeBuilderEnum.fromString(
      valueString,
    );
    return SubscriptionNotificationTypeBuilder._(
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

  /// Create empty [SubscriptionNotificationTypeBuilder]
  /// with element only
  factory SubscriptionNotificationTypeBuilder.empty() =>
      SubscriptionNotificationTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SubscriptionNotificationTypeBuilder] from JSON.
  factory SubscriptionNotificationTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionNotificationTypeBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for SubscriptionNotificationTypeBuilder
  final SubscriptionNotificationTypeBuilderEnum? valueEnum;

  /// handshake
  static SubscriptionNotificationTypeBuilder handshake =
      SubscriptionNotificationTypeBuilder._(
    valueString: 'handshake',
    valueEnum: SubscriptionNotificationTypeBuilderEnum.handshake,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/subscription-notification-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Handshake',
    ),
  );

  /// heartbeat
  static SubscriptionNotificationTypeBuilder heartbeat =
      SubscriptionNotificationTypeBuilder._(
    valueString: 'heartbeat',
    valueEnum: SubscriptionNotificationTypeBuilderEnum.heartbeat,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/subscription-notification-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Heartbeat',
    ),
  );

  /// event_notification
  static SubscriptionNotificationTypeBuilder eventNotification =
      SubscriptionNotificationTypeBuilder._(
    valueString: 'event-notification',
    valueEnum: SubscriptionNotificationTypeBuilderEnum.eventNotification,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/subscription-notification-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Event Notification',
    ),
  );

  /// query_status
  static SubscriptionNotificationTypeBuilder queryStatus =
      SubscriptionNotificationTypeBuilder._(
    valueString: 'query-status',
    valueEnum: SubscriptionNotificationTypeBuilderEnum.queryStatus,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/subscription-notification-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Query Status',
    ),
  );

  /// query_event
  static SubscriptionNotificationTypeBuilder queryEvent =
      SubscriptionNotificationTypeBuilder._(
    valueString: 'query-event',
    valueEnum: SubscriptionNotificationTypeBuilderEnum.queryEvent,
    system: FhirUriBuilder._(
      valueString:
          'http://hl7.org/fhir/ValueSet/subscription-notification-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Query Event',
    ),
  );

  /// For instances where an Element is present but not value
  static SubscriptionNotificationTypeBuilder elementOnly =
      SubscriptionNotificationTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SubscriptionNotificationTypeBuilder> values = [
    handshake,
    heartbeat,
    eventNotification,
    queryStatus,
    queryEvent,
  ];

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
}
