// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Types of resources that are part of group.
class GroupType extends FhirCode {
  // Private constructor for internal use (like enum)
  GroupType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [GroupType] from JSON.
  factory GroupType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupType cannot be constructed from JSON.',
      );
    }
    return GroupType._(
      value,
      element: element,
    );
  }

  /// person
  static final GroupType person = GroupType._(
    'person',
  );

  /// animal
  static final GroupType animal = GroupType._(
    'animal',
  );

  /// practitioner
  static final GroupType practitioner = GroupType._(
    'practitioner',
  );

  /// device
  static final GroupType device = GroupType._(
    'device',
  );

  /// medication
  static final GroupType medication = GroupType._(
    'medication',
  );

  /// substance
  static final GroupType substance = GroupType._(
    'substance',
  );

  /// For instances where an Element is present but not value

  static final GroupType elementOnly = GroupType._('');

  /// List of all enum-like values
  static final List<GroupType> values = [
    person,
    animal,
    practitioner,
    device,
    medication,
    substance,
  ];

  /// Clones the current instance
  @override
  GroupType clone() => GroupType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GroupType withElement(Element? newElement) {
    return GroupType._(
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
  GroupType copyWith({
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
    return GroupType._(
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
