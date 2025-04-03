// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The possible types of variables for exposures or outcomes (E.g.
/// Dichotomous, Continuous, Descriptive).
class VariableTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  VariableTypeBuilder._({
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
  factory VariableTypeBuilder(
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
    return VariableTypeBuilder._(
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

  /// Create empty [VariableTypeBuilder] with element only
  factory VariableTypeBuilder.empty() => VariableTypeBuilder._(valueString: '');

  /// Factory constructor to create [VariableTypeBuilder]
  /// from JSON.
  factory VariableTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VariableTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'VariableTypeBuilder cannot be constructed from JSON.',
      );
    }
    return VariableTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// dichotomous
  static VariableTypeBuilder dichotomous = VariableTypeBuilder._(
    valueString: 'dichotomous',
    system: 'http://hl7.org/fhir/ValueSet/variable-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Dichotomous'.toFhirStringBuilder,
  );

  /// continuous
  static VariableTypeBuilder continuous = VariableTypeBuilder._(
    valueString: 'continuous',
    system: 'http://hl7.org/fhir/ValueSet/variable-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Continuous'.toFhirStringBuilder,
  );

  /// descriptive
  static VariableTypeBuilder descriptive = VariableTypeBuilder._(
    valueString: 'descriptive',
    system: 'http://hl7.org/fhir/ValueSet/variable-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Descriptive'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static VariableTypeBuilder elementOnly =
      VariableTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<VariableTypeBuilder> values = [
    dichotomous,
    continuous,
    descriptive,
  ];

  /// Clones the current instance
  @override
  VariableTypeBuilder clone() => VariableTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  VariableTypeBuilder withElement(ElementBuilder? newElement) {
    return VariableTypeBuilder._(valueString: valueString, element: newElement);
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
  VariableTypeBuilder copyWith({
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
      throw ArgumentError('Invalid input for VariableType: $newValue');
    }
    return VariableTypeBuilder._(
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
