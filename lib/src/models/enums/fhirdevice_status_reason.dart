// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The availability status reason of the device.
class FHIRDeviceStatusReason extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FHIRDeviceStatusReason._(super.value, [super.element]);

  /// Factory constructor to create [FHIRDeviceStatusReason] from JSON.
  factory FHIRDeviceStatusReason.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRDeviceStatusReason.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRDeviceStatusReason cannot be constructed from JSON.',
      );
    }
    return FHIRDeviceStatusReason._(value, element);
  }

  /// online
  static final FHIRDeviceStatusReason online = FHIRDeviceStatusReason._(
    'online',
  );

  /// paused
  static final FHIRDeviceStatusReason paused = FHIRDeviceStatusReason._(
    'paused',
  );

  /// standby
  static final FHIRDeviceStatusReason standby = FHIRDeviceStatusReason._(
    'standby',
  );

  /// offline
  static final FHIRDeviceStatusReason offline = FHIRDeviceStatusReason._(
    'offline',
  );

  /// not_ready
  static final FHIRDeviceStatusReason not_ready = FHIRDeviceStatusReason._(
    'not-ready',
  );

  /// transduc_discon
  static final FHIRDeviceStatusReason transduc_discon =
      FHIRDeviceStatusReason._(
    'transduc-discon',
  );

  /// hw_discon
  static final FHIRDeviceStatusReason hw_discon = FHIRDeviceStatusReason._(
    'hw-discon',
  );

  /// off
  static final FHIRDeviceStatusReason off = FHIRDeviceStatusReason._(
    'off',
  );

  /// For instances where an Element is present but not value

  static final FHIRDeviceStatusReason elementOnly =
      FHIRDeviceStatusReason._('');

  /// List of all enum-like values
  static final List<FHIRDeviceStatusReason> values = [
    online,
    paused,
    standby,
    offline,
    not_ready,
    transduc_discon,
    hw_discon,
    off,
  ];

  /// Clones the current instance
  @override
  FHIRDeviceStatusReason clone() => FHIRDeviceStatusReason._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  FHIRDeviceStatusReason withElement(Element? newElement) {
    return FHIRDeviceStatusReason._(value, newElement);
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
  FHIRDeviceStatusReason copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return FHIRDeviceStatusReason._(
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
