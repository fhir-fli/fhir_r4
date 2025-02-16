// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The type of contributor.
class ContributorType extends FhirCode {
  // Private constructor for internal use (like enum)
  ContributorType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [ContributorType] with element only
  factory ContributorType.empty() => ContributorType._('');

  /// Factory constructor to create [ContributorType] from JSON.
  factory ContributorType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContributorType cannot be constructed from JSON.',
      );
    }
    return ContributorType._(
      value,
      element: element,
    );
  }

  /// author
  static final ContributorType author = ContributorType._(
    'author',
  );

  /// editor
  static final ContributorType editor = ContributorType._(
    'editor',
  );

  /// reviewer
  static final ContributorType reviewer = ContributorType._(
    'reviewer',
  );

  /// endorser
  static final ContributorType endorser = ContributorType._(
    'endorser',
  );

  /// For instances where an Element is present but not value

  static final ContributorType elementOnly = ContributorType._('');

  /// List of all enum-like values
  static final List<ContributorType> values = [
    author,
    editor,
    reviewer,
    endorser,
  ];

  /// Clones the current instance
  @override
  ContributorType clone() => ContributorType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContributorType withElement(Element? newElement) {
    return ContributorType._(
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
  ContributorType copyWith({
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
    return ContributorType._(
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
