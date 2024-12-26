// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A coded concept indicating the current status of the Device Usage.
class DeviceUseStatementStatus extends FhirCode {
  // Private constructor for internal use (like enum)
  DeviceUseStatementStatus._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [DeviceUseStatementStatus] from JSON.
  factory DeviceUseStatementStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceUseStatementStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceUseStatementStatus cannot be constructed from JSON.',
      );
    }
    return DeviceUseStatementStatus._(
      value,
      element: element,
    );
  }

  /// active
  static final DeviceUseStatementStatus active = DeviceUseStatementStatus._(
    'active',
  );

  /// completed
  static final DeviceUseStatementStatus completed = DeviceUseStatementStatus._(
    'completed',
  );

  /// entered_in_error
  static final DeviceUseStatementStatus entered_in_error =
      DeviceUseStatementStatus._(
    'entered-in-error',
  );

  /// intended
  static final DeviceUseStatementStatus intended = DeviceUseStatementStatus._(
    'intended',
  );

  /// stopped
  static final DeviceUseStatementStatus stopped = DeviceUseStatementStatus._(
    'stopped',
  );

  /// on_hold
  static final DeviceUseStatementStatus on_hold = DeviceUseStatementStatus._(
    'on-hold',
  );

  /// For instances where an Element is present but not value

  static final DeviceUseStatementStatus elementOnly =
      DeviceUseStatementStatus._('');

  /// List of all enum-like values
  static final List<DeviceUseStatementStatus> values = [
    active,
    completed,
    entered_in_error,
    intended,
    stopped,
    on_hold,
  ];

  /// Clones the current instance
  @override
  DeviceUseStatementStatus clone() => DeviceUseStatementStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceUseStatementStatus withElement(Element? newElement) {
    return DeviceUseStatementStatus._(
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
  DeviceUseStatementStatus copyWith({
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
    return DeviceUseStatementStatus._(
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
