// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The validation status of the target
class Status extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  Status._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [Status] from JSON.
  factory Status.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Status.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'Status cannot be constructed from JSON.',
      );
    }
    return Status._(value, element: element);
  }

  /// attested
  static final Status attested = Status._(
    'attested',
  );

  /// validated
  static final Status validated = Status._(
    'validated',
  );

  /// in_process
  static final Status in_process = Status._(
    'in-process',
  );

  /// req_revalid
  static final Status req_revalid = Status._(
    'req-revalid',
  );

  /// val_fail
  static final Status val_fail = Status._(
    'val-fail',
  );

  /// reval_fail
  static final Status reval_fail = Status._(
    'reval-fail',
  );

  /// For instances where an Element is present but not value

  static final Status elementOnly = Status._('');

  /// List of all enum-like values
  static final List<Status> values = [
    attested,
    validated,
    in_process,
    req_revalid,
    val_fail,
    reval_fail,
  ];

  /// Clones the current instance
  @override
  Status clone() => Status._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  Status withElement(Element? newElement) {
    return Status._(value, element: newElement);
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
  Status copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return Status._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
