// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for EventCapabilityMode
enum EventCapabilityModeBuilderEnum {
  /// sender
  sender,

  /// receiver
  receiver,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EventCapabilityModeBuilderEnum.sender:
        return 'sender';
      case EventCapabilityModeBuilderEnum.receiver:
        return 'receiver';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EventCapabilityModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EventCapabilityModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EventCapabilityModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'sender':
        return EventCapabilityModeBuilderEnum.sender;
      case 'receiver':
        return EventCapabilityModeBuilderEnum.receiver;
    }
    return null;
  }
}

/// The mode of a message capability statement.
class EventCapabilityModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EventCapabilityModeBuilder._({
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
  factory EventCapabilityModeBuilder(
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
    final valueEnum = EventCapabilityModeBuilderEnum.fromString(
      valueString,
    );
    return EventCapabilityModeBuilder._(
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

  /// Create empty [EventCapabilityModeBuilder]
  /// with element only
  factory EventCapabilityModeBuilder.empty() =>
      EventCapabilityModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EventCapabilityModeBuilder] from JSON.
  factory EventCapabilityModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventCapabilityModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EventCapabilityModeBuilder cannot be constructed from JSON.',
      );
    }
    return EventCapabilityModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for EventCapabilityModeBuilder
  final EventCapabilityModeBuilderEnum? valueEnum;

  /// sender
  static EventCapabilityModeBuilder sender = EventCapabilityModeBuilder._(
    valueString: 'sender',
    valueEnum: EventCapabilityModeBuilderEnum.sender,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-capability-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Sender',
    ),
  );

  /// receiver
  static EventCapabilityModeBuilder receiver = EventCapabilityModeBuilder._(
    valueString: 'receiver',
    valueEnum: EventCapabilityModeBuilderEnum.receiver,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-capability-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Receiver',
    ),
  );

  /// For instances where an Element is present but not value
  static EventCapabilityModeBuilder elementOnly = EventCapabilityModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EventCapabilityModeBuilder> values = [
    sender,
    receiver,
  ];

  /// Returns the enum value with an element attached
  EventCapabilityModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EventCapabilityModeBuilder._(
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
