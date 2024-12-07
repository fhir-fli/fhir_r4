// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to code the format of the display string.
class ContributorRole extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContributorRole._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ContributorRole] from JSON.
  factory ContributorRole.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorRole.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContributorRole cannot be constructed from JSON.',
      );
    }
    return ContributorRole._(value: value, element: element);
  }

  /// publisher
  static final ContributorRole publisher = ContributorRole._(
    value: 'publisher',
  );

  /// author
  static final ContributorRole author = ContributorRole._(
    value: 'author',
  );

  /// reviewer
  static final ContributorRole reviewer = ContributorRole._(
    value: 'reviewer',
  );

  /// endorser
  static final ContributorRole endorser = ContributorRole._(
    value: 'endorser',
  );

  /// editor
  static final ContributorRole editor = ContributorRole._(
    value: 'editor',
  );

  /// informant
  static final ContributorRole informant = ContributorRole._(
    value: 'informant',
  );

  /// funder
  static final ContributorRole funder = ContributorRole._(
    value: 'funder',
  );

  /// For instances where an Element is present but not value

  static final ContributorRole elementOnly = ContributorRole._(value: '');

  /// List of all enum-like values
  static final List<ContributorRole> values = [
    publisher,
    author,
    reviewer,
    endorser,
    editor,
    informant,
    funder,
  ];

  /// Clones the current instance
  @override
  ContributorRole clone() => ContributorRole._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContributorRole withElement(Element? newElement) {
    return ContributorRole._(value: value, element: newElement);
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
  ContributorRole copyWith({
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
    return ContributorRole._(
      value: newValue ?? value,
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
