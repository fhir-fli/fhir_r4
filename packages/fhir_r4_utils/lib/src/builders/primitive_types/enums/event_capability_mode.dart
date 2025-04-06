// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The mode of a message capability statement.
class EventCapabilityModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EventCapabilityModeBuilder._({
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
    return EventCapabilityModeBuilder._(
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

  /// Create empty [EventCapabilityModeBuilder] with element only
  factory EventCapabilityModeBuilder.empty() =>
      EventCapabilityModeBuilder._(valueString: '');

  /// Factory constructor to create [EventCapabilityModeBuilder]
  /// from JSON.
  factory EventCapabilityModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventCapabilityModeBuilder.elementOnly.withElement(element);
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

  /// sender
  static EventCapabilityModeBuilder sender = EventCapabilityModeBuilder._(
    valueString: 'sender',
    system:
        'http://hl7.org/fhir/ValueSet/event-capability-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sender'.toFhirStringBuilder,
  );

  /// receiver
  static EventCapabilityModeBuilder receiver = EventCapabilityModeBuilder._(
    valueString: 'receiver',
    system:
        'http://hl7.org/fhir/ValueSet/event-capability-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Receiver'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static EventCapabilityModeBuilder elementOnly =
      EventCapabilityModeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<EventCapabilityModeBuilder> values = [
    sender,
    receiver,
  ];

  /// Clones the current instance
  @override
  EventCapabilityModeBuilder clone() => EventCapabilityModeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  EventCapabilityModeBuilder copyWith({
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
        'Invalid input for EventCapabilityMode: $newValue',
      );
    }
    return EventCapabilityModeBuilder._(
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
