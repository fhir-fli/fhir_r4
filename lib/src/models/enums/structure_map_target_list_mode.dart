// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// If field is a list, how to manage the production.
class StructureMapTargetListMode extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  StructureMapTargetListMode._(
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

  /// Create empty [StructureMapTargetListMode] with element only
  factory StructureMapTargetListMode.empty() =>
      StructureMapTargetListMode._('');

  /// Factory constructor to create [StructureMapTargetListMode] from JSON.
  factory StructureMapTargetListMode.fromJson(
    Map<String, dynamic> json,
  ) {
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
      value,
      element: element,
    );
  }

  /// first
  static final StructureMapTargetListMode first = StructureMapTargetListMode._(
    'first',
    system: 'http://hl7.org/fhir/ValueSet/map-target-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'First'.toFhirString,
  );

  /// share
  static final StructureMapTargetListMode share = StructureMapTargetListMode._(
    'share',
    system: 'http://hl7.org/fhir/ValueSet/map-target-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Share'.toFhirString,
  );

  /// last
  static final StructureMapTargetListMode last = StructureMapTargetListMode._(
    'last',
    system: 'http://hl7.org/fhir/ValueSet/map-target-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Last'.toFhirString,
  );

  /// collate
  static final StructureMapTargetListMode collate =
      StructureMapTargetListMode._(
    'collate',
    system: 'http://hl7.org/fhir/ValueSet/map-target-list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Collate'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final StructureMapTargetListMode elementOnly =
      StructureMapTargetListMode._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  StructureMapTargetListMode withElement(Element? newElement) {
    return StructureMapTargetListMode._(
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
  StructureMapTargetListMode copyWith({
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
    return StructureMapTargetListMode._(
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
