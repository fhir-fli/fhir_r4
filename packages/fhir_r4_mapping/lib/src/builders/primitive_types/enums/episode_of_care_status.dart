part of '../primitive_types.dart';

/// Actual enum for EpisodeOfCareStatus
enum EpisodeOfCareStatusBuilderEnum {
  /// planned
  planned,

  /// waitlist
  waitlist,

  /// active
  active,

  /// onhold
  onhold,

  /// finished
  finished,

  /// cancelled
  cancelled,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EpisodeOfCareStatusBuilderEnum.planned:
        return 'planned';
      case EpisodeOfCareStatusBuilderEnum.waitlist:
        return 'waitlist';
      case EpisodeOfCareStatusBuilderEnum.active:
        return 'active';
      case EpisodeOfCareStatusBuilderEnum.onhold:
        return 'onhold';
      case EpisodeOfCareStatusBuilderEnum.finished:
        return 'finished';
      case EpisodeOfCareStatusBuilderEnum.cancelled:
        return 'cancelled';
      case EpisodeOfCareStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EpisodeOfCareStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EpisodeOfCareStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EpisodeOfCareStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'planned':
        return EpisodeOfCareStatusBuilderEnum.planned;
      case 'waitlist':
        return EpisodeOfCareStatusBuilderEnum.waitlist;
      case 'active':
        return EpisodeOfCareStatusBuilderEnum.active;
      case 'onhold':
        return EpisodeOfCareStatusBuilderEnum.onhold;
      case 'finished':
        return EpisodeOfCareStatusBuilderEnum.finished;
      case 'cancelled':
        return EpisodeOfCareStatusBuilderEnum.cancelled;
      case 'entered-in-error':
        return EpisodeOfCareStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// The status of the episode of care.
class EpisodeOfCareStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EpisodeOfCareStatusBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = EpisodeOfCareStatusBuilderEnum.fromString(
      valueString,
    );
    return EpisodeOfCareStatusBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [EpisodeOfCareStatusBuilder]
  /// with element only
  factory EpisodeOfCareStatusBuilder.empty() =>
      EpisodeOfCareStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EpisodeOfCareStatusBuilder] from JSON.
  factory EpisodeOfCareStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareStatusBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for EpisodeOfCareStatusBuilder
  final EpisodeOfCareStatusBuilderEnum? valueEnum;

  /// planned
  static EpisodeOfCareStatusBuilder planned = EpisodeOfCareStatusBuilder._(
    valueString: 'planned',
    valueEnum: EpisodeOfCareStatusBuilderEnum.planned,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Planned',
    ),
  );

  /// waitlist
  static EpisodeOfCareStatusBuilder waitlist = EpisodeOfCareStatusBuilder._(
    valueString: 'waitlist',
    valueEnum: EpisodeOfCareStatusBuilderEnum.waitlist,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Waitlist',
    ),
  );

  /// active
  static EpisodeOfCareStatusBuilder active = EpisodeOfCareStatusBuilder._(
    valueString: 'active',
    valueEnum: EpisodeOfCareStatusBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// onhold
  static EpisodeOfCareStatusBuilder onhold = EpisodeOfCareStatusBuilder._(
    valueString: 'onhold',
    valueEnum: EpisodeOfCareStatusBuilderEnum.onhold,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'On Hold',
    ),
  );

  /// finished
  static EpisodeOfCareStatusBuilder finished = EpisodeOfCareStatusBuilder._(
    valueString: 'finished',
    valueEnum: EpisodeOfCareStatusBuilderEnum.finished,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Finished',
    ),
  );

  /// cancelled
  static EpisodeOfCareStatusBuilder cancelled = EpisodeOfCareStatusBuilder._(
    valueString: 'cancelled',
    valueEnum: EpisodeOfCareStatusBuilderEnum.cancelled,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static EpisodeOfCareStatusBuilder enteredInError =
      EpisodeOfCareStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: EpisodeOfCareStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/episode-of-care-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static EpisodeOfCareStatusBuilder elementOnly = EpisodeOfCareStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EpisodeOfCareStatusBuilder> values = [
    planned,
    waitlist,
    active,
    onhold,
    finished,
    cancelled,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  EpisodeOfCareStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EpisodeOfCareStatusBuilder._(
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
}
