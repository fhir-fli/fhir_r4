// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The gender of a person used for administrative purposes.
class AdministrativeGender extends FhirCode {
  // Private constructor for internal use (like enum)
  AdministrativeGender._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  });

  /// Factory constructor to create [AdministrativeGender] from JSON.
  factory AdministrativeGender.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrativeGender.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AdministrativeGender cannot be constructed from JSON.',
      );
    }
    return AdministrativeGender._(
      value,
      element: element,
    );
  }

  /// male
  static final AdministrativeGender male = AdministrativeGender._(
    'male',
  );

  /// female
  static final AdministrativeGender female = AdministrativeGender._(
    'female',
  );

  /// other
  static final AdministrativeGender other = AdministrativeGender._(
    'other',
  );

  /// unknown
  static final AdministrativeGender unknown = AdministrativeGender._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final AdministrativeGender elementOnly = AdministrativeGender._('');

  /// List of all enum-like values
  static final List<AdministrativeGender> values = [
    male,
    female,
    other,
    unknown,
  ];

  /// Clones the current instance
  @override
  AdministrativeGender clone() => AdministrativeGender._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AdministrativeGender withElement(Element? newElement) {
    return AdministrativeGender._(
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
  AdministrativeGender copyWith({
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
    return AdministrativeGender._(
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
