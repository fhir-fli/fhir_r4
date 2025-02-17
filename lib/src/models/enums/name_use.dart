// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The use of a human name.
class NameUse extends FhirCode {
  // Private constructor for internal use (like enum)
  NameUse._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [NameUse] with element only
  factory NameUse.empty() => NameUse._('');

  /// Factory constructor to create [NameUse] from JSON.
  factory NameUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NameUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NameUse cannot be constructed from JSON.',
      );
    }
    return NameUse._(
      value,
      element: element,
    );
  }

  /// usual
  static final NameUse usual = NameUse._(
    'usual',
  );

  /// official
  static final NameUse official = NameUse._(
    'official',
  );

  /// temp
  static final NameUse temp = NameUse._(
    'temp',
  );

  /// nickname
  static final NameUse nickname = NameUse._(
    'nickname',
  );

  /// anonymous
  static final NameUse anonymous = NameUse._(
    'anonymous',
  );

  /// old
  static final NameUse old = NameUse._(
    'old',
  );

  /// maiden
  static final NameUse maiden = NameUse._(
    'maiden',
  );

  /// For instances where an Element is present but not value

  static final NameUse elementOnly = NameUse._('');

  /// List of all enum-like values
  static final List<NameUse> values = [
    usual,
    official,
    temp,
    nickname,
    anonymous,
    old,
    maiden,
  ];

  /// Clones the current instance
  @override
  NameUse clone() => NameUse._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NameUse withElement(Element? newElement) {
    return NameUse._(
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
  NameUse copyWith({
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
    return NameUse._(
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
