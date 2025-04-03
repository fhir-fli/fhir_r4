// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Whether a reference needs to be version specific or version
/// independent, or whether either can be used.
class ReferenceVersionRulesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ReferenceVersionRulesBuilder._({
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
  factory ReferenceVersionRulesBuilder(
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
    return ReferenceVersionRulesBuilder._(
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

  /// Create empty [ReferenceVersionRulesBuilder] with element only
  factory ReferenceVersionRulesBuilder.empty() =>
      ReferenceVersionRulesBuilder._(valueString: '');

  /// Factory constructor to create [ReferenceVersionRulesBuilder]
  /// from JSON.
  factory ReferenceVersionRulesBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceVersionRulesBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReferenceVersionRulesBuilder cannot be constructed from JSON.',
      );
    }
    return ReferenceVersionRulesBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// either
  static ReferenceVersionRulesBuilder either = ReferenceVersionRulesBuilder._(
    valueString: 'either',
    system:
        'http://hl7.org/fhir/ValueSet/reference-version-rules'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Either Specific or independent'.toFhirStringBuilder,
  );

  /// independent
  static ReferenceVersionRulesBuilder independent =
      ReferenceVersionRulesBuilder._(
    valueString: 'independent',
    system:
        'http://hl7.org/fhir/ValueSet/reference-version-rules'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Version independent'.toFhirStringBuilder,
  );

  /// specific
  static ReferenceVersionRulesBuilder specific = ReferenceVersionRulesBuilder._(
    valueString: 'specific',
    system:
        'http://hl7.org/fhir/ValueSet/reference-version-rules'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Version Specific'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ReferenceVersionRulesBuilder elementOnly =
      ReferenceVersionRulesBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ReferenceVersionRulesBuilder> values = [
    either,
    independent,
    specific,
  ];

  /// Clones the current instance
  @override
  ReferenceVersionRulesBuilder clone() => ReferenceVersionRulesBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ReferenceVersionRulesBuilder withElement(ElementBuilder? newElement) {
    return ReferenceVersionRulesBuilder._(
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
  ReferenceVersionRulesBuilder copyWith({
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
      throw ArgumentError('Invalid input for ReferenceVersionRules: $newValue');
    }
    return ReferenceVersionRulesBuilder._(
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
