part of '../primitive_types.dart';

/// Actual enum for BindingStrength
enum BindingStrengthBuilderEnum {
  /// required
  required_,

  /// extensible
  extensible,

  /// preferred
  preferred,

  /// example
  example,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case BindingStrengthBuilderEnum.required_:
        return 'required';
      case BindingStrengthBuilderEnum.extensible:
        return 'extensible';
      case BindingStrengthBuilderEnum.preferred:
        return 'preferred';
      case BindingStrengthBuilderEnum.example:
        return 'example';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BindingStrengthBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return BindingStrengthBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BindingStrengthBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'required':
        return BindingStrengthBuilderEnum.required_;
      case 'extensible':
        return BindingStrengthBuilderEnum.extensible;
      case 'preferred':
        return BindingStrengthBuilderEnum.preferred;
      case 'example':
        return BindingStrengthBuilderEnum.example;
    }
    return null;
  }
}

/// Indication of the degree of conformance expectations associated with a
/// binding.
class BindingStrengthBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  BindingStrengthBuilder._({
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
  factory BindingStrengthBuilder(
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
    final valueEnum = BindingStrengthBuilderEnum.fromString(
      valueString,
    );
    return BindingStrengthBuilder._(
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

  /// Create empty [BindingStrengthBuilder]
  /// with element only
  factory BindingStrengthBuilder.empty() =>
      BindingStrengthBuilder._(valueString: null);

  /// Factory constructor to create
  /// [BindingStrengthBuilder] from JSON.
  factory BindingStrengthBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BindingStrengthBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BindingStrengthBuilder cannot be constructed from JSON.',
      );
    }
    return BindingStrengthBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for BindingStrengthBuilder
  final BindingStrengthBuilderEnum? valueEnum;

  /// required_
  static BindingStrengthBuilder required_ = BindingStrengthBuilder._(
    valueString: 'required',
    valueEnum: BindingStrengthBuilderEnum.required_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/binding-strength',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Required',
    ),
  );

  /// extensible
  static BindingStrengthBuilder extensible = BindingStrengthBuilder._(
    valueString: 'extensible',
    valueEnum: BindingStrengthBuilderEnum.extensible,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/binding-strength',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Extensible',
    ),
  );

  /// preferred
  static BindingStrengthBuilder preferred = BindingStrengthBuilder._(
    valueString: 'preferred',
    valueEnum: BindingStrengthBuilderEnum.preferred,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/binding-strength',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Preferred',
    ),
  );

  /// example
  static BindingStrengthBuilder example = BindingStrengthBuilder._(
    valueString: 'example',
    valueEnum: BindingStrengthBuilderEnum.example,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/binding-strength',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Example',
    ),
  );

  /// For instances where an Element is present but not value
  static BindingStrengthBuilder elementOnly = BindingStrengthBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<BindingStrengthBuilder> values = [
    required_,
    extensible,
    preferred,
    example,
  ];

  /// Returns the enum value with an element attached
  BindingStrengthBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return BindingStrengthBuilder._(
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
