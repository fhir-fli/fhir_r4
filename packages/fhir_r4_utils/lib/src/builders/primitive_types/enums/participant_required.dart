// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Is the Participant required to attend the appointment.
class ParticipantRequiredBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ParticipantRequiredBuilder._({
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
  factory ParticipantRequiredBuilder(
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
    return ParticipantRequiredBuilder._(
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

  /// Create empty [ParticipantRequiredBuilder] with element only
  factory ParticipantRequiredBuilder.empty() =>
      ParticipantRequiredBuilder._(valueString: '');

  /// Factory constructor to create [ParticipantRequiredBuilder]
  /// from JSON.
  factory ParticipantRequiredBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantRequiredBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ParticipantRequiredBuilder cannot be constructed from JSON.',
      );
    }
    return ParticipantRequiredBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// required_
  static ParticipantRequiredBuilder required_ = ParticipantRequiredBuilder._(
    valueString: 'required',
    system: 'http://hl7.org/fhir/ValueSet/participantrequired'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Required'.toFhirStringBuilder,
  );

  /// optional
  static ParticipantRequiredBuilder optional = ParticipantRequiredBuilder._(
    valueString: 'optional',
    system: 'http://hl7.org/fhir/ValueSet/participantrequired'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Optional'.toFhirStringBuilder,
  );

  /// information_only
  static ParticipantRequiredBuilder information_only =
      ParticipantRequiredBuilder._(
    valueString: 'information-only',
    system: 'http://hl7.org/fhir/ValueSet/participantrequired'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Information Only'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ParticipantRequiredBuilder elementOnly =
      ParticipantRequiredBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ParticipantRequiredBuilder> values = [
    required_,
    optional,
    information_only,
  ];

  /// Clones the current instance
  @override
  ParticipantRequiredBuilder clone() => ParticipantRequiredBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ParticipantRequiredBuilder withElement(ElementBuilder? newElement) {
    return ParticipantRequiredBuilder._(
        valueString: valueString, element: newElement);
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
  ParticipantRequiredBuilder copyWith({
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
      throw ArgumentError('Invalid input for ParticipantRequired: $newValue');
    }
    return ParticipantRequiredBuilder._(
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
