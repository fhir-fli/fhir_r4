// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// If this is the default rule set to apply for the source type, or this
/// combination of types.
class StructureMapGroupTypeMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  StructureMapGroupTypeMode._({
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
  factory StructureMapGroupTypeMode(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return StructureMapGroupTypeMode._(
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

  /// Create empty [StructureMapGroupTypeMode] with element only
  factory StructureMapGroupTypeMode.empty() =>
      StructureMapGroupTypeMode._(valueString: '');

  /// Factory constructor to create [StructureMapGroupTypeMode]
  /// from JSON.
  factory StructureMapGroupTypeMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapGroupTypeMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapGroupTypeMode cannot be constructed from JSON.',
      );
    }
    return StructureMapGroupTypeMode._(
      valueString: value,
      element: element,
    );
  }

  /// none
  static final StructureMapGroupTypeMode none = StructureMapGroupTypeMode._(
    valueString: 'none',
    system: 'http://hl7.org/fhir/ValueSet/map-group-type-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not a Default'.toFhirString,
  );

  /// types
  static final StructureMapGroupTypeMode types = StructureMapGroupTypeMode._(
    valueString: 'types',
    system: 'http://hl7.org/fhir/ValueSet/map-group-type-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Default for Type Combination'.toFhirString,
  );

  /// type_and_types
  static final StructureMapGroupTypeMode type_and_types =
      StructureMapGroupTypeMode._(
    valueString: 'type-and-types',
    system: 'http://hl7.org/fhir/ValueSet/map-group-type-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Default for type + combination'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final StructureMapGroupTypeMode elementOnly =
      StructureMapGroupTypeMode._(valueString: '');

  /// List of all enum-like values
  static final List<StructureMapGroupTypeMode> values = [
    none,
    types,
    type_and_types,
  ];

  /// Clones the current instance
  @override
  StructureMapGroupTypeMode clone() => StructureMapGroupTypeMode._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureMapGroupTypeMode withElement(Element? newElement) {
    return StructureMapGroupTypeMode._(
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
  StructureMapGroupTypeMode copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError(
        'Invalid input for StructureMapGroupTypeMode: $newValue',
      );
    }
    return StructureMapGroupTypeMode._(
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
