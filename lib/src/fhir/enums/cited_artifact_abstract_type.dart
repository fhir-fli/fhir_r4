// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to express the reason and specific aspect for the variant abstract, such as language and specific language.
class CitedArtifactAbstractType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CitedArtifactAbstractType._(super.value, [super.element]);

  /// Factory constructor to create [CitedArtifactAbstractType] from JSON.
  factory CitedArtifactAbstractType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CitedArtifactAbstractType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'CitedArtifactAbstractType cannot be constructed from JSON.');
    }
    return CitedArtifactAbstractType._(value, element);
  }

  /// primary_human_use
  static final CitedArtifactAbstractType primary_human_use =
      CitedArtifactAbstractType._(
    'primary-human-use',
  );

  /// primary_machine_use
  static final CitedArtifactAbstractType primary_machine_use =
      CitedArtifactAbstractType._(
    'primary-machine-use',
  );

  /// truncated
  static final CitedArtifactAbstractType truncated =
      CitedArtifactAbstractType._(
    'truncated',
  );

  /// short_abstract
  static final CitedArtifactAbstractType short_abstract =
      CitedArtifactAbstractType._(
    'short-abstract',
  );

  /// long_abstract
  static final CitedArtifactAbstractType long_abstract =
      CitedArtifactAbstractType._(
    'long-abstract',
  );

  /// plain_language
  static final CitedArtifactAbstractType plain_language =
      CitedArtifactAbstractType._(
    'plain-language',
  );

  /// different_publisher
  static final CitedArtifactAbstractType different_publisher =
      CitedArtifactAbstractType._(
    'different-publisher',
  );

  /// language
  static final CitedArtifactAbstractType language = CitedArtifactAbstractType._(
    'language',
  );

  /// autotranslated
  static final CitedArtifactAbstractType autotranslated =
      CitedArtifactAbstractType._(
    'autotranslated',
  );

  /// duplicate_pmid
  static final CitedArtifactAbstractType duplicate_pmid =
      CitedArtifactAbstractType._(
    'duplicate-pmid',
  );

  /// earlier_abstract
  static final CitedArtifactAbstractType earlier_abstract =
      CitedArtifactAbstractType._(
    'earlier-abstract',
  );

  /// For instances where an Element is present but not value

  static final CitedArtifactAbstractType elementOnly =
      CitedArtifactAbstractType._('');

  /// List of all enum-like values
  static final List<CitedArtifactAbstractType> values = [
    primary_human_use,
    primary_machine_use,
    truncated,
    short_abstract,
    long_abstract,
    plain_language,
    different_publisher,
    language,
    autotranslated,
    duplicate_pmid,
    earlier_abstract,
  ];

  /// Clones the current instance
  @override
  CitedArtifactAbstractType clone() => CitedArtifactAbstractType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CitedArtifactAbstractType setElement(
    String name,
    dynamic elementValue,
  ) {
    return CitedArtifactAbstractType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CitedArtifactAbstractType withElement(Element? newElement) {
    return CitedArtifactAbstractType._(value, newElement);
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
  CitedArtifactAbstractType copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return CitedArtifactAbstractType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
