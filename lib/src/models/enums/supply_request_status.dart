// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Status of the supply request.
class SupplyRequestStatus extends FhirCode {
  // Private constructor for internal use (like enum)
  SupplyRequestStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [SupplyRequestStatus] from JSON.
  factory SupplyRequestStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SupplyRequestStatus cannot be constructed from JSON.',
      );
    }
    return SupplyRequestStatus._(
      value,
      element: element,
    );
  }

  /// draft
  static final SupplyRequestStatus draft = SupplyRequestStatus._(
    'draft',
  );

  /// active
  static final SupplyRequestStatus active = SupplyRequestStatus._(
    'active',
  );

  /// suspended
  static final SupplyRequestStatus suspended = SupplyRequestStatus._(
    'suspended',
  );

  /// cancelled
  static final SupplyRequestStatus cancelled = SupplyRequestStatus._(
    'cancelled',
  );

  /// completed
  static final SupplyRequestStatus completed = SupplyRequestStatus._(
    'completed',
  );

  /// entered_in_error
  static final SupplyRequestStatus entered_in_error = SupplyRequestStatus._(
    'entered-in-error',
  );

  /// unknown
  static final SupplyRequestStatus unknown = SupplyRequestStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final SupplyRequestStatus elementOnly = SupplyRequestStatus._('');

  /// List of all enum-like values
  static final List<SupplyRequestStatus> values = [
    draft,
    active,
    suspended,
    cancelled,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  SupplyRequestStatus clone() => SupplyRequestStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SupplyRequestStatus withElement(Element? newElement) {
    return SupplyRequestStatus._(
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
  SupplyRequestStatus copyWith({
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
    return SupplyRequestStatus._(
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
