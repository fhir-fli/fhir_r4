// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to express the reason and specific aspect for the variant title, such as language and specific language.
class TitleType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TitleType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [TitleType] from JSON.
  factory TitleType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TitleType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TitleType cannot be constructed from JSON.',
      );
    }
    return TitleType._(value: value, element: element);
  }

  /// primary
  static final TitleType primary = TitleType._(
    value: 'primary',
  );

  /// official
  static final TitleType official = TitleType._(
    value: 'official',
  );

  /// scientific
  static final TitleType scientific = TitleType._(
    value: 'scientific',
  );

  /// plain_language
  static final TitleType plain_language = TitleType._(
    value: 'plain-language',
  );

  /// subtitle
  static final TitleType subtitle = TitleType._(
    value: 'subtitle',
  );

  /// short_title
  static final TitleType short_title = TitleType._(
    value: 'short-title',
  );

  /// acronym
  static final TitleType acronym = TitleType._(
    value: 'acronym',
  );

  /// earlier_title
  static final TitleType earlier_title = TitleType._(
    value: 'earlier-title',
  );

  /// language
  static final TitleType language = TitleType._(
    value: 'language',
  );

  /// autotranslated
  static final TitleType autotranslated = TitleType._(
    value: 'autotranslated',
  );

  /// human_use
  static final TitleType human_use = TitleType._(
    value: 'human-use',
  );

  /// machine_use
  static final TitleType machine_use = TitleType._(
    value: 'machine-use',
  );

  /// duplicate_uid
  static final TitleType duplicate_uid = TitleType._(
    value: 'duplicate-uid',
  );

  /// For instances where an Element is present but not value

  static final TitleType elementOnly = TitleType._(value: '');

  /// List of all enum-like values
  static final List<TitleType> values = [
    primary,
    official,
    scientific,
    plain_language,
    subtitle,
    short_title,
    acronym,
    earlier_title,
    language,
    autotranslated,
    human_use,
    machine_use,
    duplicate_uid,
  ];

  /// Clones the current instance
  @override
  TitleType clone() => TitleType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  TitleType withElement(Element? newElement) {
    return TitleType._(value: value, element: newElement);
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
  TitleType copyWith({
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
    return TitleType._(
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
