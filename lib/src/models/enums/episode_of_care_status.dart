// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the episode of care.
class EpisodeOfCareStatus extends FhirCode {
  // Private constructor for internal use (like enum)
  EpisodeOfCareStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [EpisodeOfCareStatus] from JSON.
  factory EpisodeOfCareStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EpisodeOfCareStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EpisodeOfCareStatus cannot be constructed from JSON.',
      );
    }
    return EpisodeOfCareStatus._(
      value,
      element: element,
    );
  }

  /// planned
  static final EpisodeOfCareStatus planned = EpisodeOfCareStatus._(
    'planned',
  );

  /// waitlist
  static final EpisodeOfCareStatus waitlist = EpisodeOfCareStatus._(
    'waitlist',
  );

  /// active
  static final EpisodeOfCareStatus active = EpisodeOfCareStatus._(
    'active',
  );

  /// onhold
  static final EpisodeOfCareStatus onhold = EpisodeOfCareStatus._(
    'onhold',
  );

  /// finished
  static final EpisodeOfCareStatus finished = EpisodeOfCareStatus._(
    'finished',
  );

  /// cancelled
  static final EpisodeOfCareStatus cancelled = EpisodeOfCareStatus._(
    'cancelled',
  );

  /// entered_in_error
  static final EpisodeOfCareStatus entered_in_error = EpisodeOfCareStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final EpisodeOfCareStatus elementOnly = EpisodeOfCareStatus._('');

  /// List of all enum-like values
  static final List<EpisodeOfCareStatus> values = [
    planned,
    waitlist,
    active,
    onhold,
    finished,
    cancelled,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  EpisodeOfCareStatus clone() => EpisodeOfCareStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EpisodeOfCareStatus withElement(Element? newElement) {
    return EpisodeOfCareStatus._(
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
  EpisodeOfCareStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return EpisodeOfCareStatus._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
    );
  }
}
