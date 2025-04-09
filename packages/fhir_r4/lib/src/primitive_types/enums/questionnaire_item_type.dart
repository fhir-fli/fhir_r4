// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for QuestionnaireItemType
enum QuestionnaireItemTypeEnum {
  /// group
  group,

  /// display
  display_,

  /// question
  question,

  /// boolean
  boolean,

  /// decimal
  decimal,

  /// integer
  integer,

  /// date
  date,

  /// dateTime
  dateTime,

  /// time
  time,

  /// string
  string,

  /// text
  text,

  /// url
  url,

  /// choice
  choice,

  /// open-choice
  openChoice,

  /// attachment
  attachment,

  /// reference
  reference,

  /// quantity
  quantity,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case QuestionnaireItemTypeEnum.group:
        return 'group';
      case QuestionnaireItemTypeEnum.display_:
        return 'display';
      case QuestionnaireItemTypeEnum.question:
        return 'question';
      case QuestionnaireItemTypeEnum.boolean:
        return 'boolean';
      case QuestionnaireItemTypeEnum.decimal:
        return 'decimal';
      case QuestionnaireItemTypeEnum.integer:
        return 'integer';
      case QuestionnaireItemTypeEnum.date:
        return 'date';
      case QuestionnaireItemTypeEnum.dateTime:
        return 'dateTime';
      case QuestionnaireItemTypeEnum.time:
        return 'time';
      case QuestionnaireItemTypeEnum.string:
        return 'string';
      case QuestionnaireItemTypeEnum.text:
        return 'text';
      case QuestionnaireItemTypeEnum.url:
        return 'url';
      case QuestionnaireItemTypeEnum.choice:
        return 'choice';
      case QuestionnaireItemTypeEnum.openChoice:
        return 'open-choice';
      case QuestionnaireItemTypeEnum.attachment:
        return 'attachment';
      case QuestionnaireItemTypeEnum.reference:
        return 'reference';
      case QuestionnaireItemTypeEnum.quantity:
        return 'quantity';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static QuestionnaireItemTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return QuestionnaireItemTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static QuestionnaireItemTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'group':
        return QuestionnaireItemTypeEnum.group;
      case 'display':
        return QuestionnaireItemTypeEnum.display_;
      case 'question':
        return QuestionnaireItemTypeEnum.question;
      case 'boolean':
        return QuestionnaireItemTypeEnum.boolean;
      case 'decimal':
        return QuestionnaireItemTypeEnum.decimal;
      case 'integer':
        return QuestionnaireItemTypeEnum.integer;
      case 'date':
        return QuestionnaireItemTypeEnum.date;
      case 'dateTime':
        return QuestionnaireItemTypeEnum.dateTime;
      case 'time':
        return QuestionnaireItemTypeEnum.time;
      case 'string':
        return QuestionnaireItemTypeEnum.string;
      case 'text':
        return QuestionnaireItemTypeEnum.text;
      case 'url':
        return QuestionnaireItemTypeEnum.url;
      case 'choice':
        return QuestionnaireItemTypeEnum.choice;
      case 'open-choice':
        return QuestionnaireItemTypeEnum.openChoice;
      case 'attachment':
        return QuestionnaireItemTypeEnum.attachment;
      case 'reference':
        return QuestionnaireItemTypeEnum.reference;
      case 'quantity':
        return QuestionnaireItemTypeEnum.quantity;
    }
    return null;
  }
}

