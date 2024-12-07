// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes a smattering of Network type codes.
class NetworkTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  NetworkTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [NetworkTypeCodes] from JSON.
  factory NetworkTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NetworkTypeCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NetworkTypeCodes cannot be constructed from JSON.',
      );
    }
    return NetworkTypeCodes._(value, element);
  }

  /// in_
  static final NetworkTypeCodes in_ = NetworkTypeCodes._(
    'in',
  );

  /// out
  static final NetworkTypeCodes out = NetworkTypeCodes._(
    'out',
  );

  /// For instances where an Element is present but not value

  static final NetworkTypeCodes elementOnly = NetworkTypeCodes._('');

  /// List of all enum-like values
  static final List<NetworkTypeCodes> values = [
    in_,
    out,
  ];

  /// Clones the current instance
  @override
  NetworkTypeCodes clone() => NetworkTypeCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NetworkTypeCodes withElement(Element? newElement) {
    return NetworkTypeCodes._(value, newElement);
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
  NetworkTypeCodes copyWith({
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
    return NetworkTypeCodes._(
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
