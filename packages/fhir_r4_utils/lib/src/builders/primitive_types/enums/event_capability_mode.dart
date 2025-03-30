// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The mode of a message capability statement.
class EventCapabilityModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EventCapabilityModeBuilder._({
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
  factory EventCapabilityModeBuilder(
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
    return EventCapabilityModeBuilder._(
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

  /// Create empty [EventCapabilityModeBuilder] with element only
  factory EventCapabilityModeBuilder.empty() =>
      EventCapabilityModeBuilder._(validatedValue: '');

  /// Factory constructor to create [EventCapabilityModeBuilder]
  /// from JSON.
  factory EventCapabilityModeBuilder.fromJson(Map<String, dynamic> json) {
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
      validatedValue: value,
      element: element,
    );
  }

  /// sender
  static EventCapabilityModeBuilder sender = EventCapabilityModeBuilder._(
    validatedValue: 'sender',
    system:
        'http://hl7.org/fhir/ValueSet/event-capability-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sender'.toFhirStringBuilder,
  );

  /// receiver
  static EventCapabilityModeBuilder receiver = EventCapabilityModeBuilder._(
    validatedValue: 'receiver',
    system:
        'http://hl7.org/fhir/ValueSet/event-capability-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Receiver'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static EventCapabilityModeBuilder elementOnly =
      EventCapabilityModeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<EventCapabilityModeBuilder> values = [
    sender,
    receiver,
  ];

  /// Clones the current instance
  @override
  EventCapabilityModeBuilder clone() => EventCapabilityModeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  EventCapabilityModeBuilder withElement(ElementBuilder? newElement) {
    return EventCapabilityModeBuilder._(
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
  EventCapabilityModeBuilder copyWith({
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
    return EventCapabilityModeBuilder._(
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
