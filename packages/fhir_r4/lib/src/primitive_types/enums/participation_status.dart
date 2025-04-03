// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The Participation status of an appointment.
class ParticipationStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ParticipationStatus._({
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
  factory ParticipationStatus(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return ParticipationStatus._(
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

  /// Create empty [ParticipationStatus] with element only
  factory ParticipationStatus.empty() => ParticipationStatus._(valueString: '');

  /// Factory constructor to create [ParticipationStatus]
  /// from JSON.
  factory ParticipationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
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
    return ParticipationStatus._(
      valueString: value,
      element: element,
    );
  }

  /// accepted
  static final ParticipationStatus accepted = ParticipationStatus._(
    valueString: 'accepted',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Accepted'.toFhirString,
  );

  /// declined
  static final ParticipationStatus declined = ParticipationStatus._(
    valueString: 'declined',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Declined'.toFhirString,
  );

  /// tentative
  static final ParticipationStatus tentative = ParticipationStatus._(
    valueString: 'tentative',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Tentative'.toFhirString,
  );

  /// needs_action
  static final ParticipationStatus needs_action = ParticipationStatus._(
    valueString: 'needs-action',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Needs Action'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ParticipationStatus elementOnly =
      ParticipationStatus._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ParticipationStatus withElement(Element? newElement) {
    return ParticipationStatus._(
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
  ParticipationStatus copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for ParticipationStatus: $newValue',
      );
    }
    return ParticipationStatus._(
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
