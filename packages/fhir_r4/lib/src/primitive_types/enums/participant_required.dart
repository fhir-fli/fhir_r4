// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Is the Participant required to attend the appointment.
class ParticipantRequired extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ParticipantRequired._({
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
  factory ParticipantRequired(
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
    return ParticipantRequired._(
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

  /// Create empty [ParticipantRequired] with element only
  factory ParticipantRequired.empty() => ParticipantRequired._(valueString: '');

  /// Factory constructor to create [ParticipantRequired]
  /// from JSON.
  factory ParticipantRequired.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantRequired.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ParticipantRequired cannot be constructed from JSON.',
      );
    }
    return ParticipantRequired._(
      valueString: value,
      element: element,
    );
  }

  /// required_
  static final ParticipantRequired required_ = ParticipantRequired._(
    valueString: 'required',
    system: 'http://hl7.org/fhir/ValueSet/participantrequired'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Required'.toFhirString,
  );

  /// optional
  static final ParticipantRequired optional = ParticipantRequired._(
    valueString: 'optional',
    system: 'http://hl7.org/fhir/ValueSet/participantrequired'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Optional'.toFhirString,
  );

  /// information_only
  static final ParticipantRequired information_only = ParticipantRequired._(
    valueString: 'information-only',
    system: 'http://hl7.org/fhir/ValueSet/participantrequired'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Information Only'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ParticipantRequired elementOnly =
      ParticipantRequired._(valueString: '');

  /// List of all enum-like values
  static final List<ParticipantRequired> values = [
    required_,
    optional,
    information_only,
  ];

  /// Clones the current instance
  @override
  ParticipantRequired clone() => ParticipantRequired._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ParticipantRequired withElement(Element? newElement) {
    return ParticipantRequired._(
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
  ParticipantRequired copyWith({
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
        'Invalid input for ParticipantRequired: $newValue',
      );
    }
    return ParticipantRequired._(
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
