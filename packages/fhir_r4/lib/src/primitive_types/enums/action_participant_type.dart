// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of participant for the action.
class ActionParticipantType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ActionParticipantType._({
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
  factory ActionParticipantType(
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
    return ActionParticipantType._(
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

  /// Create empty [ActionParticipantType] with element only
  factory ActionParticipantType.empty() =>
      ActionParticipantType._(valueString: '');

  /// Factory constructor to create [ActionParticipantType]
  /// from JSON.
  factory ActionParticipantType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionParticipantType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionParticipantType cannot be constructed from JSON.',
      );
    }
    return ActionParticipantType._(
      valueString: value,
      element: element,
    );
  }

  /// patient
  static final ActionParticipantType patient = ActionParticipantType._(
    valueString: 'patient',
    system: 'http://hl7.org/fhir/ValueSet/action-participant-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Patient'.toFhirString,
  );

  /// practitioner
  static final ActionParticipantType practitioner = ActionParticipantType._(
    valueString: 'practitioner',
    system: 'http://hl7.org/fhir/ValueSet/action-participant-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Practitioner'.toFhirString,
  );

  /// related_person
  static final ActionParticipantType related_person = ActionParticipantType._(
    valueString: 'related-person',
    system: 'http://hl7.org/fhir/ValueSet/action-participant-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Related Person'.toFhirString,
  );

  /// device
  static final ActionParticipantType device = ActionParticipantType._(
    valueString: 'device',
    system: 'http://hl7.org/fhir/ValueSet/action-participant-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Device'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ActionParticipantType elementOnly =
      ActionParticipantType._(valueString: '');

  /// List of all enum-like values
  static final List<ActionParticipantType> values = [
    patient,
    practitioner,
    related_person,
    device,
  ];

  /// Clones the current instance
  @override
  ActionParticipantType clone() => ActionParticipantType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionParticipantType withElement(Element? newElement) {
    return ActionParticipantType._(
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
  ActionParticipantType copyWith({
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
        'Invalid input for ActionParticipantType: $newValue',
      );
    }
    return ActionParticipantType._(
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
