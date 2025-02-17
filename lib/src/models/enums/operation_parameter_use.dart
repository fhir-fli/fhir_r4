// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Whether an operation parameter is an input or an output parameter.
class OperationParameterUse extends FhirCode {
  // Private constructor for internal use (like enum)
  OperationParameterUse._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [OperationParameterUse] with element only
  factory OperationParameterUse.empty() => OperationParameterUse._('');

  /// Factory constructor to create [OperationParameterUse] from JSON.
  factory OperationParameterUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationParameterUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OperationParameterUse cannot be constructed from JSON.',
      );
    }
    return OperationParameterUse._(
      value,
      element: element,
    );
  }

  /// in_
  static final OperationParameterUse in_ = OperationParameterUse._(
    'in',
  );

  /// out
  static final OperationParameterUse out = OperationParameterUse._(
    'out',
  );

  /// For instances where an Element is present but not value

  static final OperationParameterUse elementOnly = OperationParameterUse._('');

  /// List of all enum-like values
  static final List<OperationParameterUse> values = [
    in_,
    out,
  ];

  /// Clones the current instance
  @override
  OperationParameterUse clone() => OperationParameterUse._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  OperationParameterUse withElement(Element? newElement) {
    return OperationParameterUse._(
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
  OperationParameterUse copyWith({
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
    return OperationParameterUse._(
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
