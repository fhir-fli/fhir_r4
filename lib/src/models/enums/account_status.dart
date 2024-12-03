// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether the account is available to be used.
class AccountStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AccountStatus._(super.value, [super.element]);

  /// Factory constructor to create [AccountStatus] from JSON.
  factory AccountStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AccountStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AccountStatus cannot be constructed from JSON.',
      );
    }
    return AccountStatus._(value, element);
  }

  /// active
  static final AccountStatus active = AccountStatus._(
    'active',
  );

  /// inactive
  static final AccountStatus inactive = AccountStatus._(
    'inactive',
  );

  /// entered_in_error
  static final AccountStatus entered_in_error = AccountStatus._(
    'entered-in-error',
  );

  /// on_hold
  static final AccountStatus on_hold = AccountStatus._(
    'on-hold',
  );

  /// unknown
  static final AccountStatus unknown = AccountStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final AccountStatus elementOnly = AccountStatus._('');

  /// List of all enum-like values
  static final List<AccountStatus> values = [
    active,
    inactive,
    entered_in_error,
    on_hold,
    unknown,
  ];

  /// Clones the current instance
  @override
  AccountStatus clone() => AccountStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  AccountStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return AccountStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  AccountStatus withElement(Element? newElement) {
    return AccountStatus._(value, newElement);
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
  AccountStatus copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AccountStatus._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
