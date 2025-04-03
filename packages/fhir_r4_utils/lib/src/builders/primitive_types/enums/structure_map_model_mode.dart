// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How the referenced structure is used in this mapping.
class StructureMapModelModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapModelModeBuilder._({
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
  factory StructureMapModelModeBuilder(
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
    return StructureMapModelModeBuilder._(
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

  /// Create empty [StructureMapModelModeBuilder] with element only
  factory StructureMapModelModeBuilder.empty() =>
      StructureMapModelModeBuilder._(valueString: '');

  /// Factory constructor to create [StructureMapModelModeBuilder]
  /// from JSON.
  factory StructureMapModelModeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapModelModeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapModelModeBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapModelModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// source
  static StructureMapModelModeBuilder source = StructureMapModelModeBuilder._(
    valueString: 'source',
    system: 'http://hl7.org/fhir/ValueSet/map-model-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Source Structure Definition'.toFhirStringBuilder,
  );

  /// queried
  static StructureMapModelModeBuilder queried = StructureMapModelModeBuilder._(
    valueString: 'queried',
    system: 'http://hl7.org/fhir/ValueSet/map-model-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Queried Structure Definition'.toFhirStringBuilder,
  );

  /// target
  static StructureMapModelModeBuilder target = StructureMapModelModeBuilder._(
    valueString: 'target',
    system: 'http://hl7.org/fhir/ValueSet/map-model-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Target Structure Definition'.toFhirStringBuilder,
  );

  /// produced
  static StructureMapModelModeBuilder produced = StructureMapModelModeBuilder._(
    valueString: 'produced',
    system: 'http://hl7.org/fhir/ValueSet/map-model-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Produced Structure Definition'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static StructureMapModelModeBuilder elementOnly =
      StructureMapModelModeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<StructureMapModelModeBuilder> values = [
    source,
    queried,
    target,
    produced,
  ];

  /// Clones the current instance
  @override
  StructureMapModelModeBuilder clone() => StructureMapModelModeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  StructureMapModelModeBuilder withElement(ElementBuilder? newElement) {
    return StructureMapModelModeBuilder._(
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
  StructureMapModelModeBuilder copyWith({
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
      throw ArgumentError('Invalid input for StructureMapModelMode: $newValue');
    }
    return StructureMapModelModeBuilder._(
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
