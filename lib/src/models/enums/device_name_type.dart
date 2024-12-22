// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of name the device is referred by.
class DeviceNameType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  DeviceNameType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [DeviceNameType] from JSON.
  factory DeviceNameType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DeviceNameType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DeviceNameType cannot be constructed from JSON.',
      );
    }
    return DeviceNameType._(
      value,
      element: element,
    );
  }

  /// udi_label_name
  static final DeviceNameType udi_label_name = DeviceNameType._(
    'udi-label-name',
  );

  /// user_friendly_name
  static final DeviceNameType user_friendly_name = DeviceNameType._(
    'user-friendly-name',
  );

  /// patient_reported_name
  static final DeviceNameType patient_reported_name = DeviceNameType._(
    'patient-reported-name',
  );

  /// manufacturer_name
  static final DeviceNameType manufacturer_name = DeviceNameType._(
    'manufacturer-name',
  );

  /// model_name
  static final DeviceNameType model_name = DeviceNameType._(
    'model-name',
  );

  /// other
  static final DeviceNameType other = DeviceNameType._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final DeviceNameType elementOnly = DeviceNameType._('');

  /// List of all enum-like values
  static final List<DeviceNameType> values = [
    udi_label_name,
    user_friendly_name,
    patient_reported_name,
    manufacturer_name,
    model_name,
    other,
  ];

  /// Clones the current instance
  @override
  DeviceNameType clone() => DeviceNameType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DeviceNameType withElement(Element? newElement) {
    return DeviceNameType._(
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
  DeviceNameType copyWith({
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
    return DeviceNameType._(
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
