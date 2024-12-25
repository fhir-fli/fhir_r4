// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes to identify how UDI data was entered.
class UDIEntryType extends FhirCode {
  // Private constructor for internal use (like enum)
  UDIEntryType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [UDIEntryType] from JSON.
  factory UDIEntryType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UDIEntryType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'UDIEntryType cannot be constructed from JSON.',
      );
    }
    return UDIEntryType._(
      value,
      element: element,
    );
  }

  /// barcode
  static final UDIEntryType barcode = UDIEntryType._(
    'barcode',
  );

  /// rfid
  static final UDIEntryType rfid = UDIEntryType._(
    'rfid',
  );

  /// manual
  static final UDIEntryType manual = UDIEntryType._(
    'manual',
  );

  /// card
  static final UDIEntryType card = UDIEntryType._(
    'card',
  );

  /// self_reported
  static final UDIEntryType self_reported = UDIEntryType._(
    'self-reported',
  );

  /// unknown
  static final UDIEntryType unknown = UDIEntryType._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final UDIEntryType elementOnly = UDIEntryType._('');

  /// List of all enum-like values
  static final List<UDIEntryType> values = [
    barcode,
    rfid,
    manual,
    card,
    self_reported,
    unknown,
  ];

  /// Clones the current instance
  @override
  UDIEntryType clone() => UDIEntryType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  UDIEntryType withElement(Element? newElement) {
    return UDIEntryType._(
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
  UDIEntryType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return UDIEntryType._(
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
