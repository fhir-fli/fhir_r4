// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../fhir_r4.dart';

part 'general_types.enums.dart';
part 'general_types.freezed.dart';
part 'general_types.g.dart';

/// [Annotation] A  text note which also  contains information about who made
@freezed
class Annotation with DataType, _$Annotation {
  /// [Annotation] A  text note which also  contains information about who made
  const Annotation._();

  /// [Annotation] A  text note which also  contains information about who made
  ///  the statement and when.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [authorReference] The individual responsible for making the annotation.
  ///
  /// [authorString] The individual responsible for making the annotation.
  ///
  /// [authorStringElement] Extensions for authorString
  ///
  /// [time] Indicates when this particular annotation was made.
  ///
  /// [timeElement] Extensions for time
  ///
  /// [text] The text of the annotation in markdown format.
  ///
  /// [textElement] Extensions for text
  const factory Annotation({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [authorReference] The individual responsible for making the annotation.
    Reference? authorReference,

    /// [authorString] The individual responsible for making the annotation.
    String? authorString,

    /// [authorStringElement] Extensions for authorString
    @JsonKey(name: '_authorString') Element? authorStringElement,

    /// [time] Indicates when this particular annotation was made.
    FhirDateTime? time,

    /// [timeElement] Extensions for time
    @JsonKey(name: '_time') Element? timeElement,

    /// [text] The text of the annotation in markdown format.
    FhirMarkdown? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') Element? textElement,
  }) = _Annotation;

  @override
  String get fhirType => 'Annotation';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Annotation.fromYaml(dynamic yaml) => yaml is String
      ? Annotation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Annotation.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Annotation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Annotation.fromJson(Map<String, dynamic> json) =>
      _$AnnotationFromJson(json);

  /// Acts like a constructor, returns a [Annotation], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Annotation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AnnotationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Attachment] For referring to data content defined in other formats.
@freezed
class Attachment with DataType, _$Attachment {
  /// [Attachment] For referring to data content defined in other formats.
  const Attachment._();

  /// [Attachment] For referring to data content defined in other formats.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [contentType] Identifies the type of the data in the attachment and
  /// allows a method to be chosen to interpret or render the data. Includes
  ///  mime type parameters such as charset where appropriate.
  ///
  /// [contentTypeElement] Extensions for contentType
  ///
  /// [language] The human language of the content. The value can be any valid
  ///  value according to BCP 47.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [data] The actual data of the attachment - a sequence of bytes, base64
  ///  encoded.
  ///
  /// [dataElement] Extensions for data
  ///
  /// [url] A location where the data can be accessed.
  ///
  /// [urlElement] Extensions for url
  ///
  /// [size] The number of bytes of data that make up this attachment (before
  ///  base64 encoding, if that is done).
  ///
  /// [sizeElement] Extensions for size
  ///
  /// [hash] The calculated hash of the data using SHA-1. Represented using
  ///  base64.
  ///
  /// [hashElement] Extensions for hash
  ///
  /// [title] A label or set of text to display in place of the data.
  ///
  /// [titleElement] Extensions for title
  ///
  /// [creation] The date that the attachment was first created.
  ///
  /// [creationElement] Extensions for creation
  const factory Attachment({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [contentType] Identifies the type of the data in the attachment and
    /// allows a method to be chosen to interpret or render the data. Includes
    ///  mime type parameters such as charset where appropriate.
    FhirCode? contentType,

    /// [contentTypeElement] Extensions for contentType
    @JsonKey(name: '_contentType') Element? contentTypeElement,

    /// [language] The human language of the content. The value can be any valid
    ///  value according to BCP 47.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') Element? languageElement,

    /// [data] The actual data of the attachment - a sequence of bytes, base64
    ///  encoded.
    FhirBase64Binary? data,

    /// [dataElement] Extensions for data
    @JsonKey(name: '_data') Element? dataElement,

    /// [url] A location where the data can be accessed.
    FhirUrl? url,

    /// [urlElement] Extensions for url
    @JsonKey(name: '_url') Element? urlElement,

    /// [size] The number of bytes of data that make up this attachment (before
    ///  base64 encoding, if that is done).
    FhirUnsignedInt? size,

    /// [sizeElement] Extensions for size
    @JsonKey(name: '_size') Element? sizeElement,

    /// [hash] The calculated hash of the data using SHA-1. Represented using
    ///  base64.
    FhirBase64Binary? hash,

    /// [hashElement] Extensions for hash
    @JsonKey(name: '_hash') Element? hashElement,

    /// [title] A label or set of text to display in place of the data.
    String? title,

    /// [titleElement] Extensions for title
    @JsonKey(name: '_title') Element? titleElement,

    /// [creation] The date that the attachment was first created.
    FhirDateTime? creation,

    /// [creationElement] Extensions for creation
    @JsonKey(name: '_creation') Element? creationElement,
  }) = _Attachment;

  @override
  String get fhirType => 'Attachment';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Attachment.fromYaml(dynamic yaml) => yaml is String
      ? Attachment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Attachment.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Attachment cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  /// Acts like a constructor, returns a [Attachment], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Attachment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AttachmentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Identifier] An identifier - identifies some entity uniquely and
@freezed
class Identifier with DataType, _$Identifier {
  /// [Identifier] An identifier - identifies some entity uniquely and
  const Identifier._();

  /// [Identifier] An identifier - identifies some entity uniquely and
  ///  unambiguously. Typically this is used for business identifiers.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [use] The purpose of this identifier.
  ///
  /// [useElement] Extensions for use
  ///
  /// [type] A coded type for the identifier that can be used to determine
  ///  which identifier to use for a specific purpose.
  ///
  /// [system] Establishes the namespace for the value - that is, a URL that
  ///  describes a set values that are unique.
  ///
  /// [systemElement] Extensions for system
  ///
  /// [value] The portion of the identifier typically relevant to the user and
  ///  which is unique within the context of the system.
  ///
  /// [valueElement] Extensions for value
  ///
  /// [period] Time period during which identifier is/was valid for use.
  ///
  /// [assigner] Organization that issued/manages the identifier.
  const factory Identifier({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [use] The purpose of this identifier.
    @JsonKey(unknownEnumValue: IdentifierUse.unknown) IdentifierUse? use,

    /// [useElement] Extensions for use
    @JsonKey(name: '_use') Element? useElement,

    /// [type] A coded type for the identifier that can be used to determine
    ///  which identifier to use for a specific purpose.
    CodeableConcept? type,

    /// [system] Establishes the namespace for the value - that is, a URL that
    ///  describes a set values that are unique.
    FhirUri? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') Element? systemElement,

    /// [value] The portion of the identifier typically relevant to the user and
    ///  which is unique within the context of the system.
    String? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') Element? valueElement,

    /// [period] Time period during which identifier is/was valid for use.
    Period? period,

    /// [assigner] Organization that issued/manages the identifier.
    Reference? assigner,
  }) = _Identifier;

  @override
  String get fhirType => 'Identifier';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Identifier.fromYaml(dynamic yaml) => yaml is String
      ? Identifier.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Identifier.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Identifier cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Identifier.fromJson(Map<String, dynamic> json) =>
      _$IdentifierFromJson(json);

  /// Acts like a constructor, returns a [Identifier], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Identifier.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$IdentifierFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [CodeableConcept] A concept that may be defined by a formal reference to
@freezed
class CodeableConcept with DataType, _$CodeableConcept {
  /// [CodeableConcept] A concept that may be defined by a formal reference to
  const CodeableConcept._();

