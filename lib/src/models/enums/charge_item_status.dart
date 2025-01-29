// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of a ChargeItem.
class ChargeItemStatus extends FhirCode {
  // Private constructor for internal use (like enum)
  ChargeItemStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [ChargeItemStatus] from JSON.
  factory ChargeItemStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChargeItemStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ChargeItemStatus cannot be constructed from JSON.',
      );
    }
    return ChargeItemStatus._(
      value,
      element: element,
    );
  }

  /// planned
  static final ChargeItemStatus planned = ChargeItemStatus._(
    'planned',
  );

  /// billable
  static final ChargeItemStatus billable = ChargeItemStatus._(
    'billable',
  );

  /// not_billable
  static final ChargeItemStatus not_billable = ChargeItemStatus._(
    'not-billable',
  );

  /// aborted
  static final ChargeItemStatus aborted = ChargeItemStatus._(
    'aborted',
  );

  /// billed
  static final ChargeItemStatus billed = ChargeItemStatus._(
    'billed',
  );

  /// entered_in_error
  static final ChargeItemStatus entered_in_error = ChargeItemStatus._(
    'entered-in-error',
  );

  /// unknown
  static final ChargeItemStatus unknown = ChargeItemStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final ChargeItemStatus elementOnly = ChargeItemStatus._('');

  /// List of all enum-like values
  static final List<ChargeItemStatus> values = [
    planned,
    billable,
    not_billable,
    aborted,
    billed,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  ChargeItemStatus clone() => ChargeItemStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ChargeItemStatus withElement(Element? newElement) {
    return ChargeItemStatus._(
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
  ChargeItemStatus copyWith({
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
    return ChargeItemStatus._(
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
