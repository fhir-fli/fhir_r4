// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ParticipantRequired
enum ParticipantRequiredBuilderEnum {
  /// required
  required_,

  /// optional
  optional,

  /// information-only
  informationOnly,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ParticipantRequiredBuilderEnum.required_:
        return 'required';
      case ParticipantRequiredBuilderEnum.optional:
        return 'optional';
      case ParticipantRequiredBuilderEnum.informationOnly:
        return 'information-only';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ParticipantRequiredBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ParticipantRequiredBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ParticipantRequiredBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'required':
        return ParticipantRequiredBuilderEnum.required_;
      case 'optional':
        return ParticipantRequiredBuilderEnum.optional;
      case 'information-only':
        return ParticipantRequiredBuilderEnum.informationOnly;
    }
    return null;
  }
}

/// Is the Participant required to attend the appointment.
class ParticipantRequiredBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ParticipantRequiredBuilder._({
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
    final valueEnum = ParticipantRequiredBuilderEnum.fromString(
      valueString,
    );
    return ParticipantRequiredBuilder._(
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

  /// Create empty [ParticipantRequiredBuilder]
  /// with element only
  factory ParticipantRequiredBuilder.empty() =>
      ParticipantRequiredBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ParticipantRequiredBuilder] from JSON.
  factory ParticipantRequiredBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantRequiredBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for ParticipantRequiredBuilder
  final ParticipantRequiredBuilderEnum? valueEnum;

  /// required_
  static ParticipantRequiredBuilder required_ = ParticipantRequiredBuilder._(
    valueString: 'required',
    valueEnum: ParticipantRequiredBuilderEnum.required_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/participantrequired',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Required',
    ),
  );

  /// optional
  static ParticipantRequiredBuilder optional = ParticipantRequiredBuilder._(
    valueString: 'optional',
    valueEnum: ParticipantRequiredBuilderEnum.optional,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/participantrequired',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Optional',
    ),
  );

  /// information_only
  static ParticipantRequiredBuilder informationOnly =
      ParticipantRequiredBuilder._(
    valueString: 'information-only',
    valueEnum: ParticipantRequiredBuilderEnum.informationOnly,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/participantrequired',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Information Only',
    ),
  );

  /// For instances where an Element is present but not value
  static ParticipantRequiredBuilder elementOnly = ParticipantRequiredBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ParticipantRequiredBuilder> values = [
    required_,
    optional,
    informationOnly,
  ];

  /// Returns the enum value with an element attached
  ParticipantRequiredBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ParticipantRequiredBuilder._(
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
