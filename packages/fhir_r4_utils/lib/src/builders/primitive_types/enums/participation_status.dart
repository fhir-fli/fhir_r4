// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The Participation status of an appointment.
class ParticipationStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ParticipationStatusBuilder._({
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
  factory ParticipationStatusBuilder(
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
    return ParticipationStatusBuilder._(
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

  /// Create empty [ParticipationStatusBuilder] with element only
  factory ParticipationStatusBuilder.empty() =>
      ParticipationStatusBuilder._(valueString: '');

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
      valueString: value,
      element: element,
    );
  }

  /// accepted
  static ParticipationStatusBuilder accepted = ParticipationStatusBuilder._(
    valueString: 'accepted',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Accepted'.toFhirStringBuilder,
  );

  /// declined
  static ParticipationStatusBuilder declined = ParticipationStatusBuilder._(
    valueString: 'declined',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Declined'.toFhirStringBuilder,
  );

  /// tentative
  static ParticipationStatusBuilder tentative = ParticipationStatusBuilder._(
    valueString: 'tentative',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Tentative'.toFhirStringBuilder,
  );

  /// needs_action
  static ParticipationStatusBuilder needs_action = ParticipationStatusBuilder._(
    valueString: 'needs-action',
    system: 'http://hl7.org/fhir/ValueSet/participationstatus'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Needs Action'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ParticipationStatusBuilder elementOnly =
      ParticipationStatusBuilder._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ParticipationStatusBuilder withElement(ElementBuilder? newElement) {
    return ParticipationStatusBuilder._(
        valueString: valueString, element: newElement,);
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
  ParticipationStatusBuilder copyWith({
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
      throw ArgumentError('Invalid input for ParticipationStatus: $newValue');
    }
    return ParticipationStatusBuilder._(
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
