// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The Participation status of an appointment.
class ParticipationStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ParticipationStatus._({
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
  factory ParticipationStatus(
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
    return ParticipationStatus._(
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

  /// Create empty [ParticipationStatus] with element only
  factory ParticipationStatus.empty() =>
      ParticipationStatus._(validatedValue: '');

  /// Factory constructor to create [ParticipationStatus] from JSON.
  factory ParticipationStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipationStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ParticipationStatus cannot be constructed from JSON.',
      );
    }
    return ParticipationStatus._(validatedValue: value, element: element);
  }

  /// accepted
  static final ParticipationStatus accepted = ParticipationStatus._(
    validatedValue: 'accepted',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Accepted'.toFhirString,
  );

  /// declined
  static final ParticipationStatus declined = ParticipationStatus._(
    validatedValue: 'declined',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Declined'.toFhirString,
  );

  /// tentative
  static final ParticipationStatus tentative = ParticipationStatus._(
    validatedValue: 'tentative',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Tentative'.toFhirString,
  );

  /// needs_action
  static final ParticipationStatus needs_action = ParticipationStatus._(
    validatedValue: 'needs-action',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Needs Action'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ParticipationStatus elementOnly =
      ParticipationStatus._(validatedValue: '');

  /// List of all enum-like values
  static final List<ParticipationStatus> values = [
    accepted,
    declined,
    tentative,
    needs_action,
  ];

  /// Clones the current instance
  @override
  ParticipationStatus clone() => ParticipationStatus._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ParticipationStatus withElement(Element? newElement) {
    return ParticipationStatus._(validatedValue: value, element: newElement);
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
  ParticipationStatus copyWith({
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
    return ParticipationStatus._(
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
