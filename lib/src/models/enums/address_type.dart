// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The type of an address (physical / postal).
class AddressType extends FhirCode {
  // Private constructor for internal use (like enum)
  AddressType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [AddressType] from JSON.
  factory AddressType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AddressType cannot be constructed from JSON.',
      );
    }
    return AddressType._(
      value,
      element: element,
    );
  }

  /// postal
  static final AddressType postal = AddressType._(
    'postal',
  );

  /// physical
  static final AddressType physical = AddressType._(
    'physical',
  );

  /// both
  static final AddressType both = AddressType._(
    'both',
  );

  /// For instances where an Element is present but not value

  static final AddressType elementOnly = AddressType._('');

  /// List of all enum-like values
  static final List<AddressType> values = [
    postal,
    physical,
    both,
  ];

  /// Clones the current instance
  @override
  AddressType clone() => AddressType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AddressType withElement(Element? newElement) {
    return AddressType._(
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
  AddressType copyWith({
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
    return AddressType._(
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
