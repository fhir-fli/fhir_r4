// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The mode of a message capability statement.
class EventCapabilityMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  EventCapabilityMode._({
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
  factory EventCapabilityMode(
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
    return EventCapabilityMode._(
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

  /// Create empty [EventCapabilityMode] with element only
  factory EventCapabilityMode.empty() =>
      EventCapabilityMode._(validatedValue: '');

  /// Factory constructor to create [EventCapabilityMode] from JSON.
  factory EventCapabilityMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventCapabilityMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EventCapabilityMode cannot be constructed from JSON.',
      );
    }
    return EventCapabilityMode._(
      validatedValue: value,
      element: element,
    );
  }

  /// sender
  static final EventCapabilityMode sender = EventCapabilityMode._(
    validatedValue: 'sender',
    system: 'http://hl7.org/fhir/ValueSet/event-capability-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Sender'.toFhirString,
  );

  /// receiver
  static final EventCapabilityMode receiver = EventCapabilityMode._(
    validatedValue: 'receiver',
    system: 'http://hl7.org/fhir/ValueSet/event-capability-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Receiver'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final EventCapabilityMode elementOnly =
      EventCapabilityMode._(validatedValue: '');

  /// List of all enum-like values
  static final List<EventCapabilityMode> values = [
    sender,
    receiver,
  ];

  /// Clones the current instance
  @override
  EventCapabilityMode clone() => EventCapabilityMode._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EventCapabilityMode withElement(Element? newElement) {
    return EventCapabilityMode._(validatedValue: value, element: newElement);
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
  EventCapabilityMode copyWith({
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
    return EventCapabilityMode._(
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
