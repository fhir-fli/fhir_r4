// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The Participation status of an appointment.
class ParticipationStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ParticipationStatusBuilder._({
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
  factory ParticipationStatusBuilder(
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
    return ParticipationStatusBuilder._(
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

  /// Create empty [ParticipationStatusBuilder] with element only
  factory ParticipationStatusBuilder.empty() =>
      ParticipationStatusBuilder._(validatedValue: '');

  /// Factory constructor to create [ParticipationStatusBuilder]
  /// from JSON.
  factory ParticipationStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipationStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ParticipationStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ParticipationStatusBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// accepted
  static ParticipationStatusBuilder accepted = ParticipationStatusBuilder._(
    validatedValue: 'accepted',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Accepted'.toFhirStringBuilder,
  );

  /// declined
  static ParticipationStatusBuilder declined = ParticipationStatusBuilder._(
    validatedValue: 'declined',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Declined'.toFhirStringBuilder,
  );

  /// tentative
  static ParticipationStatusBuilder tentative = ParticipationStatusBuilder._(
    validatedValue: 'tentative',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Tentative'.toFhirStringBuilder,
  );

  /// needs_action
  static ParticipationStatusBuilder needs_action = ParticipationStatusBuilder._(
    validatedValue: 'needs-action',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Needs Action'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ParticipationStatusBuilder elementOnly =
      ParticipationStatusBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ParticipationStatusBuilder> values = [
    accepted,
    declined,
    tentative,
    needs_action,
  ];

  /// Clones the current instance
  @override
  ParticipationStatusBuilder clone() => ParticipationStatusBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ParticipationStatusBuilder withElement(ElementBuilder? newElement) {
    return ParticipationStatusBuilder._(
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
  ParticipationStatusBuilder copyWith({
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
    return ParticipationStatusBuilder._(
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
