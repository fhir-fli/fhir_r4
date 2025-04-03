// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// If field is a list, how to manage the production.
class StructureMapTargetListMode extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  StructureMapTargetListMode._({
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
  factory StructureMapTargetListMode(
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
    return StructureMapTargetListMode._(
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

  /// Create empty [StructureMapTargetListMode] with element only
  factory StructureMapTargetListMode.empty() =>
      StructureMapTargetListMode._(valueString: '');

  /// Factory constructor to create [StructureMapTargetListMode] from JSON.
  factory StructureMapTargetListMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTargetListMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapTargetListMode cannot be constructed from JSON.',
      );
    }
    return StructureMapTargetListMode._(
      valueString: value,
      element: element,
    );
  }

  /// first
  static final StructureMapTargetListMode first = StructureMapTargetListMode._(
    valueString: 'first',
    system: 'http://hl7.org/fhir/ValueSet/map-target-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'First'.toFhirString,
  );

  /// share
  static final StructureMapTargetListMode share = StructureMapTargetListMode._(
    valueString: 'share',
    system: 'http://hl7.org/fhir/ValueSet/map-target-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Share'.toFhirString,
  );

  /// last
  static final StructureMapTargetListMode last = StructureMapTargetListMode._(
    valueString: 'last',
    system: 'http://hl7.org/fhir/ValueSet/map-target-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Last'.toFhirString,
  );

  /// collate
  static final StructureMapTargetListMode collate =
      StructureMapTargetListMode._(
    valueString: 'collate',
    system: 'http://hl7.org/fhir/ValueSet/map-target-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Collate'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final StructureMapTargetListMode elementOnly =
      StructureMapTargetListMode._(valueString: '');

  /// List of all enum-like values
  static final List<StructureMapTargetListMode> values = [
    first,
    share,
    last,
    collate,
  ];

  /// Clones the current instance
  @override
  StructureMapTargetListMode clone() => StructureMapTargetListMode._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureMapTargetListMode withElement(Element? newElement) {
    return StructureMapTargetListMode._(
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
  StructureMapTargetListMode copyWith({
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
          'Invalid input for StructureMapTargetListMode: $newValue');
    }
    return StructureMapTargetListMode._(
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