  /// [CodeableConcept] A concept that may be defined by a formal reference to
  ///  a terminology or ontology or may be provided by text.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [coding] A reference to a code defined by a terminology system.
  ///
  /// [text] A human language representation of the concept as
  /// seen/selected/uttered by the user who entered the data and/or which
  ///  represents the intended meaning of the user.
  ///
  /// [textElement] Extensions for text
  const factory CodeableConcept({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [coding] A reference to a code defined by a terminology system.
    List<Coding>? coding,

    /// [text] A human language representation of the concept as
    /// seen/selected/uttered by the user who entered the data and/or which
    ///  represents the intended meaning of the user.
    String? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') Element? textElement,
  }) = _CodeableConcept;

  @override
  String get fhirType => 'CodeableConcept';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory CodeableConcept.fromYaml(dynamic yaml) => yaml is String
      ? CodeableConcept.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CodeableConcept.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CodeableConcept cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory CodeableConcept.fromJson(Map<String, dynamic> json) =>
      _$CodeableConceptFromJson(json);

  /// Acts like a constructor, returns a [CodeableConcept], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory CodeableConcept.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodeableConceptFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Coding] A reference to a code defined by a terminology system.
@freezed
class Coding with DataType, _$Coding {
  /// [Coding] A reference to a code defined by a terminology system.
  const Coding._();

  /// [Coding] A reference to a code defined by a terminology system.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [system] The identification of the code system that defines the meaning
  ///  of the symbol in the code.
  ///
  /// [systemElement] Extensions for system
  ///
  /// [version] The version of the code system which was used when choosing
  /// this code. Note that a well-maintained code system does not need the
  /// version reported, because the meaning of codes is consistent across
  /// versions. However this cannot consistently be assured, and when the
  /// meaning is not guaranteed to be consistent, the version SHOULD be
  ///  exchanged.
  ///
  /// [versionElement] Extensions for version
  ///
  /// [code] A symbol in syntax defined by the system. The symbol may be a
  /// predefined code or an expression in a syntax defined by the coding system
  ///  (e.g. post-coordination).
  ///
  /// [codeElement] Extensions for code
  ///
  /// [display] A representation of the meaning of the code in the system,
  ///  following the rules of the system.
  ///
  /// [displayElement] Extensions for display
  ///
  /// [userSelected] Indicates that this coding was chosen by a user directly -
  ///  e.g. off a pick list of available items (codes or displays).
  ///
  /// [userSelectedElement] Extensions for userSelected
  const factory Coding({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [system] The identification of the code system that defines the meaning
    ///  of the symbol in the code.
    FhirUri? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') Element? systemElement,

    /// [version] The version of the code system which was used when choosing
    /// this code. Note that a well-maintained code system does not need the
    /// version reported, because the meaning of codes is consistent across
    /// versions. However this cannot consistently be assured, and when the
    /// meaning is not guaranteed to be consistent, the version SHOULD be
    ///  exchanged.
    String? version,

    /// [versionElement] Extensions for version
    @JsonKey(name: '_version') Element? versionElement,

    /// [code] A symbol in syntax defined by the system. The symbol may be a
    /// predefined code or an expression in a syntax defined by the coding system
    ///  (e.g. post-coordination).
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') Element? codeElement,

    /// [display] A representation of the meaning of the code in the system,
    ///  following the rules of the system.
    String? display,

    /// [displayElement] Extensions for display
    @JsonKey(name: '_display') Element? displayElement,

    /// [userSelected] Indicates that this coding was chosen by a user directly -
    ///  e.g. off a pick list of available items (codes or displays).
    FhirBoolean? userSelected,

    /// [userSelectedElement] Extensions for userSelected
    @JsonKey(name: '_userSelected') Element? userSelectedElement,
  }) = _Coding;

  @override
  String get fhirType => 'Coding';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Coding.fromYaml(dynamic yaml) => yaml is String
      ? Coding.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Coding.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Coding cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Coding.fromJson(Map<String, dynamic> json) => _$CodingFromJson(json);

  /// Acts like a constructor, returns a [Coding], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Coding.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CodingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Quantity] A measured amount (or an amount that can potentially be
@freezed
class Quantity with DataType, _$Quantity {
  /// [Quantity] A measured amount (or an amount that can potentially be
  const Quantity._();

  /// [Quantity] A measured amount (or an amount that can potentially be
  /// measured). Note that measured amounts include amounts that are not
  /// precisely quantified, including amounts involving arbitrary units and
  ///  floating currencies.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  ///
  /// [valueElement] Extensions for value
  ///
  /// [comparator] How the value should be understood and represented - whether
  /// the actual value is greater or less than the stated value due to
  /// measurement issues; e.g. if the comparator is "<" , then the real value is
  ///  < stated value.
  ///
  /// [comparatorElement] Extensions for comparator
  ///
  /// [unit] A human-readable form of the unit.
  ///
  /// [unitElement] Extensions for unit
  ///
  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  ///
  /// [systemElement] Extensions for system
  ///
  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  ///
  /// [codeElement] Extensions for code
  const factory Quantity({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [value] The value of the measured amount. The value includes an implicit
    ///  precision in the presentation of the value.
    FhirDecimal? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') Element? valueElement,
    @JsonKey(unknownEnumValue: QuantityComparator.unknown)

    /// [comparator] How the value should be understood and represented - whether
    /// the actual value is greater or less than the stated value due to
    /// measurement issues; e.g. if the comparator is "<" , then the real value is
    ///  < stated value.
    QuantityComparator? comparator,

    /// [comparatorElement] Extensions for comparator
    @JsonKey(name: '_comparator') Element? comparatorElement,

    /// [unit] A human-readable form of the unit.
    String? unit,

    /// [unitElement] Extensions for unit
    @JsonKey(name: '_unit') Element? unitElement,

    /// [system] The identification of the system that provides the coded form of
    ///  the unit.
    FhirUri? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') Element? systemElement,

    /// [code] A computer processable form of the unit in some unit
    ///  representation system.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') Element? codeElement,
  }) = _Quantity;

  @override
  String get fhirType => 'Quantity';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Quantity.fromYaml(dynamic yaml) => yaml is String
      ? Quantity.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Quantity.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Quantity cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Quantity.fromJson(Map<String, dynamic> json) =>
      _$QuantityFromJson(json);

  /// Acts like a constructor, returns a [Quantity], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Quantity.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$QuantityFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Duration] A length of time.
@freezed
class FhirDuration with DataType, _$FhirDuration {
  /// [Duration] A length of time.
  const FhirDuration._();

