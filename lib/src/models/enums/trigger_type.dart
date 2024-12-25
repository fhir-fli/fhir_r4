// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of trigger.
class TriggerType extends FhirCode {
  // Private constructor for internal use (like enum)
  TriggerType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [TriggerType] from JSON.
  factory TriggerType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TriggerType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TriggerType cannot be constructed from JSON.',
      );
    }
    return TriggerType._(
      value,
      element: element,
    );
  }

  /// named_event
  static final TriggerType named_event = TriggerType._(
    'named-event',
  );

  /// periodic
  static final TriggerType periodic = TriggerType._(
    'periodic',
  );

  /// data_changed
  static final TriggerType data_changed = TriggerType._(
    'data-changed',
  );

  /// data_added
  static final TriggerType data_added = TriggerType._(
    'data-added',
  );

  /// data_modified
  static final TriggerType data_modified = TriggerType._(
    'data-modified',
  );

  /// data_removed
  static final TriggerType data_removed = TriggerType._(
    'data-removed',
  );

  /// data_accessed
  static final TriggerType data_accessed = TriggerType._(
    'data-accessed',
  );

  /// data_access_ended
  static final TriggerType data_access_ended = TriggerType._(
    'data-access-ended',
  );

  /// For instances where an Element is present but not value

  static final TriggerType elementOnly = TriggerType._('');

  /// List of all enum-like values
  static final List<TriggerType> values = [
    named_event,
    periodic,
    data_changed,
    data_added,
    data_modified,
    data_removed,
    data_accessed,
    data_access_ended,
  ];

  /// Clones the current instance
  @override
  TriggerType clone() => TriggerType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TriggerType withElement(Element? newElement) {
    return TriggerType._(
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
  TriggerType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return TriggerType._(
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
