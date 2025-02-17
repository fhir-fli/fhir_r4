// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The use of an address.
class AddressUse extends FhirCode {
  // Private constructor for internal use (like enum)
  AddressUse._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [AddressUse] with element only
  factory AddressUse.empty() => AddressUse._('');

  /// Factory constructor to create [AddressUse] from JSON.
  factory AddressUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AddressUse cannot be constructed from JSON.',
      );
    }
    return AddressUse._(
      value,
      element: element,
    );
  }

  /// home
  static final AddressUse home = AddressUse._(
    'home',
  );

  /// work
  static final AddressUse work = AddressUse._(
    'work',
  );

  /// temp
  static final AddressUse temp = AddressUse._(
    'temp',
  );

  /// old
  static final AddressUse old = AddressUse._(
    'old',
  );

  /// billing
  static final AddressUse billing = AddressUse._(
    'billing',
  );

  /// For instances where an Element is present but not value

  static final AddressUse elementOnly = AddressUse._('');

  /// List of all enum-like values
  static final List<AddressUse> values = [
    home,
    work,
    temp,
    old,
    billing,
  ];

  /// Clones the current instance
  @override
  AddressUse clone() => AddressUse._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AddressUse withElement(Element? newElement) {
    return AddressUse._(
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
  AddressUse copyWith({
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
    return AddressUse._(
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
