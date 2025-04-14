// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CompositionAttestationMode
enum CompositionAttestationModeBuilderEnum {
  /// personal
  personal,

  /// professional
  professional,

  /// legal
  legal,

  /// official
  official,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CompositionAttestationModeBuilderEnum.personal:
        return 'personal';
      case CompositionAttestationModeBuilderEnum.professional:
        return 'professional';
      case CompositionAttestationModeBuilderEnum.legal:
        return 'legal';
      case CompositionAttestationModeBuilderEnum.official:
        return 'official';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CompositionAttestationModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CompositionAttestationModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CompositionAttestationModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'personal':
        return CompositionAttestationModeBuilderEnum.personal;
      case 'professional':
        return CompositionAttestationModeBuilderEnum.professional;
      case 'legal':
        return CompositionAttestationModeBuilderEnum.legal;
      case 'official':
        return CompositionAttestationModeBuilderEnum.official;
    }
    return null;
  }
}

/// The way in which a person authenticated a composition.
class CompositionAttestationModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CompositionAttestationModeBuilder._({
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
  factory CompositionAttestationModeBuilder(
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
    final valueEnum = CompositionAttestationModeBuilderEnum.fromString(
      valueString,
    );
    return CompositionAttestationModeBuilder._(
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

  /// Create empty [CompositionAttestationModeBuilder]
  /// with element only
  factory CompositionAttestationModeBuilder.empty() =>
      CompositionAttestationModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CompositionAttestationModeBuilder] from JSON.
  factory CompositionAttestationModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionAttestationModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CompositionAttestationModeBuilder cannot be constructed from JSON.',
      );
    }
    return CompositionAttestationModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CompositionAttestationModeBuilder
  final CompositionAttestationModeBuilderEnum? valueEnum;

  /// personal
  static CompositionAttestationModeBuilder personal =
      CompositionAttestationModeBuilder._(
    valueString: 'personal',
    valueEnum: CompositionAttestationModeBuilderEnum.personal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-attestation-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Personal',
    ),
  );

  /// professional
  static CompositionAttestationModeBuilder professional =
      CompositionAttestationModeBuilder._(
    valueString: 'professional',
    valueEnum: CompositionAttestationModeBuilderEnum.professional,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-attestation-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Professional',
    ),
  );

  /// legal
  static CompositionAttestationModeBuilder legal =
      CompositionAttestationModeBuilder._(
    valueString: 'legal',
    valueEnum: CompositionAttestationModeBuilderEnum.legal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-attestation-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Legal',
    ),
  );

  /// official
  static CompositionAttestationModeBuilder official =
      CompositionAttestationModeBuilder._(
    valueString: 'official',
    valueEnum: CompositionAttestationModeBuilderEnum.official,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/composition-attestation-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Official',
    ),
  );

  /// For instances where an Element is present but not value
  static CompositionAttestationModeBuilder elementOnly =
      CompositionAttestationModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CompositionAttestationModeBuilder> values = [
    personal,
    professional,
    legal,
    official,
  ];

  /// Returns the enum value with an element attached
  CompositionAttestationModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CompositionAttestationModeBuilder._(
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