  /// [Duration] A length of time.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  ///
  /// [valueElement] Extensions for value
  ///
  /// [comparator] How the value should be understood and represented - whether
  /// the actual value is greater or less than the stated value due to
  /// measurement issues; e.g. if the comparator is "<" , then the real value is
  ///  < stated value.
  ///
  /// [comparatorElement] Extensions for comparator
  ///
  /// [unit] A human-readable form of the unit.
  ///
  /// [unitElement] Extensions for unit
  ///
  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  ///
  /// [systemElement] Extensions for system
  ///
  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  ///
  /// [codeElement] Extensions for code
  const factory FhirDuration({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [value] The value of the measured amount. The value includes an implicit
    ///  precision in the presentation of the value.
    FhirDecimal? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') Element? valueElement,
    @JsonKey(unknownEnumValue: DurationComparator.unknown)

    /// [comparator] How the value should be understood and represented - whether
    /// the actual value is greater or less than the stated value due to
    /// measurement issues; e.g. if the comparator is "<" , then the real value is
    ///  < stated value.
    DurationComparator? comparator,

    /// [comparatorElement] Extensions for comparator
    @JsonKey(name: '_comparator') Element? comparatorElement,

    /// [unit] A human-readable form of the unit.
    String? unit,

    /// [unitElement] Extensions for unit
    @JsonKey(name: '_unit') Element? unitElement,

    /// [system] The identification of the system that provides the coded form of
    ///  the unit.
    FhirUri? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') Element? systemElement,

    /// [code] A computer processable form of the unit in some unit
    ///  representation system.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') Element? codeElement,
  }) = _FhirDuration;

  @override
  String get fhirType => 'FhirDuration';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory FhirDuration.fromYaml(dynamic yaml) => yaml is String
      ? FhirDuration.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? FhirDuration.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'FhirDuration cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory FhirDuration.fromJson(Map<String, dynamic> json) =>
      _$FhirDurationFromJson(json);

  /// Acts like a constructor, returns a [FhirDuration], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory FhirDuration.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$FhirDurationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Distance] A length - a value with a unit that is a physical distance.
@freezed
class Distance with DataType, _$Distance {
  /// [Distance] A length - a value with a unit that is a physical distance.
  const Distance._();

  /// [Distance] A length - a value with a unit that is a physical distance.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  ///
  /// [valueElement] Extensions for value
  ///
  /// [comparator] How the value should be understood and represented - whether
  /// the actual value is greater or less than the stated value due to
  /// measurement issues; e.g. if the comparator is "<" , then the real value is
  ///  < stated value.
  ///
  /// [comparatorElement] Extensions for comparator
  ///
  /// [unit] A human-readable form of the unit.
  ///
  /// [unitElement] Extensions for unit
  ///
  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  ///
  /// [systemElement] Extensions for system
  ///
  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  ///
  /// [codeElement] Extensions for code
  const factory Distance({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [value] The value of the measured amount. The value includes an implicit
    ///  precision in the presentation of the value.
    FhirDecimal? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') Element? valueElement,
    @JsonKey(unknownEnumValue: DistanceComparator.unknown)

    /// [comparator] How the value should be understood and represented - whether
    /// the actual value is greater or less than the stated value due to
    /// measurement issues; e.g. if the comparator is "<" , then the real value is
    ///  < stated value.
    DistanceComparator? comparator,

    /// [comparatorElement] Extensions for comparator
    @JsonKey(name: '_comparator') Element? comparatorElement,

    /// [unit] A human-readable form of the unit.
    String? unit,

    /// [unitElement] Extensions for unit
    @JsonKey(name: '_unit') Element? unitElement,

    /// [system] The identification of the system that provides the coded form of
    ///  the unit.
    FhirUri? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') Element? systemElement,

    /// [code] A computer processable form of the unit in some unit
    ///  representation system.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') Element? codeElement,
  }) = _Distance;

  @override
  String get fhirType => 'Distance';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Distance.fromYaml(dynamic yaml) => yaml is String
      ? Distance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Distance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Distance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Distance.fromJson(Map<String, dynamic> json) =>
      _$DistanceFromJson(json);

  /// Acts like a constructor, returns a [Distance], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Distance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$DistanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Count] A measured amount (or an amount that can potentially be
@freezed
class Count with DataType, _$Count {
  /// [Count] A measured amount (or an amount that can potentially be
  const Count._();

  /// [Count] A measured amount (or an amount that can potentially be
  /// measured). Note that measured amounts include amounts that are not
  /// precisely quantified, including amounts involving arbitrary units and
  ///  floating currencies.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  ///
  /// [valueElement] Extensions for value
  ///
  /// [comparator] How the value should be understood and represented - whether
  /// the actual value is greater or less than the stated value due to
  /// measurement issues; e.g. if the comparator is "<" , then the real value is
  ///  < stated value.
  ///
  /// [comparatorElement] Extensions for comparator
  ///
  /// [unit] A human-readable form of the unit.
  ///
  /// [unitElement] Extensions for unit
  ///
  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  ///
  /// [systemElement] Extensions for system
  ///
  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  ///
  /// [codeElement] Extensions for code
  const factory Count({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [value] The value of the measured amount. The value includes an implicit
    ///  precision in the presentation of the value.
    FhirDecimal? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') Element? valueElement,
    @JsonKey(unknownEnumValue: CountComparator.unknown)

    /// [comparator] How the value should be understood and represented - whether
    /// the actual value is greater or less than the stated value due to
    /// measurement issues; e.g. if the comparator is "<" , then the real value is
    ///  < stated value.
    CountComparator? comparator,

    /// [comparatorElement] Extensions for comparator
    @JsonKey(name: '_comparator') Element? comparatorElement,

    /// [unit] A human-readable form of the unit.
    String? unit,

    /// [unitElement] Extensions for unit
    @JsonKey(name: '_unit') Element? unitElement,

    /// [system] The identification of the system that provides the coded form of
    ///  the unit.
    FhirUri? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') Element? systemElement,

    /// [code] A computer processable form of the unit in some unit
    ///  representation system.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') Element? codeElement,
  }) = _Count;

  @override
  String get fhirType => 'Count';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Count.fromYaml(dynamic yaml) => yaml is String
      ? Count.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Count.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Count cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);

  /// Acts like a constructor, returns a [Count], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Count.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CountFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Money] An amount of economic utility in some recognized currency.
@freezed
class Money with DataType, _$Money {
  /// [Money] An amount of economic utility in some recognized currency.
  const Money._();

  /// [Money] An amount of economic utility in some recognized currency.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [value] Numerical value (with implicit precision).
  ///
  /// [valueElement] Extensions for value
  ///
  /// [currency] ISO 4217 Currency Code.
  ///
  /// [currencyElement] Extensions for currency
  const factory Money({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [value] Numerical value (with implicit precision).
    FhirDecimal? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') Element? valueElement,

    /// [currency] ISO 4217 Currency Code.
    FhirCode? currency,

    /// [currencyElement] Extensions for currency
    @JsonKey(name: '_currency') Element? currencyElement,
  }) = _Money;

  @override
  String get fhirType => 'Money';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Money.fromYaml(dynamic yaml) => yaml is String
      ? Money.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Money.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Money cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

  /// Acts like a constructor, returns a [Money], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Money.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MoneyFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Age] A duration of time during which an organism (or a process) has
@freezed
class Age with DataType, _$Age {
  /// [Age] A duration of time during which an organism (or a process) has
  const Age._();

