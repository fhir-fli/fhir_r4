// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// An example value set of Codified order entry details concepts. These concepts only make sense in the context of what is being ordered. This example is for a patient ventilation order
class ServiceRequestOrderDetailsCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ServiceRequestOrderDetailsCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ServiceRequestOrderDetailsCodes] from JSON.
  factory ServiceRequestOrderDetailsCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceRequestOrderDetailsCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ServiceRequestOrderDetailsCodes cannot be constructed from JSON.',
      );
    }
    return ServiceRequestOrderDetailsCodes._(value, element: element);
  }

  /// value47545007
  static final ServiceRequestOrderDetailsCodes value47545007 =
      ServiceRequestOrderDetailsCodes._(
    '47545007',
  );

  /// value286812008
  static final ServiceRequestOrderDetailsCodes value286812008 =
      ServiceRequestOrderDetailsCodes._(
    '286812008',
  );

  /// value243144002
  static final ServiceRequestOrderDetailsCodes value243144002 =
      ServiceRequestOrderDetailsCodes._(
    '243144002',
  );

  /// value243150007
  static final ServiceRequestOrderDetailsCodes value243150007 =
      ServiceRequestOrderDetailsCodes._(
    '243150007',
  );

  /// value59427005
  static final ServiceRequestOrderDetailsCodes value59427005 =
      ServiceRequestOrderDetailsCodes._(
    '59427005',
  );

  /// For instances where an Element is present but not value

  static final ServiceRequestOrderDetailsCodes elementOnly =
      ServiceRequestOrderDetailsCodes._('');

  /// List of all enum-like values
  static final List<ServiceRequestOrderDetailsCodes> values = [
    value47545007,
    value286812008,
    value243144002,
    value243150007,
    value59427005,
  ];

  /// Clones the current instance
  @override
  ServiceRequestOrderDetailsCodes clone() => ServiceRequestOrderDetailsCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ServiceRequestOrderDetailsCodes withElement(Element? newElement) {
    return ServiceRequestOrderDetailsCodes._(
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
  ServiceRequestOrderDetailsCodes copyWith({
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
    return ServiceRequestOrderDetailsCodes._(
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
