// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of the episode of care.
class EpisodeOfCareStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EpisodeOfCareStatusBuilder._({
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
  factory EpisodeOfCareStatusBuilder(
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
    return EpisodeOfCareStatusBuilder._(
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

  /// Create empty [EpisodeOfCareStatusBuilder] with element only
  factory EpisodeOfCareStatusBuilder.empty() =>
      EpisodeOfCareStatusBuilder._(valueString: '');

  /// Factory constructor to create [EpisodeOfCareStatusBuilder]
  /// from JSON.
  factory EpisodeOfCareStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EpisodeOfCareStatusBuilder cannot be constructed from JSON.',
      );
    }
    return EpisodeOfCareStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// planned
  static EpisodeOfCareStatusBuilder planned = EpisodeOfCareStatusBuilder._(
    valueString: 'planned',
    system:
        'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Planned'.toFhirStringBuilder,
  );

  /// waitlist
  static EpisodeOfCareStatusBuilder waitlist = EpisodeOfCareStatusBuilder._(
    valueString: 'waitlist',
    system:
        'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Waitlist'.toFhirStringBuilder,
  );

  /// active
  static EpisodeOfCareStatusBuilder active = EpisodeOfCareStatusBuilder._(
    valueString: 'active',
    system:
        'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Active'.toFhirStringBuilder,
  );

  /// onhold
  static EpisodeOfCareStatusBuilder onhold = EpisodeOfCareStatusBuilder._(
    valueString: 'onhold',
    system:
        'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'On Hold'.toFhirStringBuilder,
  );

  /// finished
  static EpisodeOfCareStatusBuilder finished = EpisodeOfCareStatusBuilder._(
    valueString: 'finished',
    system:
        'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Finished'.toFhirStringBuilder,
  );

  /// cancelled
  static EpisodeOfCareStatusBuilder cancelled = EpisodeOfCareStatusBuilder._(
    valueString: 'cancelled',
    system:
        'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Cancelled'.toFhirStringBuilder,
  );

  /// entered_in_error
  static EpisodeOfCareStatusBuilder entered_in_error =
      EpisodeOfCareStatusBuilder._(
    valueString: 'entered-in-error',
    system:
        'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static EpisodeOfCareStatusBuilder elementOnly =
      EpisodeOfCareStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<EpisodeOfCareStatusBuilder> values = [
    planned,
    waitlist,
    active,
    onhold,
    finished,
    cancelled,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  EpisodeOfCareStatusBuilder clone() => EpisodeOfCareStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  EpisodeOfCareStatusBuilder withElement(ElementBuilder? newElement) {
    return EpisodeOfCareStatusBuilder._(
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
  EpisodeOfCareStatusBuilder copyWith({
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
      throw ArgumentError('Invalid input for EpisodeOfCareStatus: $newValue');
    }
    return EpisodeOfCareStatusBuilder._(
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