/// Distinguishes groups from questions and display text and indicates data
/// type for questions.
class QuestionnaireItemType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const QuestionnaireItemType._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory QuestionnaireItemType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = QuestionnaireItemTypeEnum.fromString(valueString);
    return QuestionnaireItemType._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [QuestionnaireItemType]
  /// from JSON.
  factory QuestionnaireItemType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = QuestionnaireItemTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuestionnaireItemType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'QuestionnaireItemType cannot be constructed from JSON.',
      );
    }
    return QuestionnaireItemType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for QuestionnaireItemType
  final QuestionnaireItemTypeEnum? valueEnum;

  /// group
  static const QuestionnaireItemType group = QuestionnaireItemType._(
    valueString: 'group',
    valueEnum: QuestionnaireItemTypeEnum.group,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Group',
    ),
  );

  /// display_
  static const QuestionnaireItemType display_ = QuestionnaireItemType._(
    valueString: 'display',
    valueEnum: QuestionnaireItemTypeEnum.display_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Display',
    ),
  );

  /// question
  static const QuestionnaireItemType question = QuestionnaireItemType._(
    valueString: 'question',
    valueEnum: QuestionnaireItemTypeEnum.question,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Question',
    ),
  );

  /// boolean
  static const QuestionnaireItemType boolean = QuestionnaireItemType._(
    valueString: 'boolean',
    valueEnum: QuestionnaireItemTypeEnum.boolean,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Boolean',
    ),
  );

  /// decimal
  static const QuestionnaireItemType decimal = QuestionnaireItemType._(
    valueString: 'decimal',
    valueEnum: QuestionnaireItemTypeEnum.decimal,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Decimal',
    ),
  );

  /// integer
  static const QuestionnaireItemType integer = QuestionnaireItemType._(
    valueString: 'integer',
    valueEnum: QuestionnaireItemTypeEnum.integer,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Integer',
    ),
  );

  /// date
  static const QuestionnaireItemType date = QuestionnaireItemType._(
    valueString: 'date',
    valueEnum: QuestionnaireItemTypeEnum.date,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Date',
    ),
  );

  /// dateTime
  static const QuestionnaireItemType dateTime = QuestionnaireItemType._(
    valueString: 'dateTime',
    valueEnum: QuestionnaireItemTypeEnum.dateTime,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Date Time',
    ),
  );

  /// time
  static const QuestionnaireItemType time = QuestionnaireItemType._(
    valueString: 'time',
    valueEnum: QuestionnaireItemTypeEnum.time,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Time',
    ),
  );

  /// string
  static const QuestionnaireItemType string = QuestionnaireItemType._(
    valueString: 'string',
    valueEnum: QuestionnaireItemTypeEnum.string,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'String',
    ),
  );

  /// text
  static const QuestionnaireItemType text = QuestionnaireItemType._(
    valueString: 'text',
    valueEnum: QuestionnaireItemTypeEnum.text,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Text',
    ),
  );

  /// url
  static const QuestionnaireItemType url = QuestionnaireItemType._(
    valueString: 'url',
    valueEnum: QuestionnaireItemTypeEnum.url,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Url',
    ),
  );

  /// choice
  static const QuestionnaireItemType choice = QuestionnaireItemType._(
    valueString: 'choice',
    valueEnum: QuestionnaireItemTypeEnum.choice,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Choice',
    ),
  );

  /// open_choice
  static const QuestionnaireItemType openChoice = QuestionnaireItemType._(
    valueString: 'open-choice',
    valueEnum: QuestionnaireItemTypeEnum.openChoice,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Open Choice',
    ),
  );

  /// attachment
  static const QuestionnaireItemType attachment = QuestionnaireItemType._(
    valueString: 'attachment',
    valueEnum: QuestionnaireItemTypeEnum.attachment,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Attachment',
    ),
  );

  /// reference
  static const QuestionnaireItemType reference = QuestionnaireItemType._(
    valueString: 'reference',
    valueEnum: QuestionnaireItemTypeEnum.reference,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Reference',
    ),
  );

  /// quantity
  static const QuestionnaireItemType quantity = QuestionnaireItemType._(
    valueString: 'quantity',
    valueEnum: QuestionnaireItemTypeEnum.quantity,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/item-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Quantity',
    ),
  );

  /// List of all enum-like values
  static final List<QuestionnaireItemType> values = [
    group,
    display_,
    question,
    boolean,
    decimal,
    integer,
    date,
    dateTime,
    time,
    string,
    text,
    url,
    choice,
    openChoice,
    attachment,
    reference,
    quantity,
  ];

  /// Returns the enum value with an element attached
  QuestionnaireItemType withElement(Element? newElement) {
    return QuestionnaireItemType._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  @override
  QuestionnaireItemType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  QuestionnaireItemTypeCopyWithImpl<QuestionnaireItemType> get copyWith =>
      QuestionnaireItemTypeCopyWithImpl<QuestionnaireItemType>(
        this,
        (v) => v as QuestionnaireItemType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class QuestionnaireItemTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  QuestionnaireItemTypeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      QuestionnaireItemType(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