  /// [Age] A duration of time during which an organism (or a process) has
  ///  existed.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  ///
  /// [valueElement] Extensions for value
  ///
  /// [comparator] How the value should be understood and represented - whether
  /// the actual value is greater or less than the stated value due to
  /// measurement issues; e.g. if the comparator is "<" , then the real value is
  ///  < stated value.
  ///
  /// [comparatorElement] Extensions for comparator
  ///
  /// [unit] A human-readable form of the unit.
  ///
  /// [unitElement] Extensions for unit
  ///
  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  ///
  /// [systemElement] Extensions for system
  ///
  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  ///
  /// [codeElement] Extensions for code
  const factory Age({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [value] The value of the measured amount. The value includes an implicit
    ///  precision in the presentation of the value.
    FhirDecimal? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') Element? valueElement,

    /// [comparator] How the value should be understood and represented - whether
    /// the actual value is greater or less than the stated value due to
    /// measurement issues; e.g. if the comparator is "<" , then the real value is
    ///  < stated value.
    @JsonKey(unknownEnumValue: AgeComparator.unknown) AgeComparator? comparator,

    /// [comparatorElement] Extensions for comparator
    @JsonKey(name: '_comparator') Element? comparatorElement,

    /// [unit] A human-readable form of the unit.
    String? unit,

    /// [unitElement] Extensions for unit
    @JsonKey(name: '_unit') Element? unitElement,

    /// [system] The identification of the system that provides the coded form of
    ///  the unit.
    FhirUri? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') Element? systemElement,

    /// [code] A computer processable form of the unit in some unit
    ///  representation system.
    FhirCode? code,

    /// [codeElement] Extensions for code
    @JsonKey(name: '_code') Element? codeElement,
  }) = _Age;

