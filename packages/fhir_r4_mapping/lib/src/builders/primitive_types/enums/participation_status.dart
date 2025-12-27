part of '../primitive_types.dart';

/// Actual enum for ParticipationStatus
enum ParticipationStatusBuilderEnum {
  /// accepted
  accepted,

  /// declined
  declined,

  /// tentative
  tentative,

  /// needs-action
  needsAction,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ParticipationStatusBuilderEnum.accepted:
        return 'accepted';
      case ParticipationStatusBuilderEnum.declined:
        return 'declined';
      case ParticipationStatusBuilderEnum.tentative:
        return 'tentative';
      case ParticipationStatusBuilderEnum.needsAction:
        return 'needs-action';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ParticipationStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ParticipationStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ParticipationStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'accepted':
        return ParticipationStatusBuilderEnum.accepted;
      case 'declined':
        return ParticipationStatusBuilderEnum.declined;
      case 'tentative':
        return ParticipationStatusBuilderEnum.tentative;
      case 'needs-action':
        return ParticipationStatusBuilderEnum.needsAction;
    }
    return null;
  }
}

/// The Participation status of an appointment.
class ParticipationStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ParticipationStatusBuilder._({
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
    final valueEnum = ParticipationStatusBuilderEnum.fromString(
      valueString,
    );
    return ParticipationStatusBuilder._(
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

  /// Create empty [ParticipationStatusBuilder]
  /// with element only
  factory ParticipationStatusBuilder.empty() =>
      ParticipationStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ParticipationStatusBuilder] from JSON.
  factory ParticipationStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipationStatusBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for ParticipationStatusBuilder
  final ParticipationStatusBuilderEnum? valueEnum;

  /// accepted
  static ParticipationStatusBuilder accepted = ParticipationStatusBuilder._(
    valueString: 'accepted',
    valueEnum: ParticipationStatusBuilderEnum.accepted,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/participationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Accepted',
    ),
  );

  /// declined
  static ParticipationStatusBuilder declined = ParticipationStatusBuilder._(
    valueString: 'declined',
    valueEnum: ParticipationStatusBuilderEnum.declined,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/participationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Declined',
    ),
  );

  /// tentative
  static ParticipationStatusBuilder tentative = ParticipationStatusBuilder._(
    valueString: 'tentative',
    valueEnum: ParticipationStatusBuilderEnum.tentative,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/participationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Tentative',
    ),
  );

  /// needs_action
  static ParticipationStatusBuilder needsAction = ParticipationStatusBuilder._(
    valueString: 'needs-action',
    valueEnum: ParticipationStatusBuilderEnum.needsAction,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/participationstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Needs Action',
    ),
  );

  /// For instances where an Element is present but not value
  static ParticipationStatusBuilder elementOnly = ParticipationStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ParticipationStatusBuilder> values = [
    accepted,
    declined,
    tentative,
    needsAction,
  ];

  /// Returns the enum value with an element attached
  ParticipationStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ParticipationStatusBuilder._(
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
