// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to code the format of the display string.
class ContributorRole extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ContributorRole._(super.value, [super.element]);

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
    return ContributorRole._(value, element);
  }

  /// publisher
  static final ContributorRole publisher = ContributorRole._(
    'publisher',
  );

  /// author
  static final ContributorRole author = ContributorRole._(
    'author',
  );

  /// reviewer
  static final ContributorRole reviewer = ContributorRole._(
    'reviewer',
  );

  /// endorser
  static final ContributorRole endorser = ContributorRole._(
    'endorser',
  );

  /// editor
  static final ContributorRole editor = ContributorRole._(
    'editor',
  );

  /// informant
  static final ContributorRole informant = ContributorRole._(
    'informant',
  );

  /// funder
  static final ContributorRole funder = ContributorRole._(
    'funder',
  );

  /// For instances where an Element is present but not value

  static final ContributorRole elementOnly = ContributorRole._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ContributorRole setElement(
    String name,
    dynamic elementValue,
  ) {
    return ContributorRole._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ContributorRole withElement(Element? newElement) {
    return ContributorRole._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ContributorRole._(
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
