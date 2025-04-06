// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of the episode of care.
class EpisodeOfCareStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  EpisodeOfCareStatus._({
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
  factory EpisodeOfCareStatus(
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
    return EpisodeOfCareStatus._(
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

  /// Create empty [EpisodeOfCareStatus] with element only
  factory EpisodeOfCareStatus.empty() => EpisodeOfCareStatus._(valueString: '');

  /// Factory constructor to create [EpisodeOfCareStatus]
  /// from JSON.
  factory EpisodeOfCareStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EpisodeOfCareStatus cannot be constructed from JSON.',
      );
    }
    return EpisodeOfCareStatus._(
      valueString: value,
      element: element,
    );
  }

  /// planned
  static final EpisodeOfCareStatus planned = EpisodeOfCareStatus._(
    valueString: 'planned',
    system: 'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Planned'.toFhirString,
  );

  /// waitlist
  static final EpisodeOfCareStatus waitlist = EpisodeOfCareStatus._(
    valueString: 'waitlist',
    system: 'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Waitlist'.toFhirString,
  );

  /// active
  static final EpisodeOfCareStatus active = EpisodeOfCareStatus._(
    valueString: 'active',
    system: 'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Active'.toFhirString,
  );

  /// onhold
  static final EpisodeOfCareStatus onhold = EpisodeOfCareStatus._(
    valueString: 'onhold',
    system: 'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'On Hold'.toFhirString,
  );

  /// finished
  static final EpisodeOfCareStatus finished = EpisodeOfCareStatus._(
    valueString: 'finished',
    system: 'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Finished'.toFhirString,
  );

  /// cancelled
  static final EpisodeOfCareStatus cancelled = EpisodeOfCareStatus._(
    valueString: 'cancelled',
    system: 'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Cancelled'.toFhirString,
  );

  /// entered_in_error
  static final EpisodeOfCareStatus entered_in_error = EpisodeOfCareStatus._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/episode-of-care-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final EpisodeOfCareStatus elementOnly =
      EpisodeOfCareStatus._(valueString: '');

  /// List of all enum-like values
  static final List<EpisodeOfCareStatus> values = [
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
  EpisodeOfCareStatus clone() => EpisodeOfCareStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EpisodeOfCareStatus withElement(Element? newElement) {
    return EpisodeOfCareStatus._(
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
  EpisodeOfCareStatus copyWith({
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
        'Invalid input for EpisodeOfCareStatus: $newValue',
      );
    }
    return EpisodeOfCareStatus._(
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
