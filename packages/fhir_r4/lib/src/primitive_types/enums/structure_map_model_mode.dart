// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How the referenced structure is used in this mapping.
class StructureMapModelMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  StructureMapModelMode._({
    required super.validatedValue,
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
  factory StructureMapModelMode(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return StructureMapModelMode._(
      validatedValue: validated,
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

  /// Create empty [StructureMapModelMode] with element only
  factory StructureMapModelMode.empty() =>
      StructureMapModelMode._(validatedValue: '');

  /// Factory constructor to create [StructureMapModelMode] from JSON.
  factory StructureMapModelMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapModelMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapModelMode cannot be constructed from JSON.',
      );
    }
    return StructureMapModelMode._(validatedValue: value, element: element);
  }

  /// source
  static final StructureMapModelMode source = StructureMapModelMode._(
    validatedValue: 'source',
    system: 'http://hl7.org/fhir/ValueSet/map-model-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Source Structure Definition'.toFhirString,
  );

  /// queried
  static final StructureMapModelMode queried = StructureMapModelMode._(
    validatedValue: 'queried',
    system: 'http://hl7.org/fhir/ValueSet/map-model-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Queried Structure Definition'.toFhirString,
  );

  /// target
  static final StructureMapModelMode target = StructureMapModelMode._(
    validatedValue: 'target',
    system: 'http://hl7.org/fhir/ValueSet/map-model-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Target Structure Definition'.toFhirString,
  );

  /// produced
  static final StructureMapModelMode produced = StructureMapModelMode._(
    validatedValue: 'produced',
    system: 'http://hl7.org/fhir/ValueSet/map-model-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Produced Structure Definition'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final StructureMapModelMode elementOnly =
      StructureMapModelMode._(validatedValue: '');

  /// List of all enum-like values
  static final List<StructureMapModelMode> values = [
    source,
    queried,
    target,
    produced,
  ];

  /// Clones the current instance
  @override
  StructureMapModelMode clone() => StructureMapModelMode._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureMapModelMode withElement(Element? newElement) {
    return StructureMapModelMode._(validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  StructureMapModelMode copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return StructureMapModelMode._(
      validatedValue: newValue ?? value,
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
