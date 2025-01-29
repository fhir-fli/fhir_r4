// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The type of relationship between reports.
class ReportRelationshipType extends FhirCode {
  // Private constructor for internal use (like enum)
  ReportRelationshipType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [ReportRelationshipType] from JSON.
  factory ReportRelationshipType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReportRelationshipType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReportRelationshipType cannot be constructed from JSON.',
      );
    }
    return ReportRelationshipType._(
      value,
      element: element,
    );
  }

  /// replaces
  static final ReportRelationshipType replaces = ReportRelationshipType._(
    'replaces',
  );

  /// amends
  static final ReportRelationshipType amends = ReportRelationshipType._(
    'amends',
  );

  /// appends
  static final ReportRelationshipType appends = ReportRelationshipType._(
    'appends',
  );

  /// transforms
  static final ReportRelationshipType transforms = ReportRelationshipType._(
    'transforms',
  );

  /// replacedWith
  static final ReportRelationshipType replacedWith = ReportRelationshipType._(
    'replacedWith',
  );

  /// amendedWith
  static final ReportRelationshipType amendedWith = ReportRelationshipType._(
    'amendedWith',
  );

  /// appendedWith
  static final ReportRelationshipType appendedWith = ReportRelationshipType._(
    'appendedWith',
  );

  /// transformedWith
  static final ReportRelationshipType transformedWith =
      ReportRelationshipType._(
    'transformedWith',
  );

  /// For instances where an Element is present but not value

  static final ReportRelationshipType elementOnly =
      ReportRelationshipType._('');

  /// List of all enum-like values
  static final List<ReportRelationshipType> values = [
    replaces,
    amends,
    appends,
    transforms,
    replacedWith,
    amendedWith,
    appendedWith,
    transformedWith,
  ];

  /// Clones the current instance
  @override
  ReportRelationshipType clone() => ReportRelationshipType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ReportRelationshipType withElement(Element? newElement) {
    return ReportRelationshipType._(
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
  ReportRelationshipType copyWith({
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
    return ReportRelationshipType._(
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
