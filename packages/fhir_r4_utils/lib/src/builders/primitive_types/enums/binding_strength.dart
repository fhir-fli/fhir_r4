// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Indication of the degree of conformance expectations associated with a
/// binding.
class BindingStrengthBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  BindingStrengthBuilder._({
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
    return BindingStrengthBuilder._(
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

  /// Create empty [BindingStrengthBuilder] with element only
  factory BindingStrengthBuilder.empty() =>
      BindingStrengthBuilder._(valueString: '');

  /// Factory constructor to create [BindingStrengthBuilder]
  /// from JSON.
  factory BindingStrengthBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BindingStrengthBuilder.elementOnly.withElement(element);
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

  /// required_
  static BindingStrengthBuilder required_ = BindingStrengthBuilder._(
    valueString: 'required',
    system: 'http://hl7.org/fhir/ValueSet/binding-strength'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Required'.toFhirStringBuilder,
  );

  /// extensible
  static BindingStrengthBuilder extensible = BindingStrengthBuilder._(
    valueString: 'extensible',
    system: 'http://hl7.org/fhir/ValueSet/binding-strength'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Extensible'.toFhirStringBuilder,
  );

  /// preferred
  static BindingStrengthBuilder preferred = BindingStrengthBuilder._(
    valueString: 'preferred',
    system: 'http://hl7.org/fhir/ValueSet/binding-strength'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Preferred'.toFhirStringBuilder,
  );

  /// example
  static BindingStrengthBuilder example = BindingStrengthBuilder._(
    valueString: 'example',
    system: 'http://hl7.org/fhir/ValueSet/binding-strength'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Example'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static BindingStrengthBuilder elementOnly =
      BindingStrengthBuilder._(valueString: '');

  /// List of all enum-like values
  static List<BindingStrengthBuilder> values = [
    required_,
    extensible,
    preferred,
    example,
  ];

  /// Clones the current instance
  @override
  BindingStrengthBuilder clone() => BindingStrengthBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  BindingStrengthBuilder copyWith({
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
      throw ArgumentError(
        'Invalid input for BindingStrength: $newValue',
      );
    }
    return BindingStrengthBuilder._(
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
