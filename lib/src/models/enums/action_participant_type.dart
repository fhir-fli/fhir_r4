// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The type of participant for the action.
class ActionParticipantType extends FhirCode {
  // Private constructor for internal use (like enum)
  ActionParticipantType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [ActionParticipantType] with element only
  factory ActionParticipantType.empty() => ActionParticipantType._('');

  /// Factory constructor to create [ActionParticipantType] from JSON.
  factory ActionParticipantType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ActionParticipantType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ActionParticipantType cannot be constructed from JSON.',
      );
    }
    return ActionParticipantType._(
      value,
      element: element,
    );
  }

  /// patient
  static final ActionParticipantType patient = ActionParticipantType._(
    'patient',
  );

  /// practitioner
  static final ActionParticipantType practitioner = ActionParticipantType._(
    'practitioner',
  );

  /// related_person
  static final ActionParticipantType related_person = ActionParticipantType._(
    'related-person',
  );

  /// device
  static final ActionParticipantType device = ActionParticipantType._(
    'device',
  );

  /// For instances where an Element is present but not value

  static final ActionParticipantType elementOnly = ActionParticipantType._('');

  /// List of all enum-like values
  static final List<ActionParticipantType> values = [
    patient,
    practitioner,
    related_person,
    device,
  ];

  /// Clones the current instance
  @override
  ActionParticipantType clone() => ActionParticipantType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ActionParticipantType withElement(Element? newElement) {
    return ActionParticipantType._(
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
  ActionParticipantType copyWith({
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
    return ActionParticipantType._(
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
