// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Defines organization behavior of a group.
class ActionGroupingBehavior extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  ActionGroupingBehavior._(
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

  /// Create empty [ActionGroupingBehavior] with element only
  factory ActionGroupingBehavior.empty() => ActionGroupingBehavior._('');

  /// Factory constructor to create [ActionGroupingBehavior] from JSON.
  factory ActionGroupingBehavior.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionGroupingBehavior.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionGroupingBehavior cannot be constructed from JSON.',
      );
    }
    return ActionGroupingBehavior._(
      value,
      element: element,
    );
  }

  /// visual_group
  static final ActionGroupingBehavior visual_group = ActionGroupingBehavior._(
    'visual-group',
    system: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Visual Group'.toFhirString,
  );

  /// logical_group
  static final ActionGroupingBehavior logical_group = ActionGroupingBehavior._(
    'logical-group',
    system: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Logical Group'.toFhirString,
  );

  /// sentence_group
  static final ActionGroupingBehavior sentence_group = ActionGroupingBehavior._(
    'sentence-group',
    system: 'http://hl7.org/fhir/ValueSet/action-grouping-behavior'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Sentence Group'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final ActionGroupingBehavior elementOnly =
      ActionGroupingBehavior._('');

  /// List of all enum-like values
  static final List<ActionGroupingBehavior> values = [
    visual_group,
    logical_group,
    sentence_group,
  ];

  /// Clones the current instance
  @override
  ActionGroupingBehavior clone() => ActionGroupingBehavior._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionGroupingBehavior withElement(Element? newElement) {
    return ActionGroupingBehavior._(
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
  ActionGroupingBehavior copyWith({
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
    return ActionGroupingBehavior._(
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