  @override
  String get fhirType => 'Age';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Age.fromYaml(dynamic yaml) => yaml is String
      ? Age.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Age.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError('Age cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);

  /// Acts like a constructor, returns a [Age], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Age.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AgeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Range] A set of ordered Quantities defined by a low and high limit.
@freezed
class Range with DataType, _$Range {
  /// [Range] A set of ordered Quantities defined by a low and high limit.
  const Range._();

  /// [Range] A set of ordered Quantities defined by a low and high limit.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [low] The low limit. The boundary is inclusive.
  ///
  /// [high] The high limit. The boundary is inclusive.
  const factory Range({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [low] The low limit. The boundary is inclusive.
    Quantity? low,

    /// [high] The high limit. The boundary is inclusive.
    Quantity? high,
  }) = _Range;

  @override
  String get fhirType => 'Range';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Range.fromYaml(dynamic yaml) => yaml is String
      ? Range.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Range.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Range cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Range.fromJson(Map<String, dynamic> json) => _$RangeFromJson(json);

  /// Acts like a constructor, returns a [Range], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Range.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RangeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Period] A time period defined by a start and end date and optionally
@freezed
class Period with DataType, _$Period {
  /// [Period] A time period defined by a start and end date and optionally
  const Period._();

  /// [Period] A time period defined by a start and end date and optionally
  ///  time.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [start] The start of the period. The boundary is inclusive.
  ///
  /// [startElement] Extensions for start
  ///
  /// [end] The end of the period. If the end of the period is missing, it
  /// means no end was known or planned at the time the instance was created.
  /// The start may be in the past, and the end date in the future, which means
  ///  that period is expected/planned to end at that time.
  ///
  /// [endElement] Extensions for end
  const factory Period({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [start] The start of the period. The boundary is inclusive.
    FhirDateTime? start,

    /// [startElement] Extensions for start
    @JsonKey(name: '_start') Element? startElement,

    /// [end] The end of the period. If the end of the period is missing, it
    /// means no end was known or planned at the time the instance was created.
    /// The start may be in the past, and the end date in the future, which means
    ///  that period is expected/planned to end at that time.
    FhirDateTime? end,

    /// [endElement] Extensions for end
    @JsonKey(name: '_end') Element? endElement,
  }) = _Period;

  @override
  String get fhirType => 'Period';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Period.fromYaml(dynamic yaml) => yaml is String
      ? Period.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Period.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Period cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Period.fromJson(Map<String, dynamic> json) => _$PeriodFromJson(json);

  /// Acts like a constructor, returns a [Period], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Period.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PeriodFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Ratio] A relationship of two Quantity values - expressed as a numerator
@freezed
class Ratio with DataType, _$Ratio {
  /// [Ratio] A relationship of two Quantity values - expressed as a numerator
  const Ratio._();

  /// [Ratio] A relationship of two Quantity values - expressed as a numerator
  ///  and a denominator.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [numerator] The value of the numerator.
  ///
  /// [denominator] The value of the denominator.
  const factory Ratio({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [numerator] The value of the numerator.
    Quantity? numerator,

    /// [denominator] The value of the denominator.
    Quantity? denominator,
  }) = _Ratio;

  @override
  String get fhirType => 'Ratio';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Ratio.fromYaml(dynamic yaml) => yaml is String
      ? Ratio.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Ratio.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Ratio cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Ratio.fromJson(Map<String, dynamic> json) => _$RatioFromJson(json);

  /// Acts like a constructor, returns a [Ratio], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Ratio.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RatioFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [RatioRangeRange] "A range of ratios expressed as a low and high numerator and a denominator.",
@freezed
class RatioRange with DataType, _$RatioRange {
  /// [RatioRangeRange] "A range of ratios expressed as a low and high numerator and a denominator.",
  const RatioRange._();

  /// [RatioRangeRange] "A range of ratios expressed as a low and high numerator and a denominator.",
  /// [id] "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces."
  /// [extension] "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
  /// [lowNumerator] "The value of the low limit numerator."
  /// [highNumerator] "The value of the high limit numerator."
  /// [denominator] "The value of the denominator."
  const factory RatioRange({
    /// [id] "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces."
    String? id,

    /// [extension] "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [lowNumerator] "The value of the low limit numerator."
    Quantity? lowNumerator,

    /// [highNumerator] "The value of the high limit numerator."
    Quantity? highNumerator,

    /// [denominator] "The value of the denominator."
    Quantity? denominator,
  }) = _RatioRange;

  @override
  String get fhirType => 'RatioRange';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory RatioRange.fromYaml(dynamic yaml) => yaml is String
      ? RatioRange.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? RatioRange.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'RatioRange cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory RatioRange.fromJson(Map<String, dynamic> json) =>
      _$RatioRangeFromJson(json);

  /// Acts like a constructor, returns a [RatioRange], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory RatioRange.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$RatioRangeFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [SampledData] A series of measurements taken by a device, with upper and
@freezed
class SampledData with DataType, _$SampledData {
  /// [SampledData] A series of measurements taken by a device, with upper and
  const SampledData._();

  /// [SampledData] A series of measurements taken by a device, with upper and
  ///  lower limits. There may be more than one dimension in the data.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [origin] The base quantity that a measured value of zero represents. In
  ///  addition, this provides the units of the entire measurement series.
  ///
  /// [period] The length of time between sampling times, measured in
  ///  milliseconds.
  ///
  /// [periodElement] Extensions for period
  ///
  /// [factor] A correction factor that is applied to the sampled data points
  ///  before they are added to the origin.
  ///
  /// [factorElement] Extensions for factor
  ///
  /// [lowerLimit] The lower limit of detection of the measured points. This is
  /// needed if any of the data points have the value "L" (lower than detection
  ///  limit).
  ///
  /// [lowerLimitElement] Extensions for lowerLimit
  ///
  /// [upperLimit] The upper limit of detection of the measured points. This is
  /// needed if any of the data points have the value "U" (higher than detection
  ///  limit).
  ///
  /// [upperLimitElement] Extensions for upperLimit
  ///
  /// [dimensions] The number of sample points at each time point. If this
  /// value is greater than one, then the dimensions will be interlaced - all
  ///  the sample points for a point in time will be recorded at once.
  ///
  /// [dimensionsElement] Extensions for dimensions
  ///
  /// [data] A series of data points which are decimal values separated by a
  /// single space (character u20). The special values "E" (error), "L" (below
  /// detection limit) and "U" (above detection limit) can also be used in place
  ///  of a decimal value.
  ///
  /// [dataElement] Extensions for data
  const factory SampledData({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [origin] The base quantity that a measured value of zero represents. In
    ///  addition, this provides the units of the entire measurement series.
    required Quantity origin,

    /// [period] The length of time between sampling times, measured in
    ///  milliseconds.
    FhirDecimal? period,

    /// [periodElement] Extensions for period
    @JsonKey(name: '_period') Element? periodElement,

    /// [factor] A correction factor that is applied to the sampled data points
    ///  before they are added to the origin.
    FhirDecimal? factor,

    /// [factorElement] Extensions for factor
    @JsonKey(name: '_factor') Element? factorElement,

    /// [lowerLimit] The lower limit of detection of the measured points. This is
    /// needed if any of the data points have the value "L" (lower than detection
    ///  limit).
    FhirDecimal? lowerLimit,

    /// [lowerLimitElement] Extensions for lowerLimit
    @JsonKey(name: '_lowerLimit') Element? lowerLimitElement,

    /// [upperLimit] The upper limit of detection of the measured points. This is
    /// needed if any of the data points have the value "U" (higher than detection
    ///  limit).
    FhirDecimal? upperLimit,

    /// [upperLimitElement] Extensions for upperLimit
    @JsonKey(name: '_upperLimit') Element? upperLimitElement,

    /// [dimensions] The number of sample points at each time point. If this
    /// value is greater than one, then the dimensions will be interlaced - all
    ///  the sample points for a point in time will be recorded at once.
    FhirPositiveInt? dimensions,

    /// [dimensionsElement] Extensions for dimensions
    @JsonKey(name: '_dimensions') Element? dimensionsElement,

    /// [data] A series of data points which are decimal values separated by a
    /// single space (character u20). The special values "E" (error), "L" (below
    /// detection limit) and "U" (above detection limit) can also be used in place
    ///  of a decimal value.
    String? data,

    /// [dataElement] Extensions for data
    @JsonKey(name: '_data') Element? dataElement,
  }) = _SampledData;

  @override
  String get fhirType => 'SampledData';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SampledData.fromYaml(dynamic yaml) => yaml is String
      ? SampledData.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SampledData.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SampledData cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SampledData.fromJson(Map<String, dynamic> json) =>
      _$SampledDataFromJson(json);

  /// Acts like a constructor, returns a [SampledData], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SampledData.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SampledDataFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [Signature] A signature along with supporting context. The signature may
@freezed
class Signature with DataType, _$Signature {
  /// [Signature] A signature along with supporting context. The signature may
  const Signature._();

  /// [Signature] A signature along with supporting context. The signature may
  /// be a digital signature that is cryptographic in nature, or some other
  /// signature acceptable to the domain. This other signature may be as simple
  /// as a graphical image representing a hand-written signature, or a signature
  ///  ceremony Different signature approaches have different utilities.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [type] An indication of the reason that the entity signed this document.
  /// This may be explicitly included as part of the signature information and
  /// can be used when determining accountability for various actions concerning
  ///  the document.
  ///
  /// [when] When the digital signature was signed.
  ///
  /// [whenElement] Extensions for when
  ///
  /// [who] A reference to an application-usable description of the identity
  ///  that signed  (e.g. the signature used their private key).
  ///
  /// [onBehalfOf] A reference to an application-usable description of the
  ///  identity that is represented by the signature.
  ///
  /// [targetFormat] A mime type that indicates the technical format of the
  ///  target resources signed by the signature.
  ///
  /// [targetFormatElement] Extensions for targetFormat
  ///
  /// [sigFormat] A mime type that indicates the technical format of the
  /// signature. Important mime types are application/signature+xml for X ML
  /// DigSig, application/jose for JWS, and image/* for a graphical image of a
  ///  signature, etc.
  ///
  /// [sigFormatElement] Extensions for sigFormat
  ///
  /// [data] The base64 encoding of the Signature content. When signature is
  ///  not recorded electronically this element would be empty.
  ///
  /// [dataElement] Extensions for data
  const factory Signature({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [type] An indication of the reason that the entity signed this document.
    /// This may be explicitly included as part of the signature information and
    /// can be used when determining accountability for various actions concerning
    ///  the document.
    required List<Coding> type,

    /// [when] When the digital signature was signed.
    FhirInstant? when,

    /// [whenElement] Extensions for when
    @JsonKey(name: '_when') Element? whenElement,

    /// [who] A reference to an application-usable description of the identity
    ///  that signed  (e.g. the signature used their private key).
    required Reference who,

    /// [onBehalfOf] A reference to an application-usable description of the
    ///  identity that is represented by the signature.
    Reference? onBehalfOf,

    /// [targetFormat] A mime type that indicates the technical format of the
    ///  target resources signed by the signature.
    FhirCode? targetFormat,

    /// [targetFormatElement] Extensions for targetFormat
    @JsonKey(name: '_targetFormat') Element? targetFormatElement,

    /// [sigFormat] A mime type that indicates the technical format of the
    /// signature. Important mime types are application/signature+xml for X ML
    /// DigSig, application/jose for JWS, and image/* for a graphical image of a
    ///  signature, etc.
    FhirCode? sigFormat,

    /// [sigFormatElement] Extensions for sigFormat
    @JsonKey(name: '_sigFormat') Element? sigFormatElement,

    /// [data] The base64 encoding of the Signature content. When signature is
    ///  not recorded electronically this element would be empty.
    FhirBase64Binary? data,

    /// [dataElement] Extensions for data
    @JsonKey(name: '_data') Element? dataElement,
  }) = _Signature;

  @override
  String get fhirType => 'Signature';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Signature.fromYaml(dynamic yaml) => yaml is String
      ? Signature.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Signature.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Signature cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Signature.fromJson(Map<String, dynamic> json) =>
      _$SignatureFromJson(json);

  /// Acts like a constructor, returns a [Signature], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Signature.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SignatureFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [HumanName] A human's name with the ability to identify parts and usage.
@freezed
class HumanName with DataType, _$HumanName {
  /// [HumanName] A human's name with the ability to identify parts and usage.
  const HumanName._();

  /// [HumanName] A human's name with the ability to identify parts and usage.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [use] Identifies the purpose for this name.
  ///
  /// [useElement] Extensions for use
  ///
  /// [text] Specifies the entire name as it should be displayed e.g. on an
  /// application UI. This may be provided instead of or as well as the specific
  ///  parts.
  ///
  /// [textElement] Extensions for text
  ///
  /// [family] The part of a name that links to the genealogy. In some cultures
  ///  (e.g. Eritrea) the family name of a son is the first name of his father.
  ///
  /// [familyElement] Extensions for family
  ///
  /// [given] Given name.
  ///
  /// [givenElement] Extensions for given
  ///
  /// [prefix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the start
  ///  of the name.
  ///
  /// [prefixElement] Extensions for prefix
  ///
  /// [suffix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the end of
  ///  the name.
  ///
  /// [suffixElement] Extensions for suffix
  ///
  /// [period] Indicates the period of time when this name was valid for the
  ///  named person.
  const factory HumanName({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [use] Identifies the purpose for this name.
    @JsonKey(unknownEnumValue: HumanNameUse.unknown) HumanNameUse? use,

    /// [useElement] Extensions for use
    @JsonKey(name: '_use') Element? useElement,

    /// [text] Specifies the entire name as it should be displayed e.g. on an
    /// application UI. This may be provided instead of or as well as the specific
    ///  parts.
    String? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') Element? textElement,

    /// [family] The part of a name that links to the genealogy. In some cultures
    ///  (e.g. Eritrea) the family name of a son is the first name of his father.
    String? family,

    /// [familyElement] Extensions for family
    @JsonKey(name: '_family') Element? familyElement,

    /// [given] Given name.
    List<String>? given,

    /// [givenElement] Extensions for given
    @JsonKey(name: '_given') List<Element?>? givenElement,

    /// [prefix] Part of the name that is acquired as a title due to academic,
    /// legal, employment or nobility status, etc. and that appears at the start
    ///  of the name.
    List<String>? prefix,

    /// [prefixElement] Extensions for prefix
    @JsonKey(name: '_prefix') List<Element?>? prefixElement,

    /// [suffix] Part of the name that is acquired as a title due to academic,
    /// legal, employment or nobility status, etc. and that appears at the end of
    ///  the name.
    List<String>? suffix,

    /// [suffixElement] Extensions for suffix
    @JsonKey(name: '_suffix') List<Element?>? suffixElement,

    /// [period] Indicates the period of time when this name was valid for the
    ///  named person.
    Period? period,
  }) = _HumanName;

  @override
  String get fhirType => 'HumanName';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory HumanName.fromYaml(dynamic yaml) => yaml is String
      ? HumanName.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? HumanName.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'HumanName cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory HumanName.fromJson(Map<String, dynamic> json) =>
      _$HumanNameFromJson(json);

  /// Acts like a constructor, returns a [HumanName], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory HumanName.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$HumanNameFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  HumanName updateUse(HumanNameUse use) => copyWith(use: use);

  HumanName updateText(String text) => copyWith(text: text);

  HumanName updateFamily(String family) => copyWith(family: family);

  HumanName updateGiven(List<String> given) => copyWith(given: given);

  HumanName updatePrefix(List<String> prefix) => copyWith(prefix: prefix);

  HumanName updateSuffix(List<String> suffix) => copyWith(suffix: suffix);

  HumanName updatePeriod(Period period) => copyWith(period: period);
}

/// [Address] An address expressed using postal conventions (as opposed to
@freezed
class Address with DataType, _$Address {
  /// [Address] An address expressed using postal conventions (as opposed to
  const Address._();

  /// [Address] An address expressed using postal conventions (as opposed to
  /// GPS or other location definition formats).  This data type may be used to
  /// convey addresses for use in delivering mail as well as for visiting
  /// locations which might not be valid for mail delivery.  There are a variety
  ///  of postal address formats defined around the world.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [use] The purpose of this address.
  ///
  /// [useElement] Extensions for use
  ///
  /// [type] Distinguishes between physical addresses (those you can visit) and
  /// mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
  ///  are both.
  ///
  /// [typeElement] Extensions for type
  ///
  /// [text] Specifies the entire address as it should be displayed e.g. on a
  /// postal label. This may be provided instead of or as well as the specific
  ///  parts.
  ///
  /// [textElement] Extensions for text
  ///
  /// [line] This component contains the house number, apartment number, street
  /// name, street direction,  P.O. Box number, delivery hints, and similar
  ///  address information.
  ///
  /// [lineElement] Extensions for line
  ///
  /// [city] The name of the city, town, suburb, village or other community or
  ///  delivery center.
  ///
  /// [cityElement] Extensions for city
  ///
  /// [district] The name of the administrative area (county).
  ///
  /// [districtElement] Extensions for district
  ///
  /// [state] Sub-unit of a country with limited sovereignty in a federally
  /// organized country. A code may be used if codes are in common use (e.g. US
  ///  2 letter state codes).
  ///
  /// [stateElement] Extensions for state
  ///
  /// [postalCode] A postal code designating a region defined by the postal
  ///  service.
  ///
  /// [postalCodeElement] Extensions for postalCode
  ///
  /// [country] Country - a nation as commonly understood or generally
  ///  accepted.
  ///
  /// [countryElement] Extensions for country
  ///
  /// [period] Time period when address was/is in use.
  const factory Address({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [use] The purpose of this address.
    @JsonKey(unknownEnumValue: AddressUse.unknown) AddressUse? use,

    /// [useElement] Extensions for use
    @JsonKey(name: '_use') Element? useElement,

    /// [type] Distinguishes between physical addresses (those you can visit) and
    /// mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
    ///  are both.
    @JsonKey(unknownEnumValue: AddressType.unknown) AddressType? type,

    /// [typeElement] Extensions for type
    @JsonKey(name: '_type') Element? typeElement,

    /// [text] Specifies the entire address as it should be displayed e.g. on a
    /// postal label. This may be provided instead of or as well as the specific
    ///  parts.
    String? text,

    /// [textElement] Extensions for text
    @JsonKey(name: '_text') Element? textElement,

    /// [line] This component contains the house number, apartment number, street
    /// name, street direction,  P.O. Box number, delivery hints, and similar
    ///  address information.
    List<String>? line,

    /// [lineElement] Extensions for line
    @JsonKey(name: '_line') List<Element?>? lineElement,

    /// [city] The name of the city, town, suburb, village or other community or
    ///  delivery center.
    String? city,

    /// [cityElement] Extensions for city
    @JsonKey(name: '_city') Element? cityElement,

    /// [district] The name of the administrative area (county).
    String? district,

    /// [districtElement] Extensions for district
    @JsonKey(name: '_district') Element? districtElement,

    /// [state] Sub-unit of a country with limited sovereignty in a federally
    /// organized country. A code may be used if codes are in common use (e.g. US
    ///  2 letter state codes).
    String? state,

    /// [stateElement] Extensions for state
    @JsonKey(name: '_state') Element? stateElement,

    /// [postalCode] A postal code designating a region defined by the postal
    ///  service.
    String? postalCode,

    /// [postalCodeElement] Extensions for postalCode
    @JsonKey(name: '_postalCode') Element? postalCodeElement,

    /// [country] Country - a nation as commonly understood or generally
    ///  accepted.
    String? country,

    /// [countryElement] Extensions for country
    @JsonKey(name: '_country') Element? countryElement,

    /// [period] Time period when address was/is in use.
    Period? period,
  }) = _Address;

  @override
  String get fhirType => 'Address';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Address.fromYaml(dynamic yaml) => yaml is String
      ? Address.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Address.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Address cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  /// Acts like a constructor, returns a [Address], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Address.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AddressFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Because this is a common class that's updated
  Address updateUse(AddressUse use) => copyWith(use: use);

  Address updateType(AddressType type) => copyWith(type: type);

  Address updateText(String text) => copyWith(text: text);

  Address updateLine(List<String> line) => copyWith(line: line);

  Address updateCity(String city) => copyWith(city: city);

  Address updateDistrict(String district) => copyWith(district: district);

  Address updateState(String state) => copyWith(state: state);

  Address updatePostalCode(String postalCode) =>
      copyWith(postalCode: postalCode);

  Address updateCountry(String country) => copyWith(country: country);

  Address updatePeriod(Period period) => copyWith(period: period);
}

/// [ContactPoint] Details for all kinds of technology mediated contact
@freezed
class ContactPoint with DataType, _$ContactPoint {
  /// [ContactPoint] Details for all kinds of technology mediated contact
  const ContactPoint._();

  /// [ContactPoint] Details for all kinds of technology mediated contact
  ///  points for a person or organization, including telephone, email, etc.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [system] Telecommunications form for contact point - what communications
  ///  system is required to make use of the contact.
  ///
  /// [systemElement] Extensions for system
  ///
  /// [value] The actual contact point details, in a form that is meaningful to
  ///  the designated communication system (i.e. phone number or email address).
  ///
  /// [valueElement] Extensions for value
  ///
  /// [use] Identifies the purpose for the contact point.
  ///
  /// [useElement] Extensions for use
  ///
  /// [rank] Specifies a preferred order in which to use a set of contacts.
  /// ContactPoints with lower rank values are more preferred than those with
  ///  higher rank values.
  ///
  /// [rankElement] Extensions for rank
  ///
  /// [period] Time period when the contact point was/is in use.
  const factory ContactPoint({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    @JsonKey(unknownEnumValue: ContactPointSystem.unknown)

    /// [system] Telecommunications form for contact point - what communications
    ///  system is required to make use of the contact.
    ContactPointSystem? system,

    /// [systemElement] Extensions for system
    @JsonKey(name: '_system') Element? systemElement,

    /// [value] The actual contact point details, in a form that is meaningful to
    ///  the designated communication system (i.e. phone number or email address).
    String? value,

    /// [valueElement] Extensions for value
    @JsonKey(name: '_value') Element? valueElement,

    /// [use] Identifies the purpose for the contact point.
    @JsonKey(unknownEnumValue: ContactPointUse.unknown) ContactPointUse? use,

    /// [useElement] Extensions for use
    @JsonKey(name: '_use') Element? useElement,

    /// [rank] Specifies a preferred order in which to use a set of contacts.
    /// ContactPoints with lower rank values are more preferred than those with
    ///  higher rank values.
    FhirPositiveInt? rank,

    /// [rankElement] Extensions for rank
    @JsonKey(name: '_rank') Element? rankElement,

    /// [period] Time period when the contact point was/is in use.
    Period? period,
  }) = _ContactPoint;

  @override
  String get fhirType => 'ContactPoint';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory ContactPoint.fromYaml(dynamic yaml) => yaml is String
      ? ContactPoint.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ContactPoint.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ContactPoint cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory ContactPoint.fromJson(Map<String, dynamic> json) =>
      _$ContactPointFromJson(json);

  /// Acts like a constructor, returns a [ContactPoint], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory ContactPoint.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ContactPointFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  ContactPoint updateSystem(ContactPointSystem system) =>
      copyWith(system: system);

  ContactPoint updateValue(String value) => copyWith(value: value);

  ContactPoint updateUse(ContactPointUse use) => copyWith(use: use);

  ContactPoint updateRank(FhirPositiveInt rank) => copyWith(rank: rank);

  ContactPoint updatePeriod(Period period) => copyWith(period: period);
}

/// [Timing] Specifies an event that may occur multiple times. Timing
@freezed
class Timing with DataType, _$Timing {
  /// [Timing] Specifies an event that may occur multiple times. Timing
  const Timing._();

  /// [Timing] Specifies an event that may occur multiple times. Timing
  /// schedules are used to record when things are planned, expected or
  /// requested to occur. The most common usage is in dosage instructions for
  /// medications. They are also used when planning care of various kinds, and
  /// may be used for reporting the schedule to which past regular activities
  ///  were carried out.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [event] Identifies specific times when the event occurs.
  ///
  /// [eventElement] Extensions for event
  ///
  /// [repeat] A set of rules that describe when the event is scheduled.
  ///
  /// [code] A code for the timing schedule (or just text in code.text). Some
  /// codes such as BID are ubiquitous, but many institutions define their own
  /// additional codes. If a code is provided, the code is understood to be a
  /// complete statement of whatever is specified in the structured timing data,
  /// and either the code or the data may be used to interpret the Timing, with
  /// the exception that .repeat.bounds still applies over the code (and is not
  ///  contained in the code).
  const factory Timing({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [event] Identifies specific times when the event occurs.
    List<FhirDateTime>? event,

    /// [eventElement] Extensions for event
    @JsonKey(name: '_event') List<Element?>? eventElement,

    /// [repeat] A set of rules that describe when the event is scheduled.
    TimingRepeat? repeat,

    /// [code] A code for the timing schedule (or just text in code.text). Some
    /// codes such as BID are ubiquitous, but many institutions define their own
    /// additional codes. If a code is provided, the code is understood to be a
    /// complete statement of whatever is specified in the structured timing data,
    /// and either the code or the data may be used to interpret the Timing, with
    /// the exception that .repeat.bounds still applies over the code (and is not
    ///  contained in the code).
    CodeableConcept? code,
  }) = _Timing;

  @override
  String get fhirType => 'Timing';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Timing.fromYaml(dynamic yaml) => yaml is String
      ? Timing.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Timing.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Timing cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Timing.fromJson(Map<String, dynamic> json) => _$TimingFromJson(json);

  /// Acts like a constructor, returns a [Timing], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Timing.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TimingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [TimingRepeat] Specifies an event that may occur multiple times. Timing
@freezed
class TimingRepeat with Element, _$TimingRepeat {
  /// [TimingRepeat] Specifies an event that may occur multiple times. Timing
  const TimingRepeat._();

  /// [TimingRepeat] Specifies an event that may occur multiple times. Timing
  /// schedules are used to record when things are planned, expected or
  /// requested to occur. The most common usage is in dosage instructions for
  /// medications. They are also used when planning care of various kinds, and
  /// may be used for reporting the schedule to which past regular activities
  ///  were carried out.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [boundsDuration] Either a duration for the length of the timing schedule,
  /// a range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  ///
  /// [boundsRange] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  ///
  /// [boundsPeriod] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  ///
  /// [count] A total count of the desired number of repetitions across the
  /// duration of the entire timing specification. If countMax is present, this
  ///  element indicates the lower bound of the allowed range of count values.
  ///
  /// [countElement] Extensions for count
  ///
  /// [countMax] If present, indicates that the count is a range - so to
  ///  perform the action between [count] and [countMax] times.
  ///
  /// [countMaxElement] Extensions for countMax
  ///
  /// [duration] How long this thing happens for when it happens. If
  /// durationMax is present, this element indicates the lower bound of the
  ///  allowed range of the duration.
  ///
  /// [durationElement] Extensions for duration
  ///
  /// [durationMax] If present, indicates that the duration is a range - so to
  ///  perform the action between [duration] and [durationMax] time length.
  ///
  /// [durationMaxElement] Extensions for durationMax
  ///
  /// [durationUnit] The units of time for the duration, in UCUM units.
  ///
  /// [durationUnitElement] Extensions for durationUnit
  ///
  /// [frequency] The number of times to repeat the action within the specified
  /// period. If frequencyMax is present, this element indicates the lower bound
  ///  of the allowed range of the frequency.
  ///
  /// [frequencyElement] Extensions for frequency
  ///
  /// [frequencyMax] If present, indicates that the frequency is a range - so
  /// to repeat between [frequency] and [frequencyMax] times within the period
  ///  or period range.
  ///
  /// [frequencyMaxElement] Extensions for frequencyMax
  ///
  /// [period] Indicates the duration of time over which repetitions are to
  /// occur; e.g. to express "3 times per day", 3 would be the frequency and "1
  /// day" would be the period. If periodMax is present, this element indicates
  ///  the lower bound of the allowed range of the period length.
  ///
  /// [periodElement] Extensions for period
  ///
  /// [periodMax] If present, indicates that the period is a range from [period]
  /// to [periodMax], allowing expressing concepts such as "do this once every
  /// 3-5 days.
  ///
  /// [periodMaxElement] Extensions for periodMax
  ///
  /// [periodUnit] The units of time for the period in UCUM units.
  ///
  /// [periodUnitElement] Extensions for periodUnit
  ///
  /// [dayOfWeek] If one or more days of week is provided, then the action
  ///  happens only on the specified day(s).
  ///
  /// [dayOfWeekElement] Extensions for dayOfWeek
  ///
  /// [timeOfDay] Specified time of day for action to take place.
  ///
  /// [timeOfDayElement] Extensions for timeOfDay
  ///
  /// [when] An approximate time period during the day, potentially linked to
  ///  an event of daily living that indicates when the action should occur.
  ///
  /// [whenElement] Extensions for when
  ///
  /// [offset] The number of minutes from the event. If the event code does not
  /// indicate whether the minutes is before or after the event, then the offset
  ///  is assumed to be after the event.
  ///
  /// [offsetElement] Extensions for offset
  const factory TimingRepeat({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

    /// [modifierExtension] May be used to represent additional information that
    /// is not part of the basic definition of the element and that modifies the
    /// understanding of the element in which it is contained and/or the
    /// understanding of the containing element's descendants. Usually modifier
    /// elements provide negation or qualification. To make the use of extensions
    /// safe and manageable, there is a strict set of governance applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    /// definition of the extension. Applications processing a resource are
    ///  required to check for modifier extensions.
    /// Modifier extensions SHALL NOT change the meaning of any elements on
    /// Resource or DomainResource (including cannot change the meaning of
    ///  modifierExtension itself).
    List<FhirExtension>? modifierExtension,

    /// [boundsDuration] Either a duration for the length of the timing schedule,
    /// a range of possible length, or outer bounds for start and/or end limits of
    ///  the timing schedule.
    FhirDuration? boundsDuration,

    /// [boundsRange] Either a duration for the length of the timing schedule, a
    /// range of possible length, or outer bounds for start and/or end limits of
    ///  the timing schedule.
    Range? boundsRange,

    /// [boundsPeriod] Either a duration for the length of the timing schedule, a
    /// range of possible length, or outer bounds for start and/or end limits of
    ///  the timing schedule.
    Period? boundsPeriod,

    /// [count] A total count of the desired number of repetitions across the
    /// duration of the entire timing specification. If countMax is present, this
    ///  element indicates the lower bound of the allowed range of count values.
    FhirPositiveInt? count,

    /// [countElement] Extensions for count
    @JsonKey(name: '_count') Element? countElement,

    /// [countMax] If present, indicates that the count is a range - so to
    ///  perform the action between [count] and [countMax] times.
    FhirPositiveInt? countMax,

    /// [countMaxElement] Extensions for countMax
    @JsonKey(name: '_countMax') Element? countMaxElement,

    /// [duration] How long this thing happens for when it happens. If
    /// durationMax is present, this element indicates the lower bound of the
    ///  allowed range of the duration.
    FhirDecimal? duration,

    /// [durationElement] Extensions for duration
    @JsonKey(name: '_duration') Element? durationElement,

    /// [durationMax] If present, indicates that the duration is a range - so to
    ///  perform the action between [duration] and [durationMax] time length.
    FhirDecimal? durationMax,

    /// [durationMaxElement] Extensions for durationMax
    @JsonKey(name: '_durationMax') Element? durationMaxElement,
    @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)

    /// [durationUnit] The units of time for the duration, in UCUM units.
    TimingRepeatDurationUnit? durationUnit,

    /// [durationUnitElement] Extensions for durationUnit
    @JsonKey(name: '_durationUnit') Element? durationUnitElement,

    /// [frequency] The number of times to repeat the action within the specified
    /// period. If frequencyMax is present, this element indicates the lower bound
    ///  of the allowed range of the frequency.
    FhirPositiveInt? frequency,

    /// [frequencyElement] Extensions for frequency
    @JsonKey(name: '_frequency') Element? frequencyElement,

    /// [frequencyMax] If present, indicates that the frequency is a range - so
    /// to repeat between [frequency] and [frequencyMax] times within the period
    ///  or period range.
    FhirPositiveInt? frequencyMax,

    /// [frequencyMaxElement] Extensions for frequencyMax
    @JsonKey(name: '_frequencyMax') Element? frequencyMaxElement,

    /// [period] Indicates the duration of time over which repetitions are to
    /// occur; e.g. to express "3 times per day", 3 would be the frequency and "1
    /// day" would be the period. If periodMax is present, this element indicates
    ///  the lower bound of the allowed range of the period length.
    FhirDecimal? period,

    /// [periodElement] Extensions for period
    @JsonKey(name: '_period') Element? periodElement,

    /// [periodMax] If present, indicates that the period is a range from [period]
    /// to [periodMax], allowing expressing concepts such as "do this once every
    /// 3-5 days.
    FhirDecimal? periodMax,

    /// [periodMaxElement] Extensions for periodMax
    @JsonKey(name: '_periodMax') Element? periodMaxElement,
    @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)

    /// [periodUnit] The units of time for the period in UCUM units.
    TimingRepeatPeriodUnit? periodUnit,

    /// [periodUnitElement] Extensions for periodUnit
    @JsonKey(name: '_periodUnit') Element? periodUnitElement,

    /// [dayOfWeek] If one or more days of week is provided, then the action
    ///  happens only on the specified day(s).
    List<FhirCode>? dayOfWeek,

    /// [dayOfWeekElement] Extensions for dayOfWeek
    @JsonKey(name: '_dayOfWeek') List<Element?>? dayOfWeekElement,

    /// [timeOfDay] Specified time of day for action to take place.
    List<FhirTime>? timeOfDay,

    /// [timeOfDayElement] Extensions for timeOfDay
    @JsonKey(name: '_timeOfDay') List<Element?>? timeOfDayElement,

    /// [when] An approximate time period during the day, potentially linked to
    ///  an event of daily living that indicates when the action should occur.
    List<TimingRepeatWhen>? when,

    /// [whenElement] Extensions for when
    @JsonKey(name: '_when') List<Element?>? whenElement,

    /// [offset] The number of minutes from the event. If the event code does not
    /// indicate whether the minutes is before or after the event, then the offset
    ///  is assumed to be after the event.
    FhirUnsignedInt? offset,

    /// [offsetElement] Extensions for offset
    @JsonKey(name: '_offset') Element? offsetElement,
  }) = _TimingRepeat;

  @override
  String get fhirType => 'TimingRepeat';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory TimingRepeat.fromYaml(dynamic yaml) => yaml is String
      ? TimingRepeat.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TimingRepeat.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TimingRepeat cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory TimingRepeat.fromJson(Map<String, dynamic> json) =>
      _$TimingRepeatFromJson(json);

  /// Acts like a constructor, returns a [TimingRepeat], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory TimingRepeat.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TimingRepeatFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}
