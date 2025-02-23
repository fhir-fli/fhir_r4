// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// If field is a list, how to manage the source.
class StructureMapSourceListMode extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  StructureMapSourceListMode._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [StructureMapSourceListMode] with element only
  factory StructureMapSourceListMode.empty() =>
      StructureMapSourceListMode._('');

  /// Factory constructor to create [StructureMapSourceListMode] from JSON.
  factory StructureMapSourceListMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapSourceListMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapSourceListMode cannot be constructed from JSON.',
      );
    }
    return StructureMapSourceListMode._(
      value,
      element: element,
    );
  }

  /// first
  static final StructureMapSourceListMode first = StructureMapSourceListMode._(
    'first',
    system: 'http://hl7.org/fhir/ValueSet/map-source-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'First'.toFhirString,
  );

  /// not_first
  static final StructureMapSourceListMode not_first =
      StructureMapSourceListMode._(
    'not_first',
    system: 'http://hl7.org/fhir/ValueSet/map-source-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'All but the first'.toFhirString,
  );

  /// last
  static final StructureMapSourceListMode last = StructureMapSourceListMode._(
    'last',
    system: 'http://hl7.org/fhir/ValueSet/map-source-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Last'.toFhirString,
  );

  /// not_last
  static final StructureMapSourceListMode not_last =
      StructureMapSourceListMode._(
    'not_last',
    system: 'http://hl7.org/fhir/ValueSet/map-source-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'All but the last'.toFhirString,
  );

  /// only_one
  static final StructureMapSourceListMode only_one =
      StructureMapSourceListMode._(
    'only_one',
    system: 'http://hl7.org/fhir/ValueSet/map-source-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Enforce only one'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final StructureMapSourceListMode elementOnly =
      StructureMapSourceListMode._('');

  /// List of all enum-like values
  static final List<StructureMapSourceListMode> values = [
    first,
    not_first,
    last,
    not_last,
    only_one,
  ];

  /// Clones the current instance
  @override
  StructureMapSourceListMode clone() => StructureMapSourceListMode._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureMapSourceListMode withElement(Element? newElement) {
    return StructureMapSourceListMode._(
      value,
      element: newElement,
    );
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
  StructureMapSourceListMode copyWith({
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
    return StructureMapSourceListMode._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
