// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SubscriptionNotificationType
enum SubscriptionNotificationTypeEnum {
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
      case SubscriptionNotificationTypeEnum.handshake:
        return 'handshake';
      case SubscriptionNotificationTypeEnum.heartbeat:
        return 'heartbeat';
      case SubscriptionNotificationTypeEnum.eventNotification:
        return 'event-notification';
      case SubscriptionNotificationTypeEnum.queryStatus:
        return 'query-status';
      case SubscriptionNotificationTypeEnum.queryEvent:
        return 'query-event';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SubscriptionNotificationTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return SubscriptionNotificationTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SubscriptionNotificationTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'handshake':
        return SubscriptionNotificationTypeEnum.handshake;
      case 'heartbeat':
        return SubscriptionNotificationTypeEnum.heartbeat;
      case 'event-notification':
        return SubscriptionNotificationTypeEnum.eventNotification;
      case 'query-status':
        return SubscriptionNotificationTypeEnum.queryStatus;
      case 'query-event':
        return SubscriptionNotificationTypeEnum.queryEvent;
    }
    return null;
  }
}

/// The type of notification represented by the status message.
class SubscriptionNotificationType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const SubscriptionNotificationType._({
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
  factory SubscriptionNotificationType(
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
    final valueEnum = SubscriptionNotificationTypeEnum.fromString(valueString);
    return SubscriptionNotificationType._(
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

  /// Factory constructor to create [SubscriptionNotificationType]
  /// from JSON.
  factory SubscriptionNotificationType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = SubscriptionNotificationTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionNotificationType._(
          valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionNotificationType cannot be constructed from JSON.',
      );
    }
    return SubscriptionNotificationType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for SubscriptionNotificationType
  final SubscriptionNotificationTypeEnum? valueEnum;

  /// handshake
  static const SubscriptionNotificationType handshake =
      SubscriptionNotificationType._(
    valueString: 'handshake',
    valueEnum: SubscriptionNotificationTypeEnum.handshake,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/subscription-notification-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Handshake',
    ),
  );

  /// heartbeat
  static const SubscriptionNotificationType heartbeat =
      SubscriptionNotificationType._(
    valueString: 'heartbeat',
    valueEnum: SubscriptionNotificationTypeEnum.heartbeat,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/subscription-notification-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Heartbeat',
    ),
  );

  /// event_notification
  static const SubscriptionNotificationType eventNotification =
      SubscriptionNotificationType._(
    valueString: 'event-notification',
    valueEnum: SubscriptionNotificationTypeEnum.eventNotification,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/subscription-notification-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Event Notification',
    ),
  );

  /// query_status
  static const SubscriptionNotificationType queryStatus =
      SubscriptionNotificationType._(
    valueString: 'query-status',
    valueEnum: SubscriptionNotificationTypeEnum.queryStatus,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/subscription-notification-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Query Status',
    ),
  );

  /// query_event
  static const SubscriptionNotificationType queryEvent =
      SubscriptionNotificationType._(
    valueString: 'query-event',
    valueEnum: SubscriptionNotificationTypeEnum.queryEvent,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/subscription-notification-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Query Event',
    ),
  );

  /// List of all enum-like values
  static final List<SubscriptionNotificationType> values = [
    handshake,
    heartbeat,
    eventNotification,
    queryStatus,
    queryEvent,
  ];

  /// Returns the enum value with an element attached
  SubscriptionNotificationType withElement(Element? newElement) {
    return SubscriptionNotificationType._(
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
  SubscriptionNotificationType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  SubscriptionNotificationTypeCopyWithImpl<SubscriptionNotificationType>
      get copyWith => SubscriptionNotificationTypeCopyWithImpl<
              SubscriptionNotificationType>(
            this,
            (v) => v as SubscriptionNotificationType,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class SubscriptionNotificationTypeCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  SubscriptionNotificationTypeCopyWithImpl(super._value, super._then);

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
      SubscriptionNotificationType(
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
