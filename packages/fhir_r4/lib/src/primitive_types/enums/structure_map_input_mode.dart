// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Mode for this instance of data.
class StructureMapInputMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  StructureMapInputMode._({
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
  factory StructureMapInputMode(
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
    return StructureMapInputMode._(
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

  /// Create empty [StructureMapInputMode] with element only
  factory StructureMapInputMode.empty() =>
      StructureMapInputMode._(valueString: '');

  /// Factory constructor to create [StructureMapInputMode]
  /// from JSON.
  factory StructureMapInputMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapInputMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapInputMode cannot be constructed from JSON.',
      );
    }
    return StructureMapInputMode._(
      valueString: value,
      element: element,
    );
  }

  /// source
  static final StructureMapInputMode source = StructureMapInputMode._(
    valueString: 'source',
    system: 'http://hl7.org/fhir/ValueSet/map-input-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Source Instance'.toFhirString,
  );

  /// target
  static final StructureMapInputMode target = StructureMapInputMode._(
    valueString: 'target',
    system: 'http://hl7.org/fhir/ValueSet/map-input-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Target Instance'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final StructureMapInputMode elementOnly =
      StructureMapInputMode._(valueString: '');

  /// List of all enum-like values
  static final List<StructureMapInputMode> values = [
    source,
    target,
  ];

  /// Clones the current instance
  @override
  StructureMapInputMode clone() => StructureMapInputMode._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureMapInputMode withElement(Element? newElement) {
    return StructureMapInputMode._(
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
  StructureMapInputMode copyWith({
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
        'Invalid input for StructureMapInputMode: $newValue',
      );
    }
    return StructureMapInputMode._(
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
