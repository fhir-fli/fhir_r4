// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Annotation _$AnnotationFromJson(Map<String, dynamic> json) {
  return _Annotation.fromJson(json);
}

/// @nodoc
mixin _$Annotation {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [authorReference] The individual responsible for making the annotation.
  Reference? get authorReference => throw _privateConstructorUsedError;

  /// [authorString] The individual responsible for making the annotation.
  String? get authorString => throw _privateConstructorUsedError;

  /// [authorStringElement] Extensions for authorString
  @JsonKey(name: '_authorString')
  Element? get authorStringElement => throw _privateConstructorUsedError;

  /// [time] Indicates when this particular annotation was made.
  FhirDateTime? get time => throw _privateConstructorUsedError;

  /// [timeElement] Extensions for time
  @JsonKey(name: '_time')
  Element? get timeElement => throw _privateConstructorUsedError;

  /// [text] The text of the annotation in markdown format.
  FhirMarkdown? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  Element? get textElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnotationCopyWith<Annotation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnotationCopyWith<$Res> {
  factory $AnnotationCopyWith(
          Annotation value, $Res Function(Annotation) then) =
      _$AnnotationCopyWithImpl<$Res, Annotation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Reference? authorReference,
      String? authorString,
      @JsonKey(name: '_authorString') Element? authorStringElement,
      FhirDateTime? time,
      @JsonKey(name: '_time') Element? timeElement,
      FhirMarkdown? text,
      @JsonKey(name: '_text') Element? textElement});

  $ReferenceCopyWith<$Res>? get authorReference;
}

/// @nodoc
class _$AnnotationCopyWithImpl<$Res, $Val extends Annotation>
    implements $AnnotationCopyWith<$Res> {
  _$AnnotationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? authorReference = freezed,
    Object? authorString = freezed,
    Object? authorStringElement = freezed,
    Object? time = freezed,
    Object? timeElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      authorReference: freezed == authorReference
          ? _value.authorReference
          : authorReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      authorString: freezed == authorString
          ? _value.authorString
          : authorString // ignore: cast_nullable_to_non_nullable
              as String?,
      authorStringElement: freezed == authorStringElement
          ? _value.authorStringElement
          : authorStringElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      timeElement: freezed == timeElement
          ? _value.timeElement
          : timeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get authorReference {
    if (_value.authorReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.authorReference!, (value) {
      return _then(_value.copyWith(authorReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnnotationImplCopyWith<$Res>
    implements $AnnotationCopyWith<$Res> {
  factory _$$AnnotationImplCopyWith(
          _$AnnotationImpl value, $Res Function(_$AnnotationImpl) then) =
      __$$AnnotationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Reference? authorReference,
      String? authorString,
      @JsonKey(name: '_authorString') Element? authorStringElement,
      FhirDateTime? time,
      @JsonKey(name: '_time') Element? timeElement,
      FhirMarkdown? text,
      @JsonKey(name: '_text') Element? textElement});

  @override
  $ReferenceCopyWith<$Res>? get authorReference;
}

/// @nodoc
class __$$AnnotationImplCopyWithImpl<$Res>
    extends _$AnnotationCopyWithImpl<$Res, _$AnnotationImpl>
    implements _$$AnnotationImplCopyWith<$Res> {
  __$$AnnotationImplCopyWithImpl(
      _$AnnotationImpl _value, $Res Function(_$AnnotationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? authorReference = freezed,
    Object? authorString = freezed,
    Object? authorStringElement = freezed,
    Object? time = freezed,
    Object? timeElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
  }) {
    return _then(_$AnnotationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      authorReference: freezed == authorReference
          ? _value.authorReference
          : authorReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      authorString: freezed == authorString
          ? _value.authorString
          : authorString // ignore: cast_nullable_to_non_nullable
              as String?,
      authorStringElement: freezed == authorStringElement
          ? _value.authorStringElement
          : authorStringElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      timeElement: freezed == timeElement
          ? _value.timeElement
          : timeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnotationImpl extends _Annotation {
  const _$AnnotationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.authorReference,
      this.authorString,
      @JsonKey(name: '_authorString') this.authorStringElement,
      this.time,
      @JsonKey(name: '_time') this.timeElement,
      this.text,
      @JsonKey(name: '_text') this.textElement})
      : _extension_ = extension_,
        super._();

  factory _$AnnotationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnotationImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [authorReference] The individual responsible for making the annotation.
  @override
  final Reference? authorReference;

  /// [authorString] The individual responsible for making the annotation.
  @override
  final String? authorString;

  /// [authorStringElement] Extensions for authorString
  @override
  @JsonKey(name: '_authorString')
  final Element? authorStringElement;

  /// [time] Indicates when this particular annotation was made.
  @override
  final FhirDateTime? time;

  /// [timeElement] Extensions for time
  @override
  @JsonKey(name: '_time')
  final Element? timeElement;

  /// [text] The text of the annotation in markdown format.
  @override
  final FhirMarkdown? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final Element? textElement;

  @override
  String toString() {
    return 'Annotation(id: $id, extension_: $extension_, authorReference: $authorReference, authorString: $authorString, authorStringElement: $authorStringElement, time: $time, timeElement: $timeElement, text: $text, textElement: $textElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnotationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.authorReference, authorReference) ||
                other.authorReference == authorReference) &&
            (identical(other.authorString, authorString) ||
                other.authorString == authorString) &&
            (identical(other.authorStringElement, authorStringElement) ||
                other.authorStringElement == authorStringElement) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timeElement, timeElement) ||
                other.timeElement == timeElement) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      authorReference,
      authorString,
      authorStringElement,
      time,
      timeElement,
      text,
      textElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnotationImplCopyWith<_$AnnotationImpl> get copyWith =>
      __$$AnnotationImplCopyWithImpl<_$AnnotationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnotationImplToJson(
      this,
    );
  }
}

abstract class _Annotation extends Annotation {
  const factory _Annotation(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final Reference? authorReference,
      final String? authorString,
      @JsonKey(name: '_authorString') final Element? authorStringElement,
      final FhirDateTime? time,
      @JsonKey(name: '_time') final Element? timeElement,
      final FhirMarkdown? text,
      @JsonKey(name: '_text') final Element? textElement}) = _$AnnotationImpl;
  const _Annotation._() : super._();

  factory _Annotation.fromJson(Map<String, dynamic> json) =
      _$AnnotationImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [authorReference] The individual responsible for making the annotation.
  Reference? get authorReference;
  @override

  /// [authorString] The individual responsible for making the annotation.
  String? get authorString;
  @override

  /// [authorStringElement] Extensions for authorString
  @JsonKey(name: '_authorString')
  Element? get authorStringElement;
  @override

  /// [time] Indicates when this particular annotation was made.
  FhirDateTime? get time;
  @override

  /// [timeElement] Extensions for time
  @JsonKey(name: '_time')
  Element? get timeElement;
  @override

  /// [text] The text of the annotation in markdown format.
  FhirMarkdown? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  Element? get textElement;
  @override
  @JsonKey(ignore: true)
  _$$AnnotationImplCopyWith<_$AnnotationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return _Attachment.fromJson(json);
}

/// @nodoc
mixin _$Attachment {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [contentType] Identifies the type of the data in the attachment and
  /// allows a method to be chosen to interpret or render the data. Includes
  ///  mime type parameters such as charset where appropriate.
  FhirCode? get contentType => throw _privateConstructorUsedError;

  /// [contentTypeElement] Extensions for contentType
  @JsonKey(name: '_contentType')
  Element? get contentTypeElement => throw _privateConstructorUsedError;

  /// [language] The human language of the content. The value can be any valid
  ///  value according to BCP 47.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  Element? get languageElement => throw _privateConstructorUsedError;

  /// [data] The actual data of the attachment - a sequence of bytes, base64
  ///  encoded.
  FhirBase64Binary? get data => throw _privateConstructorUsedError;

  /// [dataElement] Extensions for data
  @JsonKey(name: '_data')
  Element? get dataElement => throw _privateConstructorUsedError;

  /// [url] A location where the data can be accessed.
  FhirUrl? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  Element? get urlElement => throw _privateConstructorUsedError;

  /// [size] The number of bytes of data that make up this attachment (before
  ///  base64 encoding, if that is done).
  FhirUnsignedInt? get size => throw _privateConstructorUsedError;

  /// [sizeElement] Extensions for size
  @JsonKey(name: '_size')
  Element? get sizeElement => throw _privateConstructorUsedError;

  /// [hash] The calculated hash of the data using SHA-1. Represented using
  ///  base64.
  FhirBase64Binary? get hash => throw _privateConstructorUsedError;

  /// [hashElement] Extensions for hash
  @JsonKey(name: '_hash')
  Element? get hashElement => throw _privateConstructorUsedError;

  /// [title] A label or set of text to display in place of the data.
  String? get title => throw _privateConstructorUsedError;

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  Element? get titleElement => throw _privateConstructorUsedError;

  /// [creation] The date that the attachment was first created.
  FhirDateTime? get creation => throw _privateConstructorUsedError;

  /// [creationElement] Extensions for creation
  @JsonKey(name: '_creation')
  Element? get creationElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentCopyWith<Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) then) =
      _$AttachmentCopyWithImpl<$Res, Attachment>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirCode? contentType,
      @JsonKey(name: '_contentType') Element? contentTypeElement,
      FhirCode? language,
      @JsonKey(name: '_language') Element? languageElement,
      FhirBase64Binary? data,
      @JsonKey(name: '_data') Element? dataElement,
      FhirUrl? url,
      @JsonKey(name: '_url') Element? urlElement,
      FhirUnsignedInt? size,
      @JsonKey(name: '_size') Element? sizeElement,
      FhirBase64Binary? hash,
      @JsonKey(name: '_hash') Element? hashElement,
      String? title,
      @JsonKey(name: '_title') Element? titleElement,
      FhirDateTime? creation,
      @JsonKey(name: '_creation') Element? creationElement});
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res, $Val extends Attachment>
    implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? contentType = freezed,
    Object? contentTypeElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? data = freezed,
    Object? dataElement = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? size = freezed,
    Object? sizeElement = freezed,
    Object? hash = freezed,
    Object? hashElement = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? creation = freezed,
    Object? creationElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      contentTypeElement: freezed == contentTypeElement
          ? _value.contentTypeElement
          : contentTypeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      dataElement: freezed == dataElement
          ? _value.dataElement
          : dataElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      sizeElement: freezed == sizeElement
          ? _value.sizeElement
          : sizeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      hashElement: freezed == hashElement
          ? _value.hashElement
          : hashElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      creation: freezed == creation
          ? _value.creation
          : creation // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      creationElement: freezed == creationElement
          ? _value.creationElement
          : creationElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentImplCopyWith<$Res>
    implements $AttachmentCopyWith<$Res> {
  factory _$$AttachmentImplCopyWith(
          _$AttachmentImpl value, $Res Function(_$AttachmentImpl) then) =
      __$$AttachmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirCode? contentType,
      @JsonKey(name: '_contentType') Element? contentTypeElement,
      FhirCode? language,
      @JsonKey(name: '_language') Element? languageElement,
      FhirBase64Binary? data,
      @JsonKey(name: '_data') Element? dataElement,
      FhirUrl? url,
      @JsonKey(name: '_url') Element? urlElement,
      FhirUnsignedInt? size,
      @JsonKey(name: '_size') Element? sizeElement,
      FhirBase64Binary? hash,
      @JsonKey(name: '_hash') Element? hashElement,
      String? title,
      @JsonKey(name: '_title') Element? titleElement,
      FhirDateTime? creation,
      @JsonKey(name: '_creation') Element? creationElement});
}

/// @nodoc
class __$$AttachmentImplCopyWithImpl<$Res>
    extends _$AttachmentCopyWithImpl<$Res, _$AttachmentImpl>
    implements _$$AttachmentImplCopyWith<$Res> {
  __$$AttachmentImplCopyWithImpl(
      _$AttachmentImpl _value, $Res Function(_$AttachmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? contentType = freezed,
    Object? contentTypeElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? data = freezed,
    Object? dataElement = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? size = freezed,
    Object? sizeElement = freezed,
    Object? hash = freezed,
    Object? hashElement = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? creation = freezed,
    Object? creationElement = freezed,
  }) {
    return _then(_$AttachmentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      contentTypeElement: freezed == contentTypeElement
          ? _value.contentTypeElement
          : contentTypeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      dataElement: freezed == dataElement
          ? _value.dataElement
          : dataElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      sizeElement: freezed == sizeElement
          ? _value.sizeElement
          : sizeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      hash: freezed == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      hashElement: freezed == hashElement
          ? _value.hashElement
          : hashElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      creation: freezed == creation
          ? _value.creation
          : creation // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      creationElement: freezed == creationElement
          ? _value.creationElement
          : creationElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentImpl extends _Attachment {
  const _$AttachmentImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.contentType,
      @JsonKey(name: '_contentType') this.contentTypeElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.data,
      @JsonKey(name: '_data') this.dataElement,
      this.url,
      @JsonKey(name: '_url') this.urlElement,
      this.size,
      @JsonKey(name: '_size') this.sizeElement,
      this.hash,
      @JsonKey(name: '_hash') this.hashElement,
      this.title,
      @JsonKey(name: '_title') this.titleElement,
      this.creation,
      @JsonKey(name: '_creation') this.creationElement})
      : _extension_ = extension_,
        super._();

  factory _$AttachmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [contentType] Identifies the type of the data in the attachment and
  /// allows a method to be chosen to interpret or render the data. Includes
  ///  mime type parameters such as charset where appropriate.
  @override
  final FhirCode? contentType;

  /// [contentTypeElement] Extensions for contentType
  @override
  @JsonKey(name: '_contentType')
  final Element? contentTypeElement;

  /// [language] The human language of the content. The value can be any valid
  ///  value according to BCP 47.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final Element? languageElement;

  /// [data] The actual data of the attachment - a sequence of bytes, base64
  ///  encoded.
  @override
  final FhirBase64Binary? data;

  /// [dataElement] Extensions for data
  @override
  @JsonKey(name: '_data')
  final Element? dataElement;

  /// [url] A location where the data can be accessed.
  @override
  final FhirUrl? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final Element? urlElement;

  /// [size] The number of bytes of data that make up this attachment (before
  ///  base64 encoding, if that is done).
  @override
  final FhirUnsignedInt? size;

  /// [sizeElement] Extensions for size
  @override
  @JsonKey(name: '_size')
  final Element? sizeElement;

  /// [hash] The calculated hash of the data using SHA-1. Represented using
  ///  base64.
  @override
  final FhirBase64Binary? hash;

  /// [hashElement] Extensions for hash
  @override
  @JsonKey(name: '_hash')
  final Element? hashElement;

  /// [title] A label or set of text to display in place of the data.
  @override
  final String? title;

  /// [titleElement] Extensions for title
  @override
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [creation] The date that the attachment was first created.
  @override
  final FhirDateTime? creation;

  /// [creationElement] Extensions for creation
  @override
  @JsonKey(name: '_creation')
  final Element? creationElement;

  @override
  String toString() {
    return 'Attachment(id: $id, extension_: $extension_, contentType: $contentType, contentTypeElement: $contentTypeElement, language: $language, languageElement: $languageElement, data: $data, dataElement: $dataElement, url: $url, urlElement: $urlElement, size: $size, sizeElement: $sizeElement, hash: $hash, hashElement: $hashElement, title: $title, titleElement: $titleElement, creation: $creation, creationElement: $creationElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.contentTypeElement, contentTypeElement) ||
                other.contentTypeElement == contentTypeElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.dataElement, dataElement) ||
                other.dataElement == dataElement) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlElement, urlElement) ||
                other.urlElement == urlElement) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.sizeElement, sizeElement) ||
                other.sizeElement == sizeElement) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.hashElement, hashElement) ||
                other.hashElement == hashElement) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleElement, titleElement) ||
                other.titleElement == titleElement) &&
            (identical(other.creation, creation) ||
                other.creation == creation) &&
            (identical(other.creationElement, creationElement) ||
                other.creationElement == creationElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      contentType,
      contentTypeElement,
      language,
      languageElement,
      data,
      dataElement,
      url,
      urlElement,
      size,
      sizeElement,
      hash,
      hashElement,
      title,
      titleElement,
      creation,
      creationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentImplCopyWith<_$AttachmentImpl> get copyWith =>
      __$$AttachmentImplCopyWithImpl<_$AttachmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentImplToJson(
      this,
    );
  }
}

abstract class _Attachment extends Attachment {
  const factory _Attachment(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final FhirCode? contentType,
          @JsonKey(name: '_contentType') final Element? contentTypeElement,
          final FhirCode? language,
          @JsonKey(name: '_language') final Element? languageElement,
          final FhirBase64Binary? data,
          @JsonKey(name: '_data') final Element? dataElement,
          final FhirUrl? url,
          @JsonKey(name: '_url') final Element? urlElement,
          final FhirUnsignedInt? size,
          @JsonKey(name: '_size') final Element? sizeElement,
          final FhirBase64Binary? hash,
          @JsonKey(name: '_hash') final Element? hashElement,
          final String? title,
          @JsonKey(name: '_title') final Element? titleElement,
          final FhirDateTime? creation,
          @JsonKey(name: '_creation') final Element? creationElement}) =
      _$AttachmentImpl;
  const _Attachment._() : super._();

  factory _Attachment.fromJson(Map<String, dynamic> json) =
      _$AttachmentImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [contentType] Identifies the type of the data in the attachment and
  /// allows a method to be chosen to interpret or render the data. Includes
  ///  mime type parameters such as charset where appropriate.
  FhirCode? get contentType;
  @override

  /// [contentTypeElement] Extensions for contentType
  @JsonKey(name: '_contentType')
  Element? get contentTypeElement;
  @override

  /// [language] The human language of the content. The value can be any valid
  ///  value according to BCP 47.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  Element? get languageElement;
  @override

  /// [data] The actual data of the attachment - a sequence of bytes, base64
  ///  encoded.
  FhirBase64Binary? get data;
  @override

  /// [dataElement] Extensions for data
  @JsonKey(name: '_data')
  Element? get dataElement;
  @override

  /// [url] A location where the data can be accessed.
  FhirUrl? get url;
  @override

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  Element? get urlElement;
  @override

  /// [size] The number of bytes of data that make up this attachment (before
  ///  base64 encoding, if that is done).
  FhirUnsignedInt? get size;
  @override

  /// [sizeElement] Extensions for size
  @JsonKey(name: '_size')
  Element? get sizeElement;
  @override

  /// [hash] The calculated hash of the data using SHA-1. Represented using
  ///  base64.
  FhirBase64Binary? get hash;
  @override

  /// [hashElement] Extensions for hash
  @JsonKey(name: '_hash')
  Element? get hashElement;
  @override

  /// [title] A label or set of text to display in place of the data.
  String? get title;
  @override

  /// [titleElement] Extensions for title
  @JsonKey(name: '_title')
  Element? get titleElement;
  @override

  /// [creation] The date that the attachment was first created.
  FhirDateTime? get creation;
  @override

  /// [creationElement] Extensions for creation
  @JsonKey(name: '_creation')
  Element? get creationElement;
  @override
  @JsonKey(ignore: true)
  _$$AttachmentImplCopyWith<_$AttachmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Identifier _$IdentifierFromJson(Map<String, dynamic> json) {
  return _Identifier.fromJson(json);
}

/// @nodoc
mixin _$Identifier {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [use] The purpose of this identifier.
  @JsonKey(unknownEnumValue: IdentifierUse.unknown)
  IdentifierUse? get use => throw _privateConstructorUsedError;

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  Element? get useElement => throw _privateConstructorUsedError;

  /// [type] A coded type for the identifier that can be used to determine
  ///  which identifier to use for a specific purpose.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [system] Establishes the namespace for the value - that is, a URL that
  ///  describes a set values that are unique.
  FhirUri? get system => throw _privateConstructorUsedError;

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement => throw _privateConstructorUsedError;

  /// [value] The portion of the identifier typically relevant to the user and
  ///  which is unique within the context of the system.
  String? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement => throw _privateConstructorUsedError;

  /// [period] Time period during which identifier is/was valid for use.
  Period? get period => throw _privateConstructorUsedError;

  /// [assigner] Organization that issued/manages the identifier.
  Reference? get assigner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentifierCopyWith<Identifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentifierCopyWith<$Res> {
  factory $IdentifierCopyWith(
          Identifier value, $Res Function(Identifier) then) =
      _$IdentifierCopyWithImpl<$Res, Identifier>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: IdentifierUse.unknown) IdentifierUse? use,
      @JsonKey(name: '_use') Element? useElement,
      CodeableConcept? type,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      String? value,
      @JsonKey(name: '_value') Element? valueElement,
      Period? period,
      Reference? assigner});

  $CodeableConceptCopyWith<$Res>? get type;
  $PeriodCopyWith<$Res>? get period;
  $ReferenceCopyWith<$Res>? get assigner;
}

/// @nodoc
class _$IdentifierCopyWithImpl<$Res, $Val extends Identifier>
    implements $IdentifierCopyWith<$Res> {
  _$IdentifierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? type = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? period = freezed,
    Object? assigner = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as IdentifierUse?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      assigner: freezed == assigner
          ? _value.assigner
          : assigner // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get assigner {
    if (_value.assigner == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.assigner!, (value) {
      return _then(_value.copyWith(assigner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IdentifierImplCopyWith<$Res>
    implements $IdentifierCopyWith<$Res> {
  factory _$$IdentifierImplCopyWith(
          _$IdentifierImpl value, $Res Function(_$IdentifierImpl) then) =
      __$$IdentifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: IdentifierUse.unknown) IdentifierUse? use,
      @JsonKey(name: '_use') Element? useElement,
      CodeableConcept? type,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      String? value,
      @JsonKey(name: '_value') Element? valueElement,
      Period? period,
      Reference? assigner});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $PeriodCopyWith<$Res>? get period;
  @override
  $ReferenceCopyWith<$Res>? get assigner;
}

/// @nodoc
class __$$IdentifierImplCopyWithImpl<$Res>
    extends _$IdentifierCopyWithImpl<$Res, _$IdentifierImpl>
    implements _$$IdentifierImplCopyWith<$Res> {
  __$$IdentifierImplCopyWithImpl(
      _$IdentifierImpl _value, $Res Function(_$IdentifierImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? type = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? period = freezed,
    Object? assigner = freezed,
  }) {
    return _then(_$IdentifierImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as IdentifierUse?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
      assigner: freezed == assigner
          ? _value.assigner
          : assigner // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdentifierImpl extends _Identifier {
  const _$IdentifierImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: IdentifierUse.unknown) this.use,
      @JsonKey(name: '_use') this.useElement,
      this.type,
      this.system,
      @JsonKey(name: '_system') this.systemElement,
      this.value,
      @JsonKey(name: '_value') this.valueElement,
      this.period,
      this.assigner})
      : _extension_ = extension_,
        super._();

  factory _$IdentifierImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentifierImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [use] The purpose of this identifier.
  @override
  @JsonKey(unknownEnumValue: IdentifierUse.unknown)
  final IdentifierUse? use;

  /// [useElement] Extensions for use
  @override
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [type] A coded type for the identifier that can be used to determine
  ///  which identifier to use for a specific purpose.
  @override
  final CodeableConcept? type;

  /// [system] Establishes the namespace for the value - that is, a URL that
  ///  describes a set values that are unique.
  @override
  final FhirUri? system;

  /// [systemElement] Extensions for system
  @override
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [value] The portion of the identifier typically relevant to the user and
  ///  which is unique within the context of the system.
  @override
  final String? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [period] Time period during which identifier is/was valid for use.
  @override
  final Period? period;

  /// [assigner] Organization that issued/manages the identifier.
  @override
  final Reference? assigner;

  @override
  String toString() {
    return 'Identifier(id: $id, extension_: $extension_, use: $use, useElement: $useElement, type: $type, system: $system, systemElement: $systemElement, value: $value, valueElement: $valueElement, period: $period, assigner: $assigner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentifierImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.use, use) || other.use == use) &&
            (identical(other.useElement, useElement) ||
                other.useElement == useElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.systemElement, systemElement) ||
                other.systemElement == systemElement) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.assigner, assigner) ||
                other.assigner == assigner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      use,
      useElement,
      type,
      system,
      systemElement,
      value,
      valueElement,
      period,
      assigner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentifierImplCopyWith<_$IdentifierImpl> get copyWith =>
      __$$IdentifierImplCopyWithImpl<_$IdentifierImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentifierImplToJson(
      this,
    );
  }
}

abstract class _Identifier extends Identifier {
  const factory _Identifier(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: IdentifierUse.unknown)
      final IdentifierUse? use,
      @JsonKey(name: '_use') final Element? useElement,
      final CodeableConcept? type,
      final FhirUri? system,
      @JsonKey(name: '_system') final Element? systemElement,
      final String? value,
      @JsonKey(name: '_value') final Element? valueElement,
      final Period? period,
      final Reference? assigner}) = _$IdentifierImpl;
  const _Identifier._() : super._();

  factory _Identifier.fromJson(Map<String, dynamic> json) =
      _$IdentifierImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [use] The purpose of this identifier.
  @JsonKey(unknownEnumValue: IdentifierUse.unknown)
  IdentifierUse? get use;
  @override

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  Element? get useElement;
  @override

  /// [type] A coded type for the identifier that can be used to determine
  ///  which identifier to use for a specific purpose.
  CodeableConcept? get type;
  @override

  /// [system] Establishes the namespace for the value - that is, a URL that
  ///  describes a set values that are unique.
  FhirUri? get system;
  @override

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement;
  @override

  /// [value] The portion of the identifier typically relevant to the user and
  ///  which is unique within the context of the system.
  String? get value;
  @override

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement;
  @override

  /// [period] Time period during which identifier is/was valid for use.
  Period? get period;
  @override

  /// [assigner] Organization that issued/manages the identifier.
  Reference? get assigner;
  @override
  @JsonKey(ignore: true)
  _$$IdentifierImplCopyWith<_$IdentifierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CodeableConcept _$CodeableConceptFromJson(Map<String, dynamic> json) {
  return _CodeableConcept.fromJson(json);
}

/// @nodoc
mixin _$CodeableConcept {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [coding] A reference to a code defined by a terminology system.
  List<Coding>? get coding => throw _privateConstructorUsedError;

  /// [text] A human language representation of the concept as
  /// seen/selected/uttered by the user who entered the data and/or which
  ///  represents the intended meaning of the user.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  Element? get textElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeableConceptCopyWith<CodeableConcept> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeableConceptCopyWith<$Res> {
  factory $CodeableConceptCopyWith(
          CodeableConcept value, $Res Function(CodeableConcept) then) =
      _$CodeableConceptCopyWithImpl<$Res, CodeableConcept>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<Coding>? coding,
      String? text,
      @JsonKey(name: '_text') Element? textElement});
}

/// @nodoc
class _$CodeableConceptCopyWithImpl<$Res, $Val extends CodeableConcept>
    implements $CodeableConceptCopyWith<$Res> {
  _$CodeableConceptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? coding = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      coding: freezed == coding
          ? _value.coding
          : coding // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodeableConceptImplCopyWith<$Res>
    implements $CodeableConceptCopyWith<$Res> {
  factory _$$CodeableConceptImplCopyWith(_$CodeableConceptImpl value,
          $Res Function(_$CodeableConceptImpl) then) =
      __$$CodeableConceptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<Coding>? coding,
      String? text,
      @JsonKey(name: '_text') Element? textElement});
}

/// @nodoc
class __$$CodeableConceptImplCopyWithImpl<$Res>
    extends _$CodeableConceptCopyWithImpl<$Res, _$CodeableConceptImpl>
    implements _$$CodeableConceptImplCopyWith<$Res> {
  __$$CodeableConceptImplCopyWithImpl(
      _$CodeableConceptImpl _value, $Res Function(_$CodeableConceptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? coding = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
  }) {
    return _then(_$CodeableConceptImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      coding: freezed == coding
          ? _value._coding
          : coding // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeableConceptImpl extends _CodeableConcept {
  const _$CodeableConceptImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<Coding>? coding,
      this.text,
      @JsonKey(name: '_text') this.textElement})
      : _extension_ = extension_,
        _coding = coding,
        super._();

  factory _$CodeableConceptImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeableConceptImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [coding] A reference to a code defined by a terminology system.
  final List<Coding>? _coding;

  /// [coding] A reference to a code defined by a terminology system.
  @override
  List<Coding>? get coding {
    final value = _coding;
    if (value == null) return null;
    if (_coding is EqualUnmodifiableListView) return _coding;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [text] A human language representation of the concept as
  /// seen/selected/uttered by the user who entered the data and/or which
  ///  represents the intended meaning of the user.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final Element? textElement;

  @override
  String toString() {
    return 'CodeableConcept(id: $id, extension_: $extension_, coding: $coding, text: $text, textElement: $textElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeableConceptImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality().equals(other._coding, _coding) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_coding),
      text,
      textElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeableConceptImplCopyWith<_$CodeableConceptImpl> get copyWith =>
      __$$CodeableConceptImplCopyWithImpl<_$CodeableConceptImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeableConceptImplToJson(
      this,
    );
  }
}

abstract class _CodeableConcept extends CodeableConcept {
  const factory _CodeableConcept(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<Coding>? coding,
          final String? text,
          @JsonKey(name: '_text') final Element? textElement}) =
      _$CodeableConceptImpl;
  const _CodeableConcept._() : super._();

  factory _CodeableConcept.fromJson(Map<String, dynamic> json) =
      _$CodeableConceptImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [coding] A reference to a code defined by a terminology system.
  List<Coding>? get coding;
  @override

  /// [text] A human language representation of the concept as
  /// seen/selected/uttered by the user who entered the data and/or which
  ///  represents the intended meaning of the user.
  String? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  Element? get textElement;
  @override
  @JsonKey(ignore: true)
  _$$CodeableConceptImplCopyWith<_$CodeableConceptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Coding _$CodingFromJson(Map<String, dynamic> json) {
  return _Coding.fromJson(json);
}

/// @nodoc
mixin _$Coding {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [system] The identification of the code system that defines the meaning
  ///  of the symbol in the code.
  FhirUri? get system => throw _privateConstructorUsedError;

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement => throw _privateConstructorUsedError;

  /// [version] The version of the code system which was used when choosing
  /// this code. Note that a well-maintained code system does not need the
  /// version reported, because the meaning of codes is consistent across
  /// versions. However this cannot consistently be assured, and when the
  /// meaning is not guaranteed to be consistent, the version SHOULD be
  ///  exchanged.
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  Element? get versionElement => throw _privateConstructorUsedError;

  /// [code] A symbol in syntax defined by the system. The symbol may be a
  /// predefined code or an expression in a syntax defined by the coding system
  ///  (e.g. post-coordination).
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  Element? get codeElement => throw _privateConstructorUsedError;

  /// [display] A representation of the meaning of the code in the system,
  ///  following the rules of the system.
  String? get display => throw _privateConstructorUsedError;

  /// [displayElement] Extensions for display
  @JsonKey(name: '_display')
  Element? get displayElement => throw _privateConstructorUsedError;

  /// [userSelected] Indicates that this coding was chosen by a user directly -
  ///  e.g. off a pick list of available items (codes or displays).
  FhirBoolean? get userSelected => throw _privateConstructorUsedError;

  /// [userSelectedElement] Extensions for userSelected
  @JsonKey(name: '_userSelected')
  Element? get userSelectedElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodingCopyWith<Coding> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodingCopyWith<$Res> {
  factory $CodingCopyWith(Coding value, $Res Function(Coding) then) =
      _$CodingCopyWithImpl<$Res, Coding>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      String? version,
      @JsonKey(name: '_version') Element? versionElement,
      FhirCode? code,
      @JsonKey(name: '_code') Element? codeElement,
      String? display,
      @JsonKey(name: '_display') Element? displayElement,
      FhirBoolean? userSelected,
      @JsonKey(name: '_userSelected') Element? userSelectedElement});
}

/// @nodoc
class _$CodingCopyWithImpl<$Res, $Val extends Coding>
    implements $CodingCopyWith<$Res> {
  _$CodingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
    Object? userSelected = freezed,
    Object? userSelectedElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayElement: freezed == displayElement
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      userSelected: freezed == userSelected
          ? _value.userSelected
          : userSelected // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      userSelectedElement: freezed == userSelectedElement
          ? _value.userSelectedElement
          : userSelectedElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CodingImplCopyWith<$Res> implements $CodingCopyWith<$Res> {
  factory _$$CodingImplCopyWith(
          _$CodingImpl value, $Res Function(_$CodingImpl) then) =
      __$$CodingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      String? version,
      @JsonKey(name: '_version') Element? versionElement,
      FhirCode? code,
      @JsonKey(name: '_code') Element? codeElement,
      String? display,
      @JsonKey(name: '_display') Element? displayElement,
      FhirBoolean? userSelected,
      @JsonKey(name: '_userSelected') Element? userSelectedElement});
}

/// @nodoc
class __$$CodingImplCopyWithImpl<$Res>
    extends _$CodingCopyWithImpl<$Res, _$CodingImpl>
    implements _$$CodingImplCopyWith<$Res> {
  __$$CodingImplCopyWithImpl(
      _$CodingImpl _value, $Res Function(_$CodingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
    Object? userSelected = freezed,
    Object? userSelectedElement = freezed,
  }) {
    return _then(_$CodingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayElement: freezed == displayElement
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      userSelected: freezed == userSelected
          ? _value.userSelected
          : userSelected // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      userSelectedElement: freezed == userSelectedElement
          ? _value.userSelectedElement
          : userSelectedElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodingImpl extends _Coding {
  const _$CodingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.system,
      @JsonKey(name: '_system') this.systemElement,
      this.version,
      @JsonKey(name: '_version') this.versionElement,
      this.code,
      @JsonKey(name: '_code') this.codeElement,
      this.display,
      @JsonKey(name: '_display') this.displayElement,
      this.userSelected,
      @JsonKey(name: '_userSelected') this.userSelectedElement})
      : _extension_ = extension_,
        super._();

  factory _$CodingImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodingImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [system] The identification of the code system that defines the meaning
  ///  of the symbol in the code.
  @override
  final FhirUri? system;

  /// [systemElement] Extensions for system
  @override
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [version] The version of the code system which was used when choosing
  /// this code. Note that a well-maintained code system does not need the
  /// version reported, because the meaning of codes is consistent across
  /// versions. However this cannot consistently be assured, and when the
  /// meaning is not guaranteed to be consistent, the version SHOULD be
  ///  exchanged.
  @override
  final String? version;

  /// [versionElement] Extensions for version
  @override
  @JsonKey(name: '_version')
  final Element? versionElement;

  /// [code] A symbol in syntax defined by the system. The symbol may be a
  /// predefined code or an expression in a syntax defined by the coding system
  ///  (e.g. post-coordination).
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final Element? codeElement;

  /// [display] A representation of the meaning of the code in the system,
  ///  following the rules of the system.
  @override
  final String? display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  final Element? displayElement;

  /// [userSelected] Indicates that this coding was chosen by a user directly -
  ///  e.g. off a pick list of available items (codes or displays).
  @override
  final FhirBoolean? userSelected;

  /// [userSelectedElement] Extensions for userSelected
  @override
  @JsonKey(name: '_userSelected')
  final Element? userSelectedElement;

  @override
  String toString() {
    return 'Coding(id: $id, extension_: $extension_, system: $system, systemElement: $systemElement, version: $version, versionElement: $versionElement, code: $code, codeElement: $codeElement, display: $display, displayElement: $displayElement, userSelected: $userSelected, userSelectedElement: $userSelectedElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.systemElement, systemElement) ||
                other.systemElement == systemElement) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.versionElement, versionElement) ||
                other.versionElement == versionElement) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.displayElement, displayElement) ||
                other.displayElement == displayElement) &&
            (identical(other.userSelected, userSelected) ||
                other.userSelected == userSelected) &&
            (identical(other.userSelectedElement, userSelectedElement) ||
                other.userSelectedElement == userSelectedElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      system,
      systemElement,
      version,
      versionElement,
      code,
      codeElement,
      display,
      displayElement,
      userSelected,
      userSelectedElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodingImplCopyWith<_$CodingImpl> get copyWith =>
      __$$CodingImplCopyWithImpl<_$CodingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodingImplToJson(
      this,
    );
  }
}

abstract class _Coding extends Coding {
  const factory _Coding(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final FhirUri? system,
          @JsonKey(name: '_system') final Element? systemElement,
          final String? version,
          @JsonKey(name: '_version') final Element? versionElement,
          final FhirCode? code,
          @JsonKey(name: '_code') final Element? codeElement,
          final String? display,
          @JsonKey(name: '_display') final Element? displayElement,
          final FhirBoolean? userSelected,
          @JsonKey(name: '_userSelected') final Element? userSelectedElement}) =
      _$CodingImpl;
  const _Coding._() : super._();

  factory _Coding.fromJson(Map<String, dynamic> json) = _$CodingImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [system] The identification of the code system that defines the meaning
  ///  of the symbol in the code.
  FhirUri? get system;
  @override

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement;
  @override

  /// [version] The version of the code system which was used when choosing
  /// this code. Note that a well-maintained code system does not need the
  /// version reported, because the meaning of codes is consistent across
  /// versions. However this cannot consistently be assured, and when the
  /// meaning is not guaranteed to be consistent, the version SHOULD be
  ///  exchanged.
  String? get version;
  @override

  /// [versionElement] Extensions for version
  @JsonKey(name: '_version')
  Element? get versionElement;
  @override

  /// [code] A symbol in syntax defined by the system. The symbol may be a
  /// predefined code or an expression in a syntax defined by the coding system
  ///  (e.g. post-coordination).
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  Element? get codeElement;
  @override

  /// [display] A representation of the meaning of the code in the system,
  ///  following the rules of the system.
  String? get display;
  @override

  /// [displayElement] Extensions for display
  @JsonKey(name: '_display')
  Element? get displayElement;
  @override

  /// [userSelected] Indicates that this coding was chosen by a user directly -
  ///  e.g. off a pick list of available items (codes or displays).
  FhirBoolean? get userSelected;
  @override

  /// [userSelectedElement] Extensions for userSelected
  @JsonKey(name: '_userSelected')
  Element? get userSelectedElement;
  @override
  @JsonKey(ignore: true)
  _$$CodingImplCopyWith<_$CodingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Quantity _$QuantityFromJson(Map<String, dynamic> json) {
  return _Quantity.fromJson(json);
}

/// @nodoc
mixin _$Quantity {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  FhirDecimal? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: QuantityComparator.unknown)
  QuantityComparator? get comparator => throw _privateConstructorUsedError;

  /// [comparatorElement] Extensions for comparator
  @JsonKey(name: '_comparator')
  Element? get comparatorElement => throw _privateConstructorUsedError;

  /// [unit] A human-readable form of the unit.
  String? get unit => throw _privateConstructorUsedError;

  /// [unitElement] Extensions for unit
  @JsonKey(name: '_unit')
  Element? get unitElement => throw _privateConstructorUsedError;

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  FhirUri? get system => throw _privateConstructorUsedError;

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement => throw _privateConstructorUsedError;

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  Element? get codeElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuantityCopyWith<Quantity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantityCopyWith<$Res> {
  factory $QuantityCopyWith(Quantity value, $Res Function(Quantity) then) =
      _$QuantityCopyWithImpl<$Res, Quantity>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDecimal? value,
      @JsonKey(name: '_value') Element? valueElement,
      @JsonKey(unknownEnumValue: QuantityComparator.unknown)
      QuantityComparator? comparator,
      @JsonKey(name: '_comparator') Element? comparatorElement,
      String? unit,
      @JsonKey(name: '_unit') Element? unitElement,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      FhirCode? code,
      @JsonKey(name: '_code') Element? codeElement});
}

/// @nodoc
class _$QuantityCopyWithImpl<$Res, $Val extends Quantity>
    implements $QuantityCopyWith<$Res> {
  _$QuantityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? comparator = freezed,
    Object? comparatorElement = freezed,
    Object? unit = freezed,
    Object? unitElement = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as QuantityComparator?,
      comparatorElement: freezed == comparatorElement
          ? _value.comparatorElement
          : comparatorElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitElement: freezed == unitElement
          ? _value.unitElement
          : unitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuantityImplCopyWith<$Res>
    implements $QuantityCopyWith<$Res> {
  factory _$$QuantityImplCopyWith(
          _$QuantityImpl value, $Res Function(_$QuantityImpl) then) =
      __$$QuantityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDecimal? value,
      @JsonKey(name: '_value') Element? valueElement,
      @JsonKey(unknownEnumValue: QuantityComparator.unknown)
      QuantityComparator? comparator,
      @JsonKey(name: '_comparator') Element? comparatorElement,
      String? unit,
      @JsonKey(name: '_unit') Element? unitElement,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      FhirCode? code,
      @JsonKey(name: '_code') Element? codeElement});
}

/// @nodoc
class __$$QuantityImplCopyWithImpl<$Res>
    extends _$QuantityCopyWithImpl<$Res, _$QuantityImpl>
    implements _$$QuantityImplCopyWith<$Res> {
  __$$QuantityImplCopyWithImpl(
      _$QuantityImpl _value, $Res Function(_$QuantityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? comparator = freezed,
    Object? comparatorElement = freezed,
    Object? unit = freezed,
    Object? unitElement = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
  }) {
    return _then(_$QuantityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as QuantityComparator?,
      comparatorElement: freezed == comparatorElement
          ? _value.comparatorElement
          : comparatorElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitElement: freezed == unitElement
          ? _value.unitElement
          : unitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuantityImpl extends _Quantity {
  const _$QuantityImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.value,
      @JsonKey(name: '_value') this.valueElement,
      @JsonKey(unknownEnumValue: QuantityComparator.unknown) this.comparator,
      @JsonKey(name: '_comparator') this.comparatorElement,
      this.unit,
      @JsonKey(name: '_unit') this.unitElement,
      this.system,
      @JsonKey(name: '_system') this.systemElement,
      this.code,
      @JsonKey(name: '_code') this.codeElement})
      : _extension_ = extension_,
        super._();

  factory _$QuantityImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuantityImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  @override
  final FhirDecimal? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final Element? valueElement;
  @override
  @JsonKey(unknownEnumValue: QuantityComparator.unknown)
  final QuantityComparator? comparator;

  /// [comparatorElement] Extensions for comparator
  @override
  @JsonKey(name: '_comparator')
  final Element? comparatorElement;

  /// [unit] A human-readable form of the unit.
  @override
  final String? unit;

  /// [unitElement] Extensions for unit
  @override
  @JsonKey(name: '_unit')
  final Element? unitElement;

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  @override
  final FhirUri? system;

  /// [systemElement] Extensions for system
  @override
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final Element? codeElement;

  @override
  String toString() {
    return 'Quantity(id: $id, extension_: $extension_, value: $value, valueElement: $valueElement, comparator: $comparator, comparatorElement: $comparatorElement, unit: $unit, unitElement: $unitElement, system: $system, systemElement: $systemElement, code: $code, codeElement: $codeElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuantityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement) &&
            (identical(other.comparator, comparator) ||
                other.comparator == comparator) &&
            (identical(other.comparatorElement, comparatorElement) ||
                other.comparatorElement == comparatorElement) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitElement, unitElement) ||
                other.unitElement == unitElement) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.systemElement, systemElement) ||
                other.systemElement == systemElement) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      value,
      valueElement,
      comparator,
      comparatorElement,
      unit,
      unitElement,
      system,
      systemElement,
      code,
      codeElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuantityImplCopyWith<_$QuantityImpl> get copyWith =>
      __$$QuantityImplCopyWithImpl<_$QuantityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuantityImplToJson(
      this,
    );
  }
}

abstract class _Quantity extends Quantity {
  const factory _Quantity(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final FhirDecimal? value,
      @JsonKey(name: '_value') final Element? valueElement,
      @JsonKey(unknownEnumValue: QuantityComparator.unknown)
      final QuantityComparator? comparator,
      @JsonKey(name: '_comparator') final Element? comparatorElement,
      final String? unit,
      @JsonKey(name: '_unit') final Element? unitElement,
      final FhirUri? system,
      @JsonKey(name: '_system') final Element? systemElement,
      final FhirCode? code,
      @JsonKey(name: '_code') final Element? codeElement}) = _$QuantityImpl;
  const _Quantity._() : super._();

  factory _Quantity.fromJson(Map<String, dynamic> json) =
      _$QuantityImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  FhirDecimal? get value;
  @override

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement;
  @override
  @JsonKey(unknownEnumValue: QuantityComparator.unknown)
  QuantityComparator? get comparator;
  @override

  /// [comparatorElement] Extensions for comparator
  @JsonKey(name: '_comparator')
  Element? get comparatorElement;
  @override

  /// [unit] A human-readable form of the unit.
  String? get unit;
  @override

  /// [unitElement] Extensions for unit
  @JsonKey(name: '_unit')
  Element? get unitElement;
  @override

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  FhirUri? get system;
  @override

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement;
  @override

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  Element? get codeElement;
  @override
  @JsonKey(ignore: true)
  _$$QuantityImplCopyWith<_$QuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FhirDuration _$FhirDurationFromJson(Map<String, dynamic> json) {
  return _FhirDuration.fromJson(json);
}

/// @nodoc
mixin _$FhirDuration {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  FhirDecimal? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: DurationComparator.unknown)
  DurationComparator? get comparator => throw _privateConstructorUsedError;

  /// [comparatorElement] Extensions for comparator
  @JsonKey(name: '_comparator')
  Element? get comparatorElement => throw _privateConstructorUsedError;

  /// [unit] A human-readable form of the unit.
  String? get unit => throw _privateConstructorUsedError;

  /// [unitElement] Extensions for unit
  @JsonKey(name: '_unit')
  Element? get unitElement => throw _privateConstructorUsedError;

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  FhirUri? get system => throw _privateConstructorUsedError;

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement => throw _privateConstructorUsedError;

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  Element? get codeElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FhirDurationCopyWith<FhirDuration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FhirDurationCopyWith<$Res> {
  factory $FhirDurationCopyWith(
          FhirDuration value, $Res Function(FhirDuration) then) =
      _$FhirDurationCopyWithImpl<$Res, FhirDuration>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDecimal? value,
      @JsonKey(name: '_value') Element? valueElement,
      @JsonKey(unknownEnumValue: DurationComparator.unknown)
      DurationComparator? comparator,
      @JsonKey(name: '_comparator') Element? comparatorElement,
      String? unit,
      @JsonKey(name: '_unit') Element? unitElement,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      FhirCode? code,
      @JsonKey(name: '_code') Element? codeElement});
}

/// @nodoc
class _$FhirDurationCopyWithImpl<$Res, $Val extends FhirDuration>
    implements $FhirDurationCopyWith<$Res> {
  _$FhirDurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? comparator = freezed,
    Object? comparatorElement = freezed,
    Object? unit = freezed,
    Object? unitElement = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as DurationComparator?,
      comparatorElement: freezed == comparatorElement
          ? _value.comparatorElement
          : comparatorElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitElement: freezed == unitElement
          ? _value.unitElement
          : unitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FhirDurationImplCopyWith<$Res>
    implements $FhirDurationCopyWith<$Res> {
  factory _$$FhirDurationImplCopyWith(
          _$FhirDurationImpl value, $Res Function(_$FhirDurationImpl) then) =
      __$$FhirDurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDecimal? value,
      @JsonKey(name: '_value') Element? valueElement,
      @JsonKey(unknownEnumValue: DurationComparator.unknown)
      DurationComparator? comparator,
      @JsonKey(name: '_comparator') Element? comparatorElement,
      String? unit,
      @JsonKey(name: '_unit') Element? unitElement,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      FhirCode? code,
      @JsonKey(name: '_code') Element? codeElement});
}

/// @nodoc
class __$$FhirDurationImplCopyWithImpl<$Res>
    extends _$FhirDurationCopyWithImpl<$Res, _$FhirDurationImpl>
    implements _$$FhirDurationImplCopyWith<$Res> {
  __$$FhirDurationImplCopyWithImpl(
      _$FhirDurationImpl _value, $Res Function(_$FhirDurationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? comparator = freezed,
    Object? comparatorElement = freezed,
    Object? unit = freezed,
    Object? unitElement = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
  }) {
    return _then(_$FhirDurationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as DurationComparator?,
      comparatorElement: freezed == comparatorElement
          ? _value.comparatorElement
          : comparatorElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitElement: freezed == unitElement
          ? _value.unitElement
          : unitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirDurationImpl extends _FhirDuration {
  const _$FhirDurationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.value,
      @JsonKey(name: '_value') this.valueElement,
      @JsonKey(unknownEnumValue: DurationComparator.unknown) this.comparator,
      @JsonKey(name: '_comparator') this.comparatorElement,
      this.unit,
      @JsonKey(name: '_unit') this.unitElement,
      this.system,
      @JsonKey(name: '_system') this.systemElement,
      this.code,
      @JsonKey(name: '_code') this.codeElement})
      : _extension_ = extension_,
        super._();

  factory _$FhirDurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirDurationImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  @override
  final FhirDecimal? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final Element? valueElement;
  @override
  @JsonKey(unknownEnumValue: DurationComparator.unknown)
  final DurationComparator? comparator;

  /// [comparatorElement] Extensions for comparator
  @override
  @JsonKey(name: '_comparator')
  final Element? comparatorElement;

  /// [unit] A human-readable form of the unit.
  @override
  final String? unit;

  /// [unitElement] Extensions for unit
  @override
  @JsonKey(name: '_unit')
  final Element? unitElement;

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  @override
  final FhirUri? system;

  /// [systemElement] Extensions for system
  @override
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final Element? codeElement;

  @override
  String toString() {
    return 'FhirDuration(id: $id, extension_: $extension_, value: $value, valueElement: $valueElement, comparator: $comparator, comparatorElement: $comparatorElement, unit: $unit, unitElement: $unitElement, system: $system, systemElement: $systemElement, code: $code, codeElement: $codeElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirDurationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement) &&
            (identical(other.comparator, comparator) ||
                other.comparator == comparator) &&
            (identical(other.comparatorElement, comparatorElement) ||
                other.comparatorElement == comparatorElement) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitElement, unitElement) ||
                other.unitElement == unitElement) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.systemElement, systemElement) ||
                other.systemElement == systemElement) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      value,
      valueElement,
      comparator,
      comparatorElement,
      unit,
      unitElement,
      system,
      systemElement,
      code,
      codeElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirDurationImplCopyWith<_$FhirDurationImpl> get copyWith =>
      __$$FhirDurationImplCopyWithImpl<_$FhirDurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirDurationImplToJson(
      this,
    );
  }
}

abstract class _FhirDuration extends FhirDuration {
  const factory _FhirDuration(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final FhirDecimal? value,
      @JsonKey(name: '_value') final Element? valueElement,
      @JsonKey(unknownEnumValue: DurationComparator.unknown)
      final DurationComparator? comparator,
      @JsonKey(name: '_comparator') final Element? comparatorElement,
      final String? unit,
      @JsonKey(name: '_unit') final Element? unitElement,
      final FhirUri? system,
      @JsonKey(name: '_system') final Element? systemElement,
      final FhirCode? code,
      @JsonKey(name: '_code') final Element? codeElement}) = _$FhirDurationImpl;
  const _FhirDuration._() : super._();

  factory _FhirDuration.fromJson(Map<String, dynamic> json) =
      _$FhirDurationImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  FhirDecimal? get value;
  @override

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement;
  @override
  @JsonKey(unknownEnumValue: DurationComparator.unknown)
  DurationComparator? get comparator;
  @override

  /// [comparatorElement] Extensions for comparator
  @JsonKey(name: '_comparator')
  Element? get comparatorElement;
  @override

  /// [unit] A human-readable form of the unit.
  String? get unit;
  @override

  /// [unitElement] Extensions for unit
  @JsonKey(name: '_unit')
  Element? get unitElement;
  @override

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  FhirUri? get system;
  @override

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement;
  @override

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  Element? get codeElement;
  @override
  @JsonKey(ignore: true)
  _$$FhirDurationImplCopyWith<_$FhirDurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Distance _$DistanceFromJson(Map<String, dynamic> json) {
  return _Distance.fromJson(json);
}

/// @nodoc
mixin _$Distance {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  FhirDecimal? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: DistanceComparator.unknown)
  DistanceComparator? get comparator => throw _privateConstructorUsedError;

  /// [comparatorElement] Extensions for comparator
  @JsonKey(name: '_comparator')
  Element? get comparatorElement => throw _privateConstructorUsedError;

  /// [unit] A human-readable form of the unit.
  String? get unit => throw _privateConstructorUsedError;

  /// [unitElement] Extensions for unit
  @JsonKey(name: '_unit')
  Element? get unitElement => throw _privateConstructorUsedError;

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  FhirUri? get system => throw _privateConstructorUsedError;

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement => throw _privateConstructorUsedError;

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  Element? get codeElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DistanceCopyWith<Distance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DistanceCopyWith<$Res> {
  factory $DistanceCopyWith(Distance value, $Res Function(Distance) then) =
      _$DistanceCopyWithImpl<$Res, Distance>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDecimal? value,
      @JsonKey(name: '_value') Element? valueElement,
      @JsonKey(unknownEnumValue: DistanceComparator.unknown)
      DistanceComparator? comparator,
      @JsonKey(name: '_comparator') Element? comparatorElement,
      String? unit,
      @JsonKey(name: '_unit') Element? unitElement,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      FhirCode? code,
      @JsonKey(name: '_code') Element? codeElement});
}

/// @nodoc
class _$DistanceCopyWithImpl<$Res, $Val extends Distance>
    implements $DistanceCopyWith<$Res> {
  _$DistanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? comparator = freezed,
    Object? comparatorElement = freezed,
    Object? unit = freezed,
    Object? unitElement = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as DistanceComparator?,
      comparatorElement: freezed == comparatorElement
          ? _value.comparatorElement
          : comparatorElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitElement: freezed == unitElement
          ? _value.unitElement
          : unitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DistanceImplCopyWith<$Res>
    implements $DistanceCopyWith<$Res> {
  factory _$$DistanceImplCopyWith(
          _$DistanceImpl value, $Res Function(_$DistanceImpl) then) =
      __$$DistanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDecimal? value,
      @JsonKey(name: '_value') Element? valueElement,
      @JsonKey(unknownEnumValue: DistanceComparator.unknown)
      DistanceComparator? comparator,
      @JsonKey(name: '_comparator') Element? comparatorElement,
      String? unit,
      @JsonKey(name: '_unit') Element? unitElement,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      FhirCode? code,
      @JsonKey(name: '_code') Element? codeElement});
}

/// @nodoc
class __$$DistanceImplCopyWithImpl<$Res>
    extends _$DistanceCopyWithImpl<$Res, _$DistanceImpl>
    implements _$$DistanceImplCopyWith<$Res> {
  __$$DistanceImplCopyWithImpl(
      _$DistanceImpl _value, $Res Function(_$DistanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? comparator = freezed,
    Object? comparatorElement = freezed,
    Object? unit = freezed,
    Object? unitElement = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
  }) {
    return _then(_$DistanceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as DistanceComparator?,
      comparatorElement: freezed == comparatorElement
          ? _value.comparatorElement
          : comparatorElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitElement: freezed == unitElement
          ? _value.unitElement
          : unitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DistanceImpl extends _Distance {
  const _$DistanceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.value,
      @JsonKey(name: '_value') this.valueElement,
      @JsonKey(unknownEnumValue: DistanceComparator.unknown) this.comparator,
      @JsonKey(name: '_comparator') this.comparatorElement,
      this.unit,
      @JsonKey(name: '_unit') this.unitElement,
      this.system,
      @JsonKey(name: '_system') this.systemElement,
      this.code,
      @JsonKey(name: '_code') this.codeElement})
      : _extension_ = extension_,
        super._();

  factory _$DistanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DistanceImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  @override
  final FhirDecimal? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final Element? valueElement;
  @override
  @JsonKey(unknownEnumValue: DistanceComparator.unknown)
  final DistanceComparator? comparator;

  /// [comparatorElement] Extensions for comparator
  @override
  @JsonKey(name: '_comparator')
  final Element? comparatorElement;

  /// [unit] A human-readable form of the unit.
  @override
  final String? unit;

  /// [unitElement] Extensions for unit
  @override
  @JsonKey(name: '_unit')
  final Element? unitElement;

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  @override
  final FhirUri? system;

  /// [systemElement] Extensions for system
  @override
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final Element? codeElement;

  @override
  String toString() {
    return 'Distance(id: $id, extension_: $extension_, value: $value, valueElement: $valueElement, comparator: $comparator, comparatorElement: $comparatorElement, unit: $unit, unitElement: $unitElement, system: $system, systemElement: $systemElement, code: $code, codeElement: $codeElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DistanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement) &&
            (identical(other.comparator, comparator) ||
                other.comparator == comparator) &&
            (identical(other.comparatorElement, comparatorElement) ||
                other.comparatorElement == comparatorElement) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitElement, unitElement) ||
                other.unitElement == unitElement) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.systemElement, systemElement) ||
                other.systemElement == systemElement) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      value,
      valueElement,
      comparator,
      comparatorElement,
      unit,
      unitElement,
      system,
      systemElement,
      code,
      codeElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DistanceImplCopyWith<_$DistanceImpl> get copyWith =>
      __$$DistanceImplCopyWithImpl<_$DistanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DistanceImplToJson(
      this,
    );
  }
}

abstract class _Distance extends Distance {
  const factory _Distance(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final FhirDecimal? value,
      @JsonKey(name: '_value') final Element? valueElement,
      @JsonKey(unknownEnumValue: DistanceComparator.unknown)
      final DistanceComparator? comparator,
      @JsonKey(name: '_comparator') final Element? comparatorElement,
      final String? unit,
      @JsonKey(name: '_unit') final Element? unitElement,
      final FhirUri? system,
      @JsonKey(name: '_system') final Element? systemElement,
      final FhirCode? code,
      @JsonKey(name: '_code') final Element? codeElement}) = _$DistanceImpl;
  const _Distance._() : super._();

  factory _Distance.fromJson(Map<String, dynamic> json) =
      _$DistanceImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  FhirDecimal? get value;
  @override

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement;
  @override
  @JsonKey(unknownEnumValue: DistanceComparator.unknown)
  DistanceComparator? get comparator;
  @override

  /// [comparatorElement] Extensions for comparator
  @JsonKey(name: '_comparator')
  Element? get comparatorElement;
  @override

  /// [unit] A human-readable form of the unit.
  String? get unit;
  @override

  /// [unitElement] Extensions for unit
  @JsonKey(name: '_unit')
  Element? get unitElement;
  @override

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  FhirUri? get system;
  @override

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement;
  @override

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  Element? get codeElement;
  @override
  @JsonKey(ignore: true)
  _$$DistanceImplCopyWith<_$DistanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Count _$CountFromJson(Map<String, dynamic> json) {
  return _Count.fromJson(json);
}

/// @nodoc
mixin _$Count {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  FhirDecimal? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: CountComparator.unknown)
  CountComparator? get comparator => throw _privateConstructorUsedError;

  /// [comparatorElement] Extensions for comparator
  @JsonKey(name: '_comparator')
  Element? get comparatorElement => throw _privateConstructorUsedError;

  /// [unit] A human-readable form of the unit.
  String? get unit => throw _privateConstructorUsedError;

  /// [unitElement] Extensions for unit
  @JsonKey(name: '_unit')
  Element? get unitElement => throw _privateConstructorUsedError;

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  FhirUri? get system => throw _privateConstructorUsedError;

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement => throw _privateConstructorUsedError;

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  Element? get codeElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountCopyWith<Count> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountCopyWith<$Res> {
  factory $CountCopyWith(Count value, $Res Function(Count) then) =
      _$CountCopyWithImpl<$Res, Count>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDecimal? value,
      @JsonKey(name: '_value') Element? valueElement,
      @JsonKey(unknownEnumValue: CountComparator.unknown)
      CountComparator? comparator,
      @JsonKey(name: '_comparator') Element? comparatorElement,
      String? unit,
      @JsonKey(name: '_unit') Element? unitElement,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      FhirCode? code,
      @JsonKey(name: '_code') Element? codeElement});
}

/// @nodoc
class _$CountCopyWithImpl<$Res, $Val extends Count>
    implements $CountCopyWith<$Res> {
  _$CountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? comparator = freezed,
    Object? comparatorElement = freezed,
    Object? unit = freezed,
    Object? unitElement = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as CountComparator?,
      comparatorElement: freezed == comparatorElement
          ? _value.comparatorElement
          : comparatorElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitElement: freezed == unitElement
          ? _value.unitElement
          : unitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountImplCopyWith<$Res> implements $CountCopyWith<$Res> {
  factory _$$CountImplCopyWith(
          _$CountImpl value, $Res Function(_$CountImpl) then) =
      __$$CountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDecimal? value,
      @JsonKey(name: '_value') Element? valueElement,
      @JsonKey(unknownEnumValue: CountComparator.unknown)
      CountComparator? comparator,
      @JsonKey(name: '_comparator') Element? comparatorElement,
      String? unit,
      @JsonKey(name: '_unit') Element? unitElement,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      FhirCode? code,
      @JsonKey(name: '_code') Element? codeElement});
}

/// @nodoc
class __$$CountImplCopyWithImpl<$Res>
    extends _$CountCopyWithImpl<$Res, _$CountImpl>
    implements _$$CountImplCopyWith<$Res> {
  __$$CountImplCopyWithImpl(
      _$CountImpl _value, $Res Function(_$CountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? comparator = freezed,
    Object? comparatorElement = freezed,
    Object? unit = freezed,
    Object? unitElement = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
  }) {
    return _then(_$CountImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as CountComparator?,
      comparatorElement: freezed == comparatorElement
          ? _value.comparatorElement
          : comparatorElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitElement: freezed == unitElement
          ? _value.unitElement
          : unitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountImpl extends _Count {
  const _$CountImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.value,
      @JsonKey(name: '_value') this.valueElement,
      @JsonKey(unknownEnumValue: CountComparator.unknown) this.comparator,
      @JsonKey(name: '_comparator') this.comparatorElement,
      this.unit,
      @JsonKey(name: '_unit') this.unitElement,
      this.system,
      @JsonKey(name: '_system') this.systemElement,
      this.code,
      @JsonKey(name: '_code') this.codeElement})
      : _extension_ = extension_,
        super._();

  factory _$CountImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  @override
  final FhirDecimal? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final Element? valueElement;
  @override
  @JsonKey(unknownEnumValue: CountComparator.unknown)
  final CountComparator? comparator;

  /// [comparatorElement] Extensions for comparator
  @override
  @JsonKey(name: '_comparator')
  final Element? comparatorElement;

  /// [unit] A human-readable form of the unit.
  @override
  final String? unit;

  /// [unitElement] Extensions for unit
  @override
  @JsonKey(name: '_unit')
  final Element? unitElement;

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  @override
  final FhirUri? system;

  /// [systemElement] Extensions for system
  @override
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final Element? codeElement;

  @override
  String toString() {
    return 'Count(id: $id, extension_: $extension_, value: $value, valueElement: $valueElement, comparator: $comparator, comparatorElement: $comparatorElement, unit: $unit, unitElement: $unitElement, system: $system, systemElement: $systemElement, code: $code, codeElement: $codeElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement) &&
            (identical(other.comparator, comparator) ||
                other.comparator == comparator) &&
            (identical(other.comparatorElement, comparatorElement) ||
                other.comparatorElement == comparatorElement) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitElement, unitElement) ||
                other.unitElement == unitElement) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.systemElement, systemElement) ||
                other.systemElement == systemElement) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      value,
      valueElement,
      comparator,
      comparatorElement,
      unit,
      unitElement,
      system,
      systemElement,
      code,
      codeElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountImplCopyWith<_$CountImpl> get copyWith =>
      __$$CountImplCopyWithImpl<_$CountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountImplToJson(
      this,
    );
  }
}

abstract class _Count extends Count {
  const factory _Count(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final FhirDecimal? value,
      @JsonKey(name: '_value') final Element? valueElement,
      @JsonKey(unknownEnumValue: CountComparator.unknown)
      final CountComparator? comparator,
      @JsonKey(name: '_comparator') final Element? comparatorElement,
      final String? unit,
      @JsonKey(name: '_unit') final Element? unitElement,
      final FhirUri? system,
      @JsonKey(name: '_system') final Element? systemElement,
      final FhirCode? code,
      @JsonKey(name: '_code') final Element? codeElement}) = _$CountImpl;
  const _Count._() : super._();

  factory _Count.fromJson(Map<String, dynamic> json) = _$CountImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  FhirDecimal? get value;
  @override

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement;
  @override
  @JsonKey(unknownEnumValue: CountComparator.unknown)
  CountComparator? get comparator;
  @override

  /// [comparatorElement] Extensions for comparator
  @JsonKey(name: '_comparator')
  Element? get comparatorElement;
  @override

  /// [unit] A human-readable form of the unit.
  String? get unit;
  @override

  /// [unitElement] Extensions for unit
  @JsonKey(name: '_unit')
  Element? get unitElement;
  @override

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  FhirUri? get system;
  @override

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement;
  @override

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  Element? get codeElement;
  @override
  @JsonKey(ignore: true)
  _$$CountImplCopyWith<_$CountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Money _$MoneyFromJson(Map<String, dynamic> json) {
  return _Money.fromJson(json);
}

/// @nodoc
mixin _$Money {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [value] Numerical value (with implicit precision).
  FhirDecimal? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement => throw _privateConstructorUsedError;

  /// [currency] ISO 4217 Currency Code.
  FhirCode? get currency => throw _privateConstructorUsedError;

  /// [currencyElement] Extensions for currency
  @JsonKey(name: '_currency')
  Element? get currencyElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoneyCopyWith<Money> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyCopyWith<$Res> {
  factory $MoneyCopyWith(Money value, $Res Function(Money) then) =
      _$MoneyCopyWithImpl<$Res, Money>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDecimal? value,
      @JsonKey(name: '_value') Element? valueElement,
      FhirCode? currency,
      @JsonKey(name: '_currency') Element? currencyElement});
}

/// @nodoc
class _$MoneyCopyWithImpl<$Res, $Val extends Money>
    implements $MoneyCopyWith<$Res> {
  _$MoneyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? currency = freezed,
    Object? currencyElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      currencyElement: freezed == currencyElement
          ? _value.currencyElement
          : currencyElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoneyImplCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory _$$MoneyImplCopyWith(
          _$MoneyImpl value, $Res Function(_$MoneyImpl) then) =
      __$$MoneyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDecimal? value,
      @JsonKey(name: '_value') Element? valueElement,
      FhirCode? currency,
      @JsonKey(name: '_currency') Element? currencyElement});
}

/// @nodoc
class __$$MoneyImplCopyWithImpl<$Res>
    extends _$MoneyCopyWithImpl<$Res, _$MoneyImpl>
    implements _$$MoneyImplCopyWith<$Res> {
  __$$MoneyImplCopyWithImpl(
      _$MoneyImpl _value, $Res Function(_$MoneyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? currency = freezed,
    Object? currencyElement = freezed,
  }) {
    return _then(_$MoneyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      currencyElement: freezed == currencyElement
          ? _value.currencyElement
          : currencyElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoneyImpl extends _Money {
  const _$MoneyImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.value,
      @JsonKey(name: '_value') this.valueElement,
      this.currency,
      @JsonKey(name: '_currency') this.currencyElement})
      : _extension_ = extension_,
        super._();

  factory _$MoneyImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoneyImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [value] Numerical value (with implicit precision).
  @override
  final FhirDecimal? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [currency] ISO 4217 Currency Code.
  @override
  final FhirCode? currency;

  /// [currencyElement] Extensions for currency
  @override
  @JsonKey(name: '_currency')
  final Element? currencyElement;

  @override
  String toString() {
    return 'Money(id: $id, extension_: $extension_, value: $value, valueElement: $valueElement, currency: $currency, currencyElement: $currencyElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.currencyElement, currencyElement) ||
                other.currencyElement == currencyElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      value,
      valueElement,
      currency,
      currencyElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyImplCopyWith<_$MoneyImpl> get copyWith =>
      __$$MoneyImplCopyWithImpl<_$MoneyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoneyImplToJson(
      this,
    );
  }
}

abstract class _Money extends Money {
  const factory _Money(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final FhirDecimal? value,
          @JsonKey(name: '_value') final Element? valueElement,
          final FhirCode? currency,
          @JsonKey(name: '_currency') final Element? currencyElement}) =
      _$MoneyImpl;
  const _Money._() : super._();

  factory _Money.fromJson(Map<String, dynamic> json) = _$MoneyImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [value] Numerical value (with implicit precision).
  FhirDecimal? get value;
  @override

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement;
  @override

  /// [currency] ISO 4217 Currency Code.
  FhirCode? get currency;
  @override

  /// [currencyElement] Extensions for currency
  @JsonKey(name: '_currency')
  Element? get currencyElement;
  @override
  @JsonKey(ignore: true)
  _$$MoneyImplCopyWith<_$MoneyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Age _$AgeFromJson(Map<String, dynamic> json) {
  return _Age.fromJson(json);
}

/// @nodoc
mixin _$Age {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  FhirDecimal? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement => throw _privateConstructorUsedError;

  /// [comparator] How the value should be understood and represented - whether
  /// the actual value is greater or less than the stated value due to
  /// measurement issues; e.g. if the comparator is "<" , then the real value is
  ///  < stated value.
  @JsonKey(unknownEnumValue: AgeComparator.unknown)
  AgeComparator? get comparator => throw _privateConstructorUsedError;

  /// [comparatorElement] Extensions for comparator
  @JsonKey(name: '_comparator')
  Element? get comparatorElement => throw _privateConstructorUsedError;

  /// [unit] A human-readable form of the unit.
  String? get unit => throw _privateConstructorUsedError;

  /// [unitElement] Extensions for unit
  @JsonKey(name: '_unit')
  Element? get unitElement => throw _privateConstructorUsedError;

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  FhirUri? get system => throw _privateConstructorUsedError;

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement => throw _privateConstructorUsedError;

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  FhirCode? get code => throw _privateConstructorUsedError;

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  Element? get codeElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgeCopyWith<Age> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgeCopyWith<$Res> {
  factory $AgeCopyWith(Age value, $Res Function(Age) then) =
      _$AgeCopyWithImpl<$Res, Age>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDecimal? value,
      @JsonKey(name: '_value') Element? valueElement,
      @JsonKey(unknownEnumValue: AgeComparator.unknown)
      AgeComparator? comparator,
      @JsonKey(name: '_comparator') Element? comparatorElement,
      String? unit,
      @JsonKey(name: '_unit') Element? unitElement,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      FhirCode? code,
      @JsonKey(name: '_code') Element? codeElement});
}

/// @nodoc
class _$AgeCopyWithImpl<$Res, $Val extends Age> implements $AgeCopyWith<$Res> {
  _$AgeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? comparator = freezed,
    Object? comparatorElement = freezed,
    Object? unit = freezed,
    Object? unitElement = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as AgeComparator?,
      comparatorElement: freezed == comparatorElement
          ? _value.comparatorElement
          : comparatorElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitElement: freezed == unitElement
          ? _value.unitElement
          : unitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgeImplCopyWith<$Res> implements $AgeCopyWith<$Res> {
  factory _$$AgeImplCopyWith(_$AgeImpl value, $Res Function(_$AgeImpl) then) =
      __$$AgeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDecimal? value,
      @JsonKey(name: '_value') Element? valueElement,
      @JsonKey(unknownEnumValue: AgeComparator.unknown)
      AgeComparator? comparator,
      @JsonKey(name: '_comparator') Element? comparatorElement,
      String? unit,
      @JsonKey(name: '_unit') Element? unitElement,
      FhirUri? system,
      @JsonKey(name: '_system') Element? systemElement,
      FhirCode? code,
      @JsonKey(name: '_code') Element? codeElement});
}

/// @nodoc
class __$$AgeImplCopyWithImpl<$Res> extends _$AgeCopyWithImpl<$Res, _$AgeImpl>
    implements _$$AgeImplCopyWith<$Res> {
  __$$AgeImplCopyWithImpl(_$AgeImpl _value, $Res Function(_$AgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? comparator = freezed,
    Object? comparatorElement = freezed,
    Object? unit = freezed,
    Object? unitElement = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? code = freezed,
    Object? codeElement = freezed,
  }) {
    return _then(_$AgeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as AgeComparator?,
      comparatorElement: freezed == comparatorElement
          ? _value.comparatorElement
          : comparatorElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      unitElement: freezed == unitElement
          ? _value.unitElement
          : unitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      codeElement: freezed == codeElement
          ? _value.codeElement
          : codeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgeImpl extends _Age {
  const _$AgeImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.value,
      @JsonKey(name: '_value') this.valueElement,
      @JsonKey(unknownEnumValue: AgeComparator.unknown) this.comparator,
      @JsonKey(name: '_comparator') this.comparatorElement,
      this.unit,
      @JsonKey(name: '_unit') this.unitElement,
      this.system,
      @JsonKey(name: '_system') this.systemElement,
      this.code,
      @JsonKey(name: '_code') this.codeElement})
      : _extension_ = extension_,
        super._();

  factory _$AgeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgeImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  @override
  final FhirDecimal? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [comparator] How the value should be understood and represented - whether
  /// the actual value is greater or less than the stated value due to
  /// measurement issues; e.g. if the comparator is "<" , then the real value is
  ///  < stated value.
  @override
  @JsonKey(unknownEnumValue: AgeComparator.unknown)
  final AgeComparator? comparator;

  /// [comparatorElement] Extensions for comparator
  @override
  @JsonKey(name: '_comparator')
  final Element? comparatorElement;

  /// [unit] A human-readable form of the unit.
  @override
  final String? unit;

  /// [unitElement] Extensions for unit
  @override
  @JsonKey(name: '_unit')
  final Element? unitElement;

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  @override
  final FhirUri? system;

  /// [systemElement] Extensions for system
  @override
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  @override
  final FhirCode? code;

  /// [codeElement] Extensions for code
  @override
  @JsonKey(name: '_code')
  final Element? codeElement;

  @override
  String toString() {
    return 'Age(id: $id, extension_: $extension_, value: $value, valueElement: $valueElement, comparator: $comparator, comparatorElement: $comparatorElement, unit: $unit, unitElement: $unitElement, system: $system, systemElement: $systemElement, code: $code, codeElement: $codeElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement) &&
            (identical(other.comparator, comparator) ||
                other.comparator == comparator) &&
            (identical(other.comparatorElement, comparatorElement) ||
                other.comparatorElement == comparatorElement) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.unitElement, unitElement) ||
                other.unitElement == unitElement) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.systemElement, systemElement) ||
                other.systemElement == systemElement) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeElement, codeElement) ||
                other.codeElement == codeElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      value,
      valueElement,
      comparator,
      comparatorElement,
      unit,
      unitElement,
      system,
      systemElement,
      code,
      codeElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgeImplCopyWith<_$AgeImpl> get copyWith =>
      __$$AgeImplCopyWithImpl<_$AgeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgeImplToJson(
      this,
    );
  }
}

abstract class _Age extends Age {
  const factory _Age(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final FhirDecimal? value,
      @JsonKey(name: '_value') final Element? valueElement,
      @JsonKey(unknownEnumValue: AgeComparator.unknown)
      final AgeComparator? comparator,
      @JsonKey(name: '_comparator') final Element? comparatorElement,
      final String? unit,
      @JsonKey(name: '_unit') final Element? unitElement,
      final FhirUri? system,
      @JsonKey(name: '_system') final Element? systemElement,
      final FhirCode? code,
      @JsonKey(name: '_code') final Element? codeElement}) = _$AgeImpl;
  const _Age._() : super._();

  factory _Age.fromJson(Map<String, dynamic> json) = _$AgeImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [value] The value of the measured amount. The value includes an implicit
  ///  precision in the presentation of the value.
  FhirDecimal? get value;
  @override

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement;
  @override

  /// [comparator] How the value should be understood and represented - whether
  /// the actual value is greater or less than the stated value due to
  /// measurement issues; e.g. if the comparator is "<" , then the real value is
  ///  < stated value.
  @JsonKey(unknownEnumValue: AgeComparator.unknown)
  AgeComparator? get comparator;
  @override

  /// [comparatorElement] Extensions for comparator
  @JsonKey(name: '_comparator')
  Element? get comparatorElement;
  @override

  /// [unit] A human-readable form of the unit.
  String? get unit;
  @override

  /// [unitElement] Extensions for unit
  @JsonKey(name: '_unit')
  Element? get unitElement;
  @override

  /// [system] The identification of the system that provides the coded form of
  ///  the unit.
  FhirUri? get system;
  @override

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement;
  @override

  /// [code] A computer processable form of the unit in some unit
  ///  representation system.
  FhirCode? get code;
  @override

  /// [codeElement] Extensions for code
  @JsonKey(name: '_code')
  Element? get codeElement;
  @override
  @JsonKey(ignore: true)
  _$$AgeImplCopyWith<_$AgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Range _$RangeFromJson(Map<String, dynamic> json) {
  return _Range.fromJson(json);
}

/// @nodoc
mixin _$Range {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [low] The low limit. The boundary is inclusive.
  Quantity? get low => throw _privateConstructorUsedError;

  /// [high] The high limit. The boundary is inclusive.
  Quantity? get high => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RangeCopyWith<Range> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RangeCopyWith<$Res> {
  factory $RangeCopyWith(Range value, $Res Function(Range) then) =
      _$RangeCopyWithImpl<$Res, Range>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Quantity? low,
      Quantity? high});

  $QuantityCopyWith<$Res>? get low;
  $QuantityCopyWith<$Res>? get high;
}

/// @nodoc
class _$RangeCopyWithImpl<$Res, $Val extends Range>
    implements $RangeCopyWith<$Res> {
  _$RangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? low = freezed,
    Object? high = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get low {
    if (_value.low == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.low!, (value) {
      return _then(_value.copyWith(low: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get high {
    if (_value.high == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.high!, (value) {
      return _then(_value.copyWith(high: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RangeImplCopyWith<$Res> implements $RangeCopyWith<$Res> {
  factory _$$RangeImplCopyWith(
          _$RangeImpl value, $Res Function(_$RangeImpl) then) =
      __$$RangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Quantity? low,
      Quantity? high});

  @override
  $QuantityCopyWith<$Res>? get low;
  @override
  $QuantityCopyWith<$Res>? get high;
}

/// @nodoc
class __$$RangeImplCopyWithImpl<$Res>
    extends _$RangeCopyWithImpl<$Res, _$RangeImpl>
    implements _$$RangeImplCopyWith<$Res> {
  __$$RangeImplCopyWithImpl(
      _$RangeImpl _value, $Res Function(_$RangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? low = freezed,
    Object? high = freezed,
  }) {
    return _then(_$RangeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RangeImpl extends _Range {
  const _$RangeImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.low,
      this.high})
      : _extension_ = extension_,
        super._();

  factory _$RangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RangeImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [low] The low limit. The boundary is inclusive.
  @override
  final Quantity? low;

  /// [high] The high limit. The boundary is inclusive.
  @override
  final Quantity? high;

  @override
  String toString() {
    return 'Range(id: $id, extension_: $extension_, low: $low, high: $high)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RangeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.high, high) || other.high == high));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_extension_), low, high);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RangeImplCopyWith<_$RangeImpl> get copyWith =>
      __$$RangeImplCopyWithImpl<_$RangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RangeImplToJson(
      this,
    );
  }
}

abstract class _Range extends Range {
  const factory _Range(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final Quantity? low,
      final Quantity? high}) = _$RangeImpl;
  const _Range._() : super._();

  factory _Range.fromJson(Map<String, dynamic> json) = _$RangeImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [low] The low limit. The boundary is inclusive.
  Quantity? get low;
  @override

  /// [high] The high limit. The boundary is inclusive.
  Quantity? get high;
  @override
  @JsonKey(ignore: true)
  _$$RangeImplCopyWith<_$RangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return _Period.fromJson(json);
}

/// @nodoc
mixin _$Period {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [start] The start of the period. The boundary is inclusive.
  FhirDateTime? get start => throw _privateConstructorUsedError;

  /// [startElement] Extensions for start
  @JsonKey(name: '_start')
  Element? get startElement => throw _privateConstructorUsedError;

  /// [end] The end of the period. If the end of the period is missing, it
  /// means no end was known or planned at the time the instance was created.
  /// The start may be in the past, and the end date in the future, which means
  ///  that period is expected/planned to end at that time.
  FhirDateTime? get end => throw _privateConstructorUsedError;

  /// [endElement] Extensions for end
  @JsonKey(name: '_end')
  Element? get endElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeriodCopyWith<Period> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodCopyWith<$Res> {
  factory $PeriodCopyWith(Period value, $Res Function(Period) then) =
      _$PeriodCopyWithImpl<$Res, Period>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDateTime? start,
      @JsonKey(name: '_start') Element? startElement,
      FhirDateTime? end,
      @JsonKey(name: '_end') Element? endElement});
}

/// @nodoc
class _$PeriodCopyWithImpl<$Res, $Val extends Period>
    implements $PeriodCopyWith<$Res> {
  _$PeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? start = freezed,
    Object? startElement = freezed,
    Object? end = freezed,
    Object? endElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      startElement: freezed == startElement
          ? _value.startElement
          : startElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      endElement: freezed == endElement
          ? _value.endElement
          : endElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodImplCopyWith<$Res> implements $PeriodCopyWith<$Res> {
  factory _$$PeriodImplCopyWith(
          _$PeriodImpl value, $Res Function(_$PeriodImpl) then) =
      __$$PeriodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirDateTime? start,
      @JsonKey(name: '_start') Element? startElement,
      FhirDateTime? end,
      @JsonKey(name: '_end') Element? endElement});
}

/// @nodoc
class __$$PeriodImplCopyWithImpl<$Res>
    extends _$PeriodCopyWithImpl<$Res, _$PeriodImpl>
    implements _$$PeriodImplCopyWith<$Res> {
  __$$PeriodImplCopyWithImpl(
      _$PeriodImpl _value, $Res Function(_$PeriodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? start = freezed,
    Object? startElement = freezed,
    Object? end = freezed,
    Object? endElement = freezed,
  }) {
    return _then(_$PeriodImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      startElement: freezed == startElement
          ? _value.startElement
          : startElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      endElement: freezed == endElement
          ? _value.endElement
          : endElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodImpl extends _Period {
  const _$PeriodImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.start,
      @JsonKey(name: '_start') this.startElement,
      this.end,
      @JsonKey(name: '_end') this.endElement})
      : _extension_ = extension_,
        super._();

  factory _$PeriodImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [start] The start of the period. The boundary is inclusive.
  @override
  final FhirDateTime? start;

  /// [startElement] Extensions for start
  @override
  @JsonKey(name: '_start')
  final Element? startElement;

  /// [end] The end of the period. If the end of the period is missing, it
  /// means no end was known or planned at the time the instance was created.
  /// The start may be in the past, and the end date in the future, which means
  ///  that period is expected/planned to end at that time.
  @override
  final FhirDateTime? end;

  /// [endElement] Extensions for end
  @override
  @JsonKey(name: '_end')
  final Element? endElement;

  @override
  String toString() {
    return 'Period(id: $id, extension_: $extension_, start: $start, startElement: $startElement, end: $end, endElement: $endElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.startElement, startElement) ||
                other.startElement == startElement) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.endElement, endElement) ||
                other.endElement == endElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      start,
      startElement,
      end,
      endElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodImplCopyWith<_$PeriodImpl> get copyWith =>
      __$$PeriodImplCopyWithImpl<_$PeriodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodImplToJson(
      this,
    );
  }
}

abstract class _Period extends Period {
  const factory _Period(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final FhirDateTime? start,
      @JsonKey(name: '_start') final Element? startElement,
      final FhirDateTime? end,
      @JsonKey(name: '_end') final Element? endElement}) = _$PeriodImpl;
  const _Period._() : super._();

  factory _Period.fromJson(Map<String, dynamic> json) = _$PeriodImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [start] The start of the period. The boundary is inclusive.
  FhirDateTime? get start;
  @override

  /// [startElement] Extensions for start
  @JsonKey(name: '_start')
  Element? get startElement;
  @override

  /// [end] The end of the period. If the end of the period is missing, it
  /// means no end was known or planned at the time the instance was created.
  /// The start may be in the past, and the end date in the future, which means
  ///  that period is expected/planned to end at that time.
  FhirDateTime? get end;
  @override

  /// [endElement] Extensions for end
  @JsonKey(name: '_end')
  Element? get endElement;
  @override
  @JsonKey(ignore: true)
  _$$PeriodImplCopyWith<_$PeriodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ratio _$RatioFromJson(Map<String, dynamic> json) {
  return _Ratio.fromJson(json);
}

/// @nodoc
mixin _$Ratio {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [numerator] The value of the numerator.
  Quantity? get numerator => throw _privateConstructorUsedError;

  /// [denominator] The value of the denominator.
  Quantity? get denominator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatioCopyWith<Ratio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatioCopyWith<$Res> {
  factory $RatioCopyWith(Ratio value, $Res Function(Ratio) then) =
      _$RatioCopyWithImpl<$Res, Ratio>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Quantity? numerator,
      Quantity? denominator});

  $QuantityCopyWith<$Res>? get numerator;
  $QuantityCopyWith<$Res>? get denominator;
}

/// @nodoc
class _$RatioCopyWithImpl<$Res, $Val extends Ratio>
    implements $RatioCopyWith<$Res> {
  _$RatioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? numerator = freezed,
    Object? denominator = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      numerator: freezed == numerator
          ? _value.numerator
          : numerator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      denominator: freezed == denominator
          ? _value.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get numerator {
    if (_value.numerator == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.numerator!, (value) {
      return _then(_value.copyWith(numerator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get denominator {
    if (_value.denominator == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.denominator!, (value) {
      return _then(_value.copyWith(denominator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatioImplCopyWith<$Res> implements $RatioCopyWith<$Res> {
  factory _$$RatioImplCopyWith(
          _$RatioImpl value, $Res Function(_$RatioImpl) then) =
      __$$RatioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Quantity? numerator,
      Quantity? denominator});

  @override
  $QuantityCopyWith<$Res>? get numerator;
  @override
  $QuantityCopyWith<$Res>? get denominator;
}

/// @nodoc
class __$$RatioImplCopyWithImpl<$Res>
    extends _$RatioCopyWithImpl<$Res, _$RatioImpl>
    implements _$$RatioImplCopyWith<$Res> {
  __$$RatioImplCopyWithImpl(
      _$RatioImpl _value, $Res Function(_$RatioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? numerator = freezed,
    Object? denominator = freezed,
  }) {
    return _then(_$RatioImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      numerator: freezed == numerator
          ? _value.numerator
          : numerator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      denominator: freezed == denominator
          ? _value.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatioImpl extends _Ratio {
  const _$RatioImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.numerator,
      this.denominator})
      : _extension_ = extension_,
        super._();

  factory _$RatioImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatioImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [numerator] The value of the numerator.
  @override
  final Quantity? numerator;

  /// [denominator] The value of the denominator.
  @override
  final Quantity? denominator;

  @override
  String toString() {
    return 'Ratio(id: $id, extension_: $extension_, numerator: $numerator, denominator: $denominator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatioImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.numerator, numerator) ||
                other.numerator == numerator) &&
            (identical(other.denominator, denominator) ||
                other.denominator == denominator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_extension_), numerator, denominator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatioImplCopyWith<_$RatioImpl> get copyWith =>
      __$$RatioImplCopyWithImpl<_$RatioImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatioImplToJson(
      this,
    );
  }
}

abstract class _Ratio extends Ratio {
  const factory _Ratio(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final Quantity? numerator,
      final Quantity? denominator}) = _$RatioImpl;
  const _Ratio._() : super._();

  factory _Ratio.fromJson(Map<String, dynamic> json) = _$RatioImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [numerator] The value of the numerator.
  Quantity? get numerator;
  @override

  /// [denominator] The value of the denominator.
  Quantity? get denominator;
  @override
  @JsonKey(ignore: true)
  _$$RatioImplCopyWith<_$RatioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RatioRange _$RatioRangeFromJson(Map<String, dynamic> json) {
  return _RatioRange.fromJson(json);
}

/// @nodoc
mixin _$RatioRange {
  /// [id] "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces."
  String? get id => throw _privateConstructorUsedError;

  /// [extension] "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [lowNumerator] "The value of the low limit numerator."
  Quantity? get lowNumerator => throw _privateConstructorUsedError;

  /// [highNumerator] "The value of the high limit numerator."
  Quantity? get highNumerator => throw _privateConstructorUsedError;

  /// [denominator] "The value of the denominator."
  Quantity? get denominator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatioRangeCopyWith<RatioRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatioRangeCopyWith<$Res> {
  factory $RatioRangeCopyWith(
          RatioRange value, $Res Function(RatioRange) then) =
      _$RatioRangeCopyWithImpl<$Res, RatioRange>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Quantity? lowNumerator,
      Quantity? highNumerator,
      Quantity? denominator});

  $QuantityCopyWith<$Res>? get lowNumerator;
  $QuantityCopyWith<$Res>? get highNumerator;
  $QuantityCopyWith<$Res>? get denominator;
}

/// @nodoc
class _$RatioRangeCopyWithImpl<$Res, $Val extends RatioRange>
    implements $RatioRangeCopyWith<$Res> {
  _$RatioRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? lowNumerator = freezed,
    Object? highNumerator = freezed,
    Object? denominator = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      lowNumerator: freezed == lowNumerator
          ? _value.lowNumerator
          : lowNumerator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      highNumerator: freezed == highNumerator
          ? _value.highNumerator
          : highNumerator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      denominator: freezed == denominator
          ? _value.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get lowNumerator {
    if (_value.lowNumerator == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.lowNumerator!, (value) {
      return _then(_value.copyWith(lowNumerator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get highNumerator {
    if (_value.highNumerator == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.highNumerator!, (value) {
      return _then(_value.copyWith(highNumerator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get denominator {
    if (_value.denominator == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.denominator!, (value) {
      return _then(_value.copyWith(denominator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatioRangeImplCopyWith<$Res>
    implements $RatioRangeCopyWith<$Res> {
  factory _$$RatioRangeImplCopyWith(
          _$RatioRangeImpl value, $Res Function(_$RatioRangeImpl) then) =
      __$$RatioRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Quantity? lowNumerator,
      Quantity? highNumerator,
      Quantity? denominator});

  @override
  $QuantityCopyWith<$Res>? get lowNumerator;
  @override
  $QuantityCopyWith<$Res>? get highNumerator;
  @override
  $QuantityCopyWith<$Res>? get denominator;
}

/// @nodoc
class __$$RatioRangeImplCopyWithImpl<$Res>
    extends _$RatioRangeCopyWithImpl<$Res, _$RatioRangeImpl>
    implements _$$RatioRangeImplCopyWith<$Res> {
  __$$RatioRangeImplCopyWithImpl(
      _$RatioRangeImpl _value, $Res Function(_$RatioRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? lowNumerator = freezed,
    Object? highNumerator = freezed,
    Object? denominator = freezed,
  }) {
    return _then(_$RatioRangeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      lowNumerator: freezed == lowNumerator
          ? _value.lowNumerator
          : lowNumerator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      highNumerator: freezed == highNumerator
          ? _value.highNumerator
          : highNumerator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      denominator: freezed == denominator
          ? _value.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatioRangeImpl extends _RatioRange {
  const _$RatioRangeImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.lowNumerator,
      this.highNumerator,
      this.denominator})
      : _extension_ = extension_,
        super._();

  factory _$RatioRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatioRangeImplFromJson(json);

  /// [id] "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces."
  @override
  final String? id;

  /// [extension] "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
  final List<FhirExtension>? _extension_;

  /// [extension] "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [lowNumerator] "The value of the low limit numerator."
  @override
  final Quantity? lowNumerator;

  /// [highNumerator] "The value of the high limit numerator."
  @override
  final Quantity? highNumerator;

  /// [denominator] "The value of the denominator."
  @override
  final Quantity? denominator;

  @override
  String toString() {
    return 'RatioRange(id: $id, extension_: $extension_, lowNumerator: $lowNumerator, highNumerator: $highNumerator, denominator: $denominator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatioRangeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.lowNumerator, lowNumerator) ||
                other.lowNumerator == lowNumerator) &&
            (identical(other.highNumerator, highNumerator) ||
                other.highNumerator == highNumerator) &&
            (identical(other.denominator, denominator) ||
                other.denominator == denominator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      lowNumerator,
      highNumerator,
      denominator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatioRangeImplCopyWith<_$RatioRangeImpl> get copyWith =>
      __$$RatioRangeImplCopyWithImpl<_$RatioRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatioRangeImplToJson(
      this,
    );
  }
}

abstract class _RatioRange extends RatioRange {
  const factory _RatioRange(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final Quantity? lowNumerator,
      final Quantity? highNumerator,
      final Quantity? denominator}) = _$RatioRangeImpl;
  const _RatioRange._() : super._();

  factory _RatioRange.fromJson(Map<String, dynamic> json) =
      _$RatioRangeImpl.fromJson;

  @override

  /// [id] "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces."
  String? get id;
  @override

  /// [extension] "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [lowNumerator] "The value of the low limit numerator."
  Quantity? get lowNumerator;
  @override

  /// [highNumerator] "The value of the high limit numerator."
  Quantity? get highNumerator;
  @override

  /// [denominator] "The value of the denominator."
  Quantity? get denominator;
  @override
  @JsonKey(ignore: true)
  _$$RatioRangeImplCopyWith<_$RatioRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SampledData _$SampledDataFromJson(Map<String, dynamic> json) {
  return _SampledData.fromJson(json);
}

/// @nodoc
mixin _$SampledData {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [origin] The base quantity that a measured value of zero represents. In
  ///  addition, this provides the units of the entire measurement series.
  Quantity get origin => throw _privateConstructorUsedError;

  /// [period] The length of time between sampling times, measured in
  ///  milliseconds.
  FhirDecimal? get period => throw _privateConstructorUsedError;

  /// [periodElement] Extensions for period
  @JsonKey(name: '_period')
  Element? get periodElement => throw _privateConstructorUsedError;

  /// [factor] A correction factor that is applied to the sampled data points
  ///  before they are added to the origin.
  FhirDecimal? get factor => throw _privateConstructorUsedError;

  /// [factorElement] Extensions for factor
  @JsonKey(name: '_factor')
  Element? get factorElement => throw _privateConstructorUsedError;

  /// [lowerLimit] The lower limit of detection of the measured points. This is
  /// needed if any of the data points have the value "L" (lower than detection
  ///  limit).
  FhirDecimal? get lowerLimit => throw _privateConstructorUsedError;

  /// [lowerLimitElement] Extensions for lowerLimit
  @JsonKey(name: '_lowerLimit')
  Element? get lowerLimitElement => throw _privateConstructorUsedError;

  /// [upperLimit] The upper limit of detection of the measured points. This is
  /// needed if any of the data points have the value "U" (higher than detection
  ///  limit).
  FhirDecimal? get upperLimit => throw _privateConstructorUsedError;

  /// [upperLimitElement] Extensions for upperLimit
  @JsonKey(name: '_upperLimit')
  Element? get upperLimitElement => throw _privateConstructorUsedError;

  /// [dimensions] The number of sample points at each time point. If this
  /// value is greater than one, then the dimensions will be interlaced - all
  ///  the sample points for a point in time will be recorded at once.
  FhirPositiveInt? get dimensions => throw _privateConstructorUsedError;

  /// [dimensionsElement] Extensions for dimensions
  @JsonKey(name: '_dimensions')
  Element? get dimensionsElement => throw _privateConstructorUsedError;

  /// [data] A series of data points which are decimal values separated by a
  /// single space (character u20). The special values "E" (error), "L" (below
  /// detection limit) and "U" (above detection limit) can also be used in place
  ///  of a decimal value.
  String? get data => throw _privateConstructorUsedError;

  /// [dataElement] Extensions for data
  @JsonKey(name: '_data')
  Element? get dataElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampledDataCopyWith<SampledData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampledDataCopyWith<$Res> {
  factory $SampledDataCopyWith(
          SampledData value, $Res Function(SampledData) then) =
      _$SampledDataCopyWithImpl<$Res, SampledData>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Quantity origin,
      FhirDecimal? period,
      @JsonKey(name: '_period') Element? periodElement,
      FhirDecimal? factor,
      @JsonKey(name: '_factor') Element? factorElement,
      FhirDecimal? lowerLimit,
      @JsonKey(name: '_lowerLimit') Element? lowerLimitElement,
      FhirDecimal? upperLimit,
      @JsonKey(name: '_upperLimit') Element? upperLimitElement,
      FhirPositiveInt? dimensions,
      @JsonKey(name: '_dimensions') Element? dimensionsElement,
      String? data,
      @JsonKey(name: '_data') Element? dataElement});

  $QuantityCopyWith<$Res> get origin;
}

/// @nodoc
class _$SampledDataCopyWithImpl<$Res, $Val extends SampledData>
    implements $SampledDataCopyWith<$Res> {
  _$SampledDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? origin = null,
    Object? period = freezed,
    Object? periodElement = freezed,
    Object? factor = freezed,
    Object? factorElement = freezed,
    Object? lowerLimit = freezed,
    Object? lowerLimitElement = freezed,
    Object? upperLimit = freezed,
    Object? upperLimitElement = freezed,
    Object? dimensions = freezed,
    Object? dimensionsElement = freezed,
    Object? data = freezed,
    Object? dataElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Quantity,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      periodElement: freezed == periodElement
          ? _value.periodElement
          : periodElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      factor: freezed == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      factorElement: freezed == factorElement
          ? _value.factorElement
          : factorElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      lowerLimit: freezed == lowerLimit
          ? _value.lowerLimit
          : lowerLimit // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      lowerLimitElement: freezed == lowerLimitElement
          ? _value.lowerLimitElement
          : lowerLimitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      upperLimit: freezed == upperLimit
          ? _value.upperLimit
          : upperLimit // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      upperLimitElement: freezed == upperLimitElement
          ? _value.upperLimitElement
          : upperLimitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      dimensionsElement: freezed == dimensionsElement
          ? _value.dimensionsElement
          : dimensionsElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      dataElement: freezed == dataElement
          ? _value.dataElement
          : dataElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res> get origin {
    return $QuantityCopyWith<$Res>(_value.origin, (value) {
      return _then(_value.copyWith(origin: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SampledDataImplCopyWith<$Res>
    implements $SampledDataCopyWith<$Res> {
  factory _$$SampledDataImplCopyWith(
          _$SampledDataImpl value, $Res Function(_$SampledDataImpl) then) =
      __$$SampledDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Quantity origin,
      FhirDecimal? period,
      @JsonKey(name: '_period') Element? periodElement,
      FhirDecimal? factor,
      @JsonKey(name: '_factor') Element? factorElement,
      FhirDecimal? lowerLimit,
      @JsonKey(name: '_lowerLimit') Element? lowerLimitElement,
      FhirDecimal? upperLimit,
      @JsonKey(name: '_upperLimit') Element? upperLimitElement,
      FhirPositiveInt? dimensions,
      @JsonKey(name: '_dimensions') Element? dimensionsElement,
      String? data,
      @JsonKey(name: '_data') Element? dataElement});

  @override
  $QuantityCopyWith<$Res> get origin;
}

/// @nodoc
class __$$SampledDataImplCopyWithImpl<$Res>
    extends _$SampledDataCopyWithImpl<$Res, _$SampledDataImpl>
    implements _$$SampledDataImplCopyWith<$Res> {
  __$$SampledDataImplCopyWithImpl(
      _$SampledDataImpl _value, $Res Function(_$SampledDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? origin = null,
    Object? period = freezed,
    Object? periodElement = freezed,
    Object? factor = freezed,
    Object? factorElement = freezed,
    Object? lowerLimit = freezed,
    Object? lowerLimitElement = freezed,
    Object? upperLimit = freezed,
    Object? upperLimitElement = freezed,
    Object? dimensions = freezed,
    Object? dimensionsElement = freezed,
    Object? data = freezed,
    Object? dataElement = freezed,
  }) {
    return _then(_$SampledDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      origin: null == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as Quantity,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      periodElement: freezed == periodElement
          ? _value.periodElement
          : periodElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      factor: freezed == factor
          ? _value.factor
          : factor // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      factorElement: freezed == factorElement
          ? _value.factorElement
          : factorElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      lowerLimit: freezed == lowerLimit
          ? _value.lowerLimit
          : lowerLimit // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      lowerLimitElement: freezed == lowerLimitElement
          ? _value.lowerLimitElement
          : lowerLimitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      upperLimit: freezed == upperLimit
          ? _value.upperLimit
          : upperLimit // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      upperLimitElement: freezed == upperLimitElement
          ? _value.upperLimitElement
          : upperLimitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      dimensionsElement: freezed == dimensionsElement
          ? _value.dimensionsElement
          : dimensionsElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      dataElement: freezed == dataElement
          ? _value.dataElement
          : dataElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampledDataImpl extends _SampledData {
  const _$SampledDataImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      required this.origin,
      this.period,
      @JsonKey(name: '_period') this.periodElement,
      this.factor,
      @JsonKey(name: '_factor') this.factorElement,
      this.lowerLimit,
      @JsonKey(name: '_lowerLimit') this.lowerLimitElement,
      this.upperLimit,
      @JsonKey(name: '_upperLimit') this.upperLimitElement,
      this.dimensions,
      @JsonKey(name: '_dimensions') this.dimensionsElement,
      this.data,
      @JsonKey(name: '_data') this.dataElement})
      : _extension_ = extension_,
        super._();

  factory _$SampledDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampledDataImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [origin] The base quantity that a measured value of zero represents. In
  ///  addition, this provides the units of the entire measurement series.
  @override
  final Quantity origin;

  /// [period] The length of time between sampling times, measured in
  ///  milliseconds.
  @override
  final FhirDecimal? period;

  /// [periodElement] Extensions for period
  @override
  @JsonKey(name: '_period')
  final Element? periodElement;

  /// [factor] A correction factor that is applied to the sampled data points
  ///  before they are added to the origin.
  @override
  final FhirDecimal? factor;

  /// [factorElement] Extensions for factor
  @override
  @JsonKey(name: '_factor')
  final Element? factorElement;

  /// [lowerLimit] The lower limit of detection of the measured points. This is
  /// needed if any of the data points have the value "L" (lower than detection
  ///  limit).
  @override
  final FhirDecimal? lowerLimit;

  /// [lowerLimitElement] Extensions for lowerLimit
  @override
  @JsonKey(name: '_lowerLimit')
  final Element? lowerLimitElement;

  /// [upperLimit] The upper limit of detection of the measured points. This is
  /// needed if any of the data points have the value "U" (higher than detection
  ///  limit).
  @override
  final FhirDecimal? upperLimit;

  /// [upperLimitElement] Extensions for upperLimit
  @override
  @JsonKey(name: '_upperLimit')
  final Element? upperLimitElement;

  /// [dimensions] The number of sample points at each time point. If this
  /// value is greater than one, then the dimensions will be interlaced - all
  ///  the sample points for a point in time will be recorded at once.
  @override
  final FhirPositiveInt? dimensions;

  /// [dimensionsElement] Extensions for dimensions
  @override
  @JsonKey(name: '_dimensions')
  final Element? dimensionsElement;

  /// [data] A series of data points which are decimal values separated by a
  /// single space (character u20). The special values "E" (error), "L" (below
  /// detection limit) and "U" (above detection limit) can also be used in place
  ///  of a decimal value.
  @override
  final String? data;

  /// [dataElement] Extensions for data
  @override
  @JsonKey(name: '_data')
  final Element? dataElement;

  @override
  String toString() {
    return 'SampledData(id: $id, extension_: $extension_, origin: $origin, period: $period, periodElement: $periodElement, factor: $factor, factorElement: $factorElement, lowerLimit: $lowerLimit, lowerLimitElement: $lowerLimitElement, upperLimit: $upperLimit, upperLimitElement: $upperLimitElement, dimensions: $dimensions, dimensionsElement: $dimensionsElement, data: $data, dataElement: $dataElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampledDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.periodElement, periodElement) ||
                other.periodElement == periodElement) &&
            (identical(other.factor, factor) || other.factor == factor) &&
            (identical(other.factorElement, factorElement) ||
                other.factorElement == factorElement) &&
            (identical(other.lowerLimit, lowerLimit) ||
                other.lowerLimit == lowerLimit) &&
            (identical(other.lowerLimitElement, lowerLimitElement) ||
                other.lowerLimitElement == lowerLimitElement) &&
            (identical(other.upperLimit, upperLimit) ||
                other.upperLimit == upperLimit) &&
            (identical(other.upperLimitElement, upperLimitElement) ||
                other.upperLimitElement == upperLimitElement) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.dimensionsElement, dimensionsElement) ||
                other.dimensionsElement == dimensionsElement) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.dataElement, dataElement) ||
                other.dataElement == dataElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      origin,
      period,
      periodElement,
      factor,
      factorElement,
      lowerLimit,
      lowerLimitElement,
      upperLimit,
      upperLimitElement,
      dimensions,
      dimensionsElement,
      data,
      dataElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampledDataImplCopyWith<_$SampledDataImpl> get copyWith =>
      __$$SampledDataImplCopyWithImpl<_$SampledDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampledDataImplToJson(
      this,
    );
  }
}

abstract class _SampledData extends SampledData {
  const factory _SampledData(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      required final Quantity origin,
      final FhirDecimal? period,
      @JsonKey(name: '_period') final Element? periodElement,
      final FhirDecimal? factor,
      @JsonKey(name: '_factor') final Element? factorElement,
      final FhirDecimal? lowerLimit,
      @JsonKey(name: '_lowerLimit') final Element? lowerLimitElement,
      final FhirDecimal? upperLimit,
      @JsonKey(name: '_upperLimit') final Element? upperLimitElement,
      final FhirPositiveInt? dimensions,
      @JsonKey(name: '_dimensions') final Element? dimensionsElement,
      final String? data,
      @JsonKey(name: '_data') final Element? dataElement}) = _$SampledDataImpl;
  const _SampledData._() : super._();

  factory _SampledData.fromJson(Map<String, dynamic> json) =
      _$SampledDataImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [origin] The base quantity that a measured value of zero represents. In
  ///  addition, this provides the units of the entire measurement series.
  Quantity get origin;
  @override

  /// [period] The length of time between sampling times, measured in
  ///  milliseconds.
  FhirDecimal? get period;
  @override

  /// [periodElement] Extensions for period
  @JsonKey(name: '_period')
  Element? get periodElement;
  @override

  /// [factor] A correction factor that is applied to the sampled data points
  ///  before they are added to the origin.
  FhirDecimal? get factor;
  @override

  /// [factorElement] Extensions for factor
  @JsonKey(name: '_factor')
  Element? get factorElement;
  @override

  /// [lowerLimit] The lower limit of detection of the measured points. This is
  /// needed if any of the data points have the value "L" (lower than detection
  ///  limit).
  FhirDecimal? get lowerLimit;
  @override

  /// [lowerLimitElement] Extensions for lowerLimit
  @JsonKey(name: '_lowerLimit')
  Element? get lowerLimitElement;
  @override

  /// [upperLimit] The upper limit of detection of the measured points. This is
  /// needed if any of the data points have the value "U" (higher than detection
  ///  limit).
  FhirDecimal? get upperLimit;
  @override

  /// [upperLimitElement] Extensions for upperLimit
  @JsonKey(name: '_upperLimit')
  Element? get upperLimitElement;
  @override

  /// [dimensions] The number of sample points at each time point. If this
  /// value is greater than one, then the dimensions will be interlaced - all
  ///  the sample points for a point in time will be recorded at once.
  FhirPositiveInt? get dimensions;
  @override

  /// [dimensionsElement] Extensions for dimensions
  @JsonKey(name: '_dimensions')
  Element? get dimensionsElement;
  @override

  /// [data] A series of data points which are decimal values separated by a
  /// single space (character u20). The special values "E" (error), "L" (below
  /// detection limit) and "U" (above detection limit) can also be used in place
  ///  of a decimal value.
  String? get data;
  @override

  /// [dataElement] Extensions for data
  @JsonKey(name: '_data')
  Element? get dataElement;
  @override
  @JsonKey(ignore: true)
  _$$SampledDataImplCopyWith<_$SampledDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Signature _$SignatureFromJson(Map<String, dynamic> json) {
  return _Signature.fromJson(json);
}

/// @nodoc
mixin _$Signature {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [type] An indication of the reason that the entity signed this document.
  /// This may be explicitly included as part of the signature information and
  /// can be used when determining accountability for various actions concerning
  ///  the document.
  List<Coding> get type => throw _privateConstructorUsedError;

  /// [when] When the digital signature was signed.
  FhirInstant? get when => throw _privateConstructorUsedError;

  /// [whenElement] Extensions for when
  @JsonKey(name: '_when')
  Element? get whenElement => throw _privateConstructorUsedError;

  /// [who] A reference to an application-usable description of the identity
  ///  that signed  (e.g. the signature used their private key).
  Reference get who => throw _privateConstructorUsedError;

  /// [onBehalfOf] A reference to an application-usable description of the
  ///  identity that is represented by the signature.
  Reference? get onBehalfOf => throw _privateConstructorUsedError;

  /// [targetFormat] A mime type that indicates the technical format of the
  ///  target resources signed by the signature.
  FhirCode? get targetFormat => throw _privateConstructorUsedError;

  /// [targetFormatElement] Extensions for targetFormat
  @JsonKey(name: '_targetFormat')
  Element? get targetFormatElement => throw _privateConstructorUsedError;

  /// [sigFormat] A mime type that indicates the technical format of the
  /// signature. Important mime types are application/signature+xml for X ML
  /// DigSig, application/jose for JWS, and image/* for a graphical image of a
  ///  signature, etc.
  FhirCode? get sigFormat => throw _privateConstructorUsedError;

  /// [sigFormatElement] Extensions for sigFormat
  @JsonKey(name: '_sigFormat')
  Element? get sigFormatElement => throw _privateConstructorUsedError;

  /// [data] The base64 encoding of the Signature content. When signature is
  ///  not recorded electronically this element would be empty.
  FhirBase64Binary? get data => throw _privateConstructorUsedError;

  /// [dataElement] Extensions for data
  @JsonKey(name: '_data')
  Element? get dataElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignatureCopyWith<Signature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignatureCopyWith<$Res> {
  factory $SignatureCopyWith(Signature value, $Res Function(Signature) then) =
      _$SignatureCopyWithImpl<$Res, Signature>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<Coding> type,
      FhirInstant? when,
      @JsonKey(name: '_when') Element? whenElement,
      Reference who,
      Reference? onBehalfOf,
      FhirCode? targetFormat,
      @JsonKey(name: '_targetFormat') Element? targetFormatElement,
      FhirCode? sigFormat,
      @JsonKey(name: '_sigFormat') Element? sigFormatElement,
      FhirBase64Binary? data,
      @JsonKey(name: '_data') Element? dataElement});

  $ReferenceCopyWith<$Res> get who;
  $ReferenceCopyWith<$Res>? get onBehalfOf;
}

/// @nodoc
class _$SignatureCopyWithImpl<$Res, $Val extends Signature>
    implements $SignatureCopyWith<$Res> {
  _$SignatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? type = null,
    Object? when = freezed,
    Object? whenElement = freezed,
    Object? who = null,
    Object? onBehalfOf = freezed,
    Object? targetFormat = freezed,
    Object? targetFormatElement = freezed,
    Object? sigFormat = freezed,
    Object? sigFormatElement = freezed,
    Object? data = freezed,
    Object? dataElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<Coding>,
      when: freezed == when
          ? _value.when
          : when // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      whenElement: freezed == whenElement
          ? _value.whenElement
          : whenElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      who: null == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as Reference,
      onBehalfOf: freezed == onBehalfOf
          ? _value.onBehalfOf
          : onBehalfOf // ignore: cast_nullable_to_non_nullable
              as Reference?,
      targetFormat: freezed == targetFormat
          ? _value.targetFormat
          : targetFormat // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      targetFormatElement: freezed == targetFormatElement
          ? _value.targetFormatElement
          : targetFormatElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      sigFormat: freezed == sigFormat
          ? _value.sigFormat
          : sigFormat // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      sigFormatElement: freezed == sigFormatElement
          ? _value.sigFormatElement
          : sigFormatElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      dataElement: freezed == dataElement
          ? _value.dataElement
          : dataElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get who {
    return $ReferenceCopyWith<$Res>(_value.who, (value) {
      return _then(_value.copyWith(who: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get onBehalfOf {
    if (_value.onBehalfOf == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.onBehalfOf!, (value) {
      return _then(_value.copyWith(onBehalfOf: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignatureImplCopyWith<$Res>
    implements $SignatureCopyWith<$Res> {
  factory _$$SignatureImplCopyWith(
          _$SignatureImpl value, $Res Function(_$SignatureImpl) then) =
      __$$SignatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<Coding> type,
      FhirInstant? when,
      @JsonKey(name: '_when') Element? whenElement,
      Reference who,
      Reference? onBehalfOf,
      FhirCode? targetFormat,
      @JsonKey(name: '_targetFormat') Element? targetFormatElement,
      FhirCode? sigFormat,
      @JsonKey(name: '_sigFormat') Element? sigFormatElement,
      FhirBase64Binary? data,
      @JsonKey(name: '_data') Element? dataElement});

  @override
  $ReferenceCopyWith<$Res> get who;
  @override
  $ReferenceCopyWith<$Res>? get onBehalfOf;
}

/// @nodoc
class __$$SignatureImplCopyWithImpl<$Res>
    extends _$SignatureCopyWithImpl<$Res, _$SignatureImpl>
    implements _$$SignatureImplCopyWith<$Res> {
  __$$SignatureImplCopyWithImpl(
      _$SignatureImpl _value, $Res Function(_$SignatureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? type = null,
    Object? when = freezed,
    Object? whenElement = freezed,
    Object? who = null,
    Object? onBehalfOf = freezed,
    Object? targetFormat = freezed,
    Object? targetFormatElement = freezed,
    Object? sigFormat = freezed,
    Object? sigFormatElement = freezed,
    Object? data = freezed,
    Object? dataElement = freezed,
  }) {
    return _then(_$SignatureImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<Coding>,
      when: freezed == when
          ? _value.when
          : when // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      whenElement: freezed == whenElement
          ? _value.whenElement
          : whenElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      who: null == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as Reference,
      onBehalfOf: freezed == onBehalfOf
          ? _value.onBehalfOf
          : onBehalfOf // ignore: cast_nullable_to_non_nullable
              as Reference?,
      targetFormat: freezed == targetFormat
          ? _value.targetFormat
          : targetFormat // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      targetFormatElement: freezed == targetFormatElement
          ? _value.targetFormatElement
          : targetFormatElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      sigFormat: freezed == sigFormat
          ? _value.sigFormat
          : sigFormat // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      sigFormatElement: freezed == sigFormatElement
          ? _value.sigFormatElement
          : sigFormatElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      dataElement: freezed == dataElement
          ? _value.dataElement
          : dataElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignatureImpl extends _Signature {
  const _$SignatureImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      required final List<Coding> type,
      this.when,
      @JsonKey(name: '_when') this.whenElement,
      required this.who,
      this.onBehalfOf,
      this.targetFormat,
      @JsonKey(name: '_targetFormat') this.targetFormatElement,
      this.sigFormat,
      @JsonKey(name: '_sigFormat') this.sigFormatElement,
      this.data,
      @JsonKey(name: '_data') this.dataElement})
      : _extension_ = extension_,
        _type = type,
        super._();

  factory _$SignatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignatureImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] An indication of the reason that the entity signed this document.
  /// This may be explicitly included as part of the signature information and
  /// can be used when determining accountability for various actions concerning
  ///  the document.
  final List<Coding> _type;

  /// [type] An indication of the reason that the entity signed this document.
  /// This may be explicitly included as part of the signature information and
  /// can be used when determining accountability for various actions concerning
  ///  the document.
  @override
  List<Coding> get type {
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_type);
  }

  /// [when] When the digital signature was signed.
  @override
  final FhirInstant? when;

  /// [whenElement] Extensions for when
  @override
  @JsonKey(name: '_when')
  final Element? whenElement;

  /// [who] A reference to an application-usable description of the identity
  ///  that signed  (e.g. the signature used their private key).
  @override
  final Reference who;

  /// [onBehalfOf] A reference to an application-usable description of the
  ///  identity that is represented by the signature.
  @override
  final Reference? onBehalfOf;

  /// [targetFormat] A mime type that indicates the technical format of the
  ///  target resources signed by the signature.
  @override
  final FhirCode? targetFormat;

  /// [targetFormatElement] Extensions for targetFormat
  @override
  @JsonKey(name: '_targetFormat')
  final Element? targetFormatElement;

  /// [sigFormat] A mime type that indicates the technical format of the
  /// signature. Important mime types are application/signature+xml for X ML
  /// DigSig, application/jose for JWS, and image/* for a graphical image of a
  ///  signature, etc.
  @override
  final FhirCode? sigFormat;

  /// [sigFormatElement] Extensions for sigFormat
  @override
  @JsonKey(name: '_sigFormat')
  final Element? sigFormatElement;

  /// [data] The base64 encoding of the Signature content. When signature is
  ///  not recorded electronically this element would be empty.
  @override
  final FhirBase64Binary? data;

  /// [dataElement] Extensions for data
  @override
  @JsonKey(name: '_data')
  final Element? dataElement;

  @override
  String toString() {
    return 'Signature(id: $id, extension_: $extension_, type: $type, when: $when, whenElement: $whenElement, who: $who, onBehalfOf: $onBehalfOf, targetFormat: $targetFormat, targetFormatElement: $targetFormatElement, sigFormat: $sigFormat, sigFormatElement: $sigFormatElement, data: $data, dataElement: $dataElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignatureImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            (identical(other.when, when) || other.when == when) &&
            (identical(other.whenElement, whenElement) ||
                other.whenElement == whenElement) &&
            (identical(other.who, who) || other.who == who) &&
            (identical(other.onBehalfOf, onBehalfOf) ||
                other.onBehalfOf == onBehalfOf) &&
            (identical(other.targetFormat, targetFormat) ||
                other.targetFormat == targetFormat) &&
            (identical(other.targetFormatElement, targetFormatElement) ||
                other.targetFormatElement == targetFormatElement) &&
            (identical(other.sigFormat, sigFormat) ||
                other.sigFormat == sigFormat) &&
            (identical(other.sigFormatElement, sigFormatElement) ||
                other.sigFormatElement == sigFormatElement) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.dataElement, dataElement) ||
                other.dataElement == dataElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_type),
      when,
      whenElement,
      who,
      onBehalfOf,
      targetFormat,
      targetFormatElement,
      sigFormat,
      sigFormatElement,
      data,
      dataElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignatureImplCopyWith<_$SignatureImpl> get copyWith =>
      __$$SignatureImplCopyWithImpl<_$SignatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignatureImplToJson(
      this,
    );
  }
}

abstract class _Signature extends Signature {
  const factory _Signature(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      required final List<Coding> type,
      final FhirInstant? when,
      @JsonKey(name: '_when') final Element? whenElement,
      required final Reference who,
      final Reference? onBehalfOf,
      final FhirCode? targetFormat,
      @JsonKey(name: '_targetFormat') final Element? targetFormatElement,
      final FhirCode? sigFormat,
      @JsonKey(name: '_sigFormat') final Element? sigFormatElement,
      final FhirBase64Binary? data,
      @JsonKey(name: '_data') final Element? dataElement}) = _$SignatureImpl;
  const _Signature._() : super._();

  factory _Signature.fromJson(Map<String, dynamic> json) =
      _$SignatureImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [type] An indication of the reason that the entity signed this document.
  /// This may be explicitly included as part of the signature information and
  /// can be used when determining accountability for various actions concerning
  ///  the document.
  List<Coding> get type;
  @override

  /// [when] When the digital signature was signed.
  FhirInstant? get when;
  @override

  /// [whenElement] Extensions for when
  @JsonKey(name: '_when')
  Element? get whenElement;
  @override

  /// [who] A reference to an application-usable description of the identity
  ///  that signed  (e.g. the signature used their private key).
  Reference get who;
  @override

  /// [onBehalfOf] A reference to an application-usable description of the
  ///  identity that is represented by the signature.
  Reference? get onBehalfOf;
  @override

  /// [targetFormat] A mime type that indicates the technical format of the
  ///  target resources signed by the signature.
  FhirCode? get targetFormat;
  @override

  /// [targetFormatElement] Extensions for targetFormat
  @JsonKey(name: '_targetFormat')
  Element? get targetFormatElement;
  @override

  /// [sigFormat] A mime type that indicates the technical format of the
  /// signature. Important mime types are application/signature+xml for X ML
  /// DigSig, application/jose for JWS, and image/* for a graphical image of a
  ///  signature, etc.
  FhirCode? get sigFormat;
  @override

  /// [sigFormatElement] Extensions for sigFormat
  @JsonKey(name: '_sigFormat')
  Element? get sigFormatElement;
  @override

  /// [data] The base64 encoding of the Signature content. When signature is
  ///  not recorded electronically this element would be empty.
  FhirBase64Binary? get data;
  @override

  /// [dataElement] Extensions for data
  @JsonKey(name: '_data')
  Element? get dataElement;
  @override
  @JsonKey(ignore: true)
  _$$SignatureImplCopyWith<_$SignatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HumanName _$HumanNameFromJson(Map<String, dynamic> json) {
  return _HumanName.fromJson(json);
}

/// @nodoc
mixin _$HumanName {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [use] Identifies the purpose for this name.
  @JsonKey(unknownEnumValue: HumanNameUse.unknown)
  HumanNameUse? get use => throw _privateConstructorUsedError;

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  Element? get useElement => throw _privateConstructorUsedError;

  /// [text] Specifies the entire name as it should be displayed e.g. on an
  /// application UI. This may be provided instead of or as well as the specific
  ///  parts.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  Element? get textElement => throw _privateConstructorUsedError;

  /// [family] The part of a name that links to the genealogy. In some cultures
  ///  (e.g. Eritrea) the family name of a son is the first name of his father.
  String? get family => throw _privateConstructorUsedError;

  /// [familyElement] Extensions for family
  @JsonKey(name: '_family')
  Element? get familyElement => throw _privateConstructorUsedError;

  /// [given] Given name.
  List<String>? get given => throw _privateConstructorUsedError;

  /// [givenElement] Extensions for given
  @JsonKey(name: '_given')
  List<Element?>? get givenElement => throw _privateConstructorUsedError;

  /// [prefix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the start
  ///  of the name.
  List<String>? get prefix => throw _privateConstructorUsedError;

  /// [prefixElement] Extensions for prefix
  @JsonKey(name: '_prefix')
  List<Element?>? get prefixElement => throw _privateConstructorUsedError;

  /// [suffix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the end of
  ///  the name.
  List<String>? get suffix => throw _privateConstructorUsedError;

  /// [suffixElement] Extensions for suffix
  @JsonKey(name: '_suffix')
  List<Element?>? get suffixElement => throw _privateConstructorUsedError;

  /// [period] Indicates the period of time when this name was valid for the
  ///  named person.
  Period? get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HumanNameCopyWith<HumanName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HumanNameCopyWith<$Res> {
  factory $HumanNameCopyWith(HumanName value, $Res Function(HumanName) then) =
      _$HumanNameCopyWithImpl<$Res, HumanName>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: HumanNameUse.unknown) HumanNameUse? use,
      @JsonKey(name: '_use') Element? useElement,
      String? text,
      @JsonKey(name: '_text') Element? textElement,
      String? family,
      @JsonKey(name: '_family') Element? familyElement,
      List<String>? given,
      @JsonKey(name: '_given') List<Element?>? givenElement,
      List<String>? prefix,
      @JsonKey(name: '_prefix') List<Element?>? prefixElement,
      List<String>? suffix,
      @JsonKey(name: '_suffix') List<Element?>? suffixElement,
      Period? period});

  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class _$HumanNameCopyWithImpl<$Res, $Val extends HumanName>
    implements $HumanNameCopyWith<$Res> {
  _$HumanNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? family = freezed,
    Object? familyElement = freezed,
    Object? given = freezed,
    Object? givenElement = freezed,
    Object? prefix = freezed,
    Object? prefixElement = freezed,
    Object? suffix = freezed,
    Object? suffixElement = freezed,
    Object? period = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as HumanNameUse?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String?,
      familyElement: freezed == familyElement
          ? _value.familyElement
          : familyElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      given: freezed == given
          ? _value.given
          : given // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      givenElement: freezed == givenElement
          ? _value.givenElement
          : givenElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prefixElement: freezed == prefixElement
          ? _value.prefixElement
          : prefixElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      suffixElement: freezed == suffixElement
          ? _value.suffixElement
          : suffixElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HumanNameImplCopyWith<$Res>
    implements $HumanNameCopyWith<$Res> {
  factory _$$HumanNameImplCopyWith(
          _$HumanNameImpl value, $Res Function(_$HumanNameImpl) then) =
      __$$HumanNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: HumanNameUse.unknown) HumanNameUse? use,
      @JsonKey(name: '_use') Element? useElement,
      String? text,
      @JsonKey(name: '_text') Element? textElement,
      String? family,
      @JsonKey(name: '_family') Element? familyElement,
      List<String>? given,
      @JsonKey(name: '_given') List<Element?>? givenElement,
      List<String>? prefix,
      @JsonKey(name: '_prefix') List<Element?>? prefixElement,
      List<String>? suffix,
      @JsonKey(name: '_suffix') List<Element?>? suffixElement,
      Period? period});

  @override
  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class __$$HumanNameImplCopyWithImpl<$Res>
    extends _$HumanNameCopyWithImpl<$Res, _$HumanNameImpl>
    implements _$$HumanNameImplCopyWith<$Res> {
  __$$HumanNameImplCopyWithImpl(
      _$HumanNameImpl _value, $Res Function(_$HumanNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? family = freezed,
    Object? familyElement = freezed,
    Object? given = freezed,
    Object? givenElement = freezed,
    Object? prefix = freezed,
    Object? prefixElement = freezed,
    Object? suffix = freezed,
    Object? suffixElement = freezed,
    Object? period = freezed,
  }) {
    return _then(_$HumanNameImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as HumanNameUse?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      family: freezed == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String?,
      familyElement: freezed == familyElement
          ? _value.familyElement
          : familyElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      given: freezed == given
          ? _value._given
          : given // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      givenElement: freezed == givenElement
          ? _value._givenElement
          : givenElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      prefix: freezed == prefix
          ? _value._prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prefixElement: freezed == prefixElement
          ? _value._prefixElement
          : prefixElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      suffix: freezed == suffix
          ? _value._suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      suffixElement: freezed == suffixElement
          ? _value._suffixElement
          : suffixElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HumanNameImpl extends _HumanName {
  const _$HumanNameImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: HumanNameUse.unknown) this.use,
      @JsonKey(name: '_use') this.useElement,
      this.text,
      @JsonKey(name: '_text') this.textElement,
      this.family,
      @JsonKey(name: '_family') this.familyElement,
      final List<String>? given,
      @JsonKey(name: '_given') final List<Element?>? givenElement,
      final List<String>? prefix,
      @JsonKey(name: '_prefix') final List<Element?>? prefixElement,
      final List<String>? suffix,
      @JsonKey(name: '_suffix') final List<Element?>? suffixElement,
      this.period})
      : _extension_ = extension_,
        _given = given,
        _givenElement = givenElement,
        _prefix = prefix,
        _prefixElement = prefixElement,
        _suffix = suffix,
        _suffixElement = suffixElement,
        super._();

  factory _$HumanNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$HumanNameImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [use] Identifies the purpose for this name.
  @override
  @JsonKey(unknownEnumValue: HumanNameUse.unknown)
  final HumanNameUse? use;

  /// [useElement] Extensions for use
  @override
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [text] Specifies the entire name as it should be displayed e.g. on an
  /// application UI. This may be provided instead of or as well as the specific
  ///  parts.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [family] The part of a name that links to the genealogy. In some cultures
  ///  (e.g. Eritrea) the family name of a son is the first name of his father.
  @override
  final String? family;

  /// [familyElement] Extensions for family
  @override
  @JsonKey(name: '_family')
  final Element? familyElement;

  /// [given] Given name.
  final List<String>? _given;

  /// [given] Given name.
  @override
  List<String>? get given {
    final value = _given;
    if (value == null) return null;
    if (_given is EqualUnmodifiableListView) return _given;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [givenElement] Extensions for given
  final List<Element?>? _givenElement;

  /// [givenElement] Extensions for given
  @override
  @JsonKey(name: '_given')
  List<Element?>? get givenElement {
    final value = _givenElement;
    if (value == null) return null;
    if (_givenElement is EqualUnmodifiableListView) return _givenElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [prefix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the start
  ///  of the name.
  final List<String>? _prefix;

  /// [prefix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the start
  ///  of the name.
  @override
  List<String>? get prefix {
    final value = _prefix;
    if (value == null) return null;
    if (_prefix is EqualUnmodifiableListView) return _prefix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [prefixElement] Extensions for prefix
  final List<Element?>? _prefixElement;

  /// [prefixElement] Extensions for prefix
  @override
  @JsonKey(name: '_prefix')
  List<Element?>? get prefixElement {
    final value = _prefixElement;
    if (value == null) return null;
    if (_prefixElement is EqualUnmodifiableListView) return _prefixElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [suffix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the end of
  ///  the name.
  final List<String>? _suffix;

  /// [suffix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the end of
  ///  the name.
  @override
  List<String>? get suffix {
    final value = _suffix;
    if (value == null) return null;
    if (_suffix is EqualUnmodifiableListView) return _suffix;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [suffixElement] Extensions for suffix
  final List<Element?>? _suffixElement;

  /// [suffixElement] Extensions for suffix
  @override
  @JsonKey(name: '_suffix')
  List<Element?>? get suffixElement {
    final value = _suffixElement;
    if (value == null) return null;
    if (_suffixElement is EqualUnmodifiableListView) return _suffixElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [period] Indicates the period of time when this name was valid for the
  ///  named person.
  @override
  final Period? period;

  @override
  String toString() {
    return 'HumanName(id: $id, extension_: $extension_, use: $use, useElement: $useElement, text: $text, textElement: $textElement, family: $family, familyElement: $familyElement, given: $given, givenElement: $givenElement, prefix: $prefix, prefixElement: $prefixElement, suffix: $suffix, suffixElement: $suffixElement, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HumanNameImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.use, use) || other.use == use) &&
            (identical(other.useElement, useElement) ||
                other.useElement == useElement) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.familyElement, familyElement) ||
                other.familyElement == familyElement) &&
            const DeepCollectionEquality().equals(other._given, _given) &&
            const DeepCollectionEquality()
                .equals(other._givenElement, _givenElement) &&
            const DeepCollectionEquality().equals(other._prefix, _prefix) &&
            const DeepCollectionEquality()
                .equals(other._prefixElement, _prefixElement) &&
            const DeepCollectionEquality().equals(other._suffix, _suffix) &&
            const DeepCollectionEquality()
                .equals(other._suffixElement, _suffixElement) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      use,
      useElement,
      text,
      textElement,
      family,
      familyElement,
      const DeepCollectionEquality().hash(_given),
      const DeepCollectionEquality().hash(_givenElement),
      const DeepCollectionEquality().hash(_prefix),
      const DeepCollectionEquality().hash(_prefixElement),
      const DeepCollectionEquality().hash(_suffix),
      const DeepCollectionEquality().hash(_suffixElement),
      period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HumanNameImplCopyWith<_$HumanNameImpl> get copyWith =>
      __$$HumanNameImplCopyWithImpl<_$HumanNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HumanNameImplToJson(
      this,
    );
  }
}

abstract class _HumanName extends HumanName {
  const factory _HumanName(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: HumanNameUse.unknown) final HumanNameUse? use,
      @JsonKey(name: '_use') final Element? useElement,
      final String? text,
      @JsonKey(name: '_text') final Element? textElement,
      final String? family,
      @JsonKey(name: '_family') final Element? familyElement,
      final List<String>? given,
      @JsonKey(name: '_given') final List<Element?>? givenElement,
      final List<String>? prefix,
      @JsonKey(name: '_prefix') final List<Element?>? prefixElement,
      final List<String>? suffix,
      @JsonKey(name: '_suffix') final List<Element?>? suffixElement,
      final Period? period}) = _$HumanNameImpl;
  const _HumanName._() : super._();

  factory _HumanName.fromJson(Map<String, dynamic> json) =
      _$HumanNameImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [use] Identifies the purpose for this name.
  @JsonKey(unknownEnumValue: HumanNameUse.unknown)
  HumanNameUse? get use;
  @override

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  Element? get useElement;
  @override

  /// [text] Specifies the entire name as it should be displayed e.g. on an
  /// application UI. This may be provided instead of or as well as the specific
  ///  parts.
  String? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  Element? get textElement;
  @override

  /// [family] The part of a name that links to the genealogy. In some cultures
  ///  (e.g. Eritrea) the family name of a son is the first name of his father.
  String? get family;
  @override

  /// [familyElement] Extensions for family
  @JsonKey(name: '_family')
  Element? get familyElement;
  @override

  /// [given] Given name.
  List<String>? get given;
  @override

  /// [givenElement] Extensions for given
  @JsonKey(name: '_given')
  List<Element?>? get givenElement;
  @override

  /// [prefix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the start
  ///  of the name.
  List<String>? get prefix;
  @override

  /// [prefixElement] Extensions for prefix
  @JsonKey(name: '_prefix')
  List<Element?>? get prefixElement;
  @override

  /// [suffix] Part of the name that is acquired as a title due to academic,
  /// legal, employment or nobility status, etc. and that appears at the end of
  ///  the name.
  List<String>? get suffix;
  @override

  /// [suffixElement] Extensions for suffix
  @JsonKey(name: '_suffix')
  List<Element?>? get suffixElement;
  @override

  /// [period] Indicates the period of time when this name was valid for the
  ///  named person.
  Period? get period;
  @override
  @JsonKey(ignore: true)
  _$$HumanNameImplCopyWith<_$HumanNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [use] The purpose of this address.
  @JsonKey(unknownEnumValue: AddressUse.unknown)
  AddressUse? get use => throw _privateConstructorUsedError;

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  Element? get useElement => throw _privateConstructorUsedError;

  /// [type] Distinguishes between physical addresses (those you can visit) and
  /// mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
  ///  are both.
  @JsonKey(unknownEnumValue: AddressType.unknown)
  AddressType? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  Element? get typeElement => throw _privateConstructorUsedError;

  /// [text] Specifies the entire address as it should be displayed e.g. on a
  /// postal label. This may be provided instead of or as well as the specific
  ///  parts.
  String? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  Element? get textElement => throw _privateConstructorUsedError;

  /// [line] This component contains the house number, apartment number, street
  /// name, street direction,  P.O. Box number, delivery hints, and similar
  ///  address information.
  List<String>? get line => throw _privateConstructorUsedError;

  /// [lineElement] Extensions for line
  @JsonKey(name: '_line')
  List<Element?>? get lineElement => throw _privateConstructorUsedError;

  /// [city] The name of the city, town, suburb, village or other community or
  ///  delivery center.
  String? get city => throw _privateConstructorUsedError;

  /// [cityElement] Extensions for city
  @JsonKey(name: '_city')
  Element? get cityElement => throw _privateConstructorUsedError;

  /// [district] The name of the administrative area (county).
  String? get district => throw _privateConstructorUsedError;

  /// [districtElement] Extensions for district
  @JsonKey(name: '_district')
  Element? get districtElement => throw _privateConstructorUsedError;

  /// [state] Sub-unit of a country with limited sovereignty in a federally
  /// organized country. A code may be used if codes are in common use (e.g. US
  ///  2 letter state codes).
  String? get state => throw _privateConstructorUsedError;

  /// [stateElement] Extensions for state
  @JsonKey(name: '_state')
  Element? get stateElement => throw _privateConstructorUsedError;

  /// [postalCode] A postal code designating a region defined by the postal
  ///  service.
  String? get postalCode => throw _privateConstructorUsedError;

  /// [postalCodeElement] Extensions for postalCode
  @JsonKey(name: '_postalCode')
  Element? get postalCodeElement => throw _privateConstructorUsedError;

  /// [country] Country - a nation as commonly understood or generally
  ///  accepted.
  String? get country => throw _privateConstructorUsedError;

  /// [countryElement] Extensions for country
  @JsonKey(name: '_country')
  Element? get countryElement => throw _privateConstructorUsedError;

  /// [period] Time period when address was/is in use.
  Period? get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: AddressUse.unknown) AddressUse? use,
      @JsonKey(name: '_use') Element? useElement,
      @JsonKey(unknownEnumValue: AddressType.unknown) AddressType? type,
      @JsonKey(name: '_type') Element? typeElement,
      String? text,
      @JsonKey(name: '_text') Element? textElement,
      List<String>? line,
      @JsonKey(name: '_line') List<Element?>? lineElement,
      String? city,
      @JsonKey(name: '_city') Element? cityElement,
      String? district,
      @JsonKey(name: '_district') Element? districtElement,
      String? state,
      @JsonKey(name: '_state') Element? stateElement,
      String? postalCode,
      @JsonKey(name: '_postalCode') Element? postalCodeElement,
      String? country,
      @JsonKey(name: '_country') Element? countryElement,
      Period? period});

  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? line = freezed,
    Object? lineElement = freezed,
    Object? city = freezed,
    Object? cityElement = freezed,
    Object? district = freezed,
    Object? districtElement = freezed,
    Object? state = freezed,
    Object? stateElement = freezed,
    Object? postalCode = freezed,
    Object? postalCodeElement = freezed,
    Object? country = freezed,
    Object? countryElement = freezed,
    Object? period = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as AddressUse?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      line: freezed == line
          ? _value.line
          : line // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lineElement: freezed == lineElement
          ? _value.lineElement
          : lineElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      cityElement: freezed == cityElement
          ? _value.cityElement
          : cityElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      districtElement: freezed == districtElement
          ? _value.districtElement
          : districtElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      stateElement: freezed == stateElement
          ? _value.stateElement
          : stateElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCodeElement: freezed == postalCodeElement
          ? _value.postalCodeElement
          : postalCodeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryElement: freezed == countryElement
          ? _value.countryElement
          : countryElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: AddressUse.unknown) AddressUse? use,
      @JsonKey(name: '_use') Element? useElement,
      @JsonKey(unknownEnumValue: AddressType.unknown) AddressType? type,
      @JsonKey(name: '_type') Element? typeElement,
      String? text,
      @JsonKey(name: '_text') Element? textElement,
      List<String>? line,
      @JsonKey(name: '_line') List<Element?>? lineElement,
      String? city,
      @JsonKey(name: '_city') Element? cityElement,
      String? district,
      @JsonKey(name: '_district') Element? districtElement,
      String? state,
      @JsonKey(name: '_state') Element? stateElement,
      String? postalCode,
      @JsonKey(name: '_postalCode') Element? postalCodeElement,
      String? country,
      @JsonKey(name: '_country') Element? countryElement,
      Period? period});

  @override
  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? line = freezed,
    Object? lineElement = freezed,
    Object? city = freezed,
    Object? cityElement = freezed,
    Object? district = freezed,
    Object? districtElement = freezed,
    Object? state = freezed,
    Object? stateElement = freezed,
    Object? postalCode = freezed,
    Object? postalCodeElement = freezed,
    Object? country = freezed,
    Object? countryElement = freezed,
    Object? period = freezed,
  }) {
    return _then(_$AddressImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as AddressUse?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AddressType?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      line: freezed == line
          ? _value._line
          : line // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lineElement: freezed == lineElement
          ? _value._lineElement
          : lineElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      cityElement: freezed == cityElement
          ? _value.cityElement
          : cityElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      districtElement: freezed == districtElement
          ? _value.districtElement
          : districtElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      stateElement: freezed == stateElement
          ? _value.stateElement
          : stateElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCodeElement: freezed == postalCodeElement
          ? _value.postalCodeElement
          : postalCodeElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      countryElement: freezed == countryElement
          ? _value.countryElement
          : countryElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressImpl extends _Address {
  const _$AddressImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: AddressUse.unknown) this.use,
      @JsonKey(name: '_use') this.useElement,
      @JsonKey(unknownEnumValue: AddressType.unknown) this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.text,
      @JsonKey(name: '_text') this.textElement,
      final List<String>? line,
      @JsonKey(name: '_line') final List<Element?>? lineElement,
      this.city,
      @JsonKey(name: '_city') this.cityElement,
      this.district,
      @JsonKey(name: '_district') this.districtElement,
      this.state,
      @JsonKey(name: '_state') this.stateElement,
      this.postalCode,
      @JsonKey(name: '_postalCode') this.postalCodeElement,
      this.country,
      @JsonKey(name: '_country') this.countryElement,
      this.period})
      : _extension_ = extension_,
        _line = line,
        _lineElement = lineElement,
        super._();

  factory _$AddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [use] The purpose of this address.
  @override
  @JsonKey(unknownEnumValue: AddressUse.unknown)
  final AddressUse? use;

  /// [useElement] Extensions for use
  @override
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [type] Distinguishes between physical addresses (those you can visit) and
  /// mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
  ///  are both.
  @override
  @JsonKey(unknownEnumValue: AddressType.unknown)
  final AddressType? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final Element? typeElement;

  /// [text] Specifies the entire address as it should be displayed e.g. on a
  /// postal label. This may be provided instead of or as well as the specific
  ///  parts.
  @override
  final String? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final Element? textElement;

  /// [line] This component contains the house number, apartment number, street
  /// name, street direction,  P.O. Box number, delivery hints, and similar
  ///  address information.
  final List<String>? _line;

  /// [line] This component contains the house number, apartment number, street
  /// name, street direction,  P.O. Box number, delivery hints, and similar
  ///  address information.
  @override
  List<String>? get line {
    final value = _line;
    if (value == null) return null;
    if (_line is EqualUnmodifiableListView) return _line;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [lineElement] Extensions for line
  final List<Element?>? _lineElement;

  /// [lineElement] Extensions for line
  @override
  @JsonKey(name: '_line')
  List<Element?>? get lineElement {
    final value = _lineElement;
    if (value == null) return null;
    if (_lineElement is EqualUnmodifiableListView) return _lineElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [city] The name of the city, town, suburb, village or other community or
  ///  delivery center.
  @override
  final String? city;

  /// [cityElement] Extensions for city
  @override
  @JsonKey(name: '_city')
  final Element? cityElement;

  /// [district] The name of the administrative area (county).
  @override
  final String? district;

  /// [districtElement] Extensions for district
  @override
  @JsonKey(name: '_district')
  final Element? districtElement;

  /// [state] Sub-unit of a country with limited sovereignty in a federally
  /// organized country. A code may be used if codes are in common use (e.g. US
  ///  2 letter state codes).
  @override
  final String? state;

  /// [stateElement] Extensions for state
  @override
  @JsonKey(name: '_state')
  final Element? stateElement;

  /// [postalCode] A postal code designating a region defined by the postal
  ///  service.
  @override
  final String? postalCode;

  /// [postalCodeElement] Extensions for postalCode
  @override
  @JsonKey(name: '_postalCode')
  final Element? postalCodeElement;

  /// [country] Country - a nation as commonly understood or generally
  ///  accepted.
  @override
  final String? country;

  /// [countryElement] Extensions for country
  @override
  @JsonKey(name: '_country')
  final Element? countryElement;

  /// [period] Time period when address was/is in use.
  @override
  final Period? period;

  @override
  String toString() {
    return 'Address(id: $id, extension_: $extension_, use: $use, useElement: $useElement, type: $type, typeElement: $typeElement, text: $text, textElement: $textElement, line: $line, lineElement: $lineElement, city: $city, cityElement: $cityElement, district: $district, districtElement: $districtElement, state: $state, stateElement: $stateElement, postalCode: $postalCode, postalCodeElement: $postalCodeElement, country: $country, countryElement: $countryElement, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.use, use) || other.use == use) &&
            (identical(other.useElement, useElement) ||
                other.useElement == useElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement) &&
            const DeepCollectionEquality().equals(other._line, _line) &&
            const DeepCollectionEquality()
                .equals(other._lineElement, _lineElement) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.cityElement, cityElement) ||
                other.cityElement == cityElement) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.districtElement, districtElement) ||
                other.districtElement == districtElement) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.stateElement, stateElement) ||
                other.stateElement == stateElement) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.postalCodeElement, postalCodeElement) ||
                other.postalCodeElement == postalCodeElement) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.countryElement, countryElement) ||
                other.countryElement == countryElement) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        use,
        useElement,
        type,
        typeElement,
        text,
        textElement,
        const DeepCollectionEquality().hash(_line),
        const DeepCollectionEquality().hash(_lineElement),
        city,
        cityElement,
        district,
        districtElement,
        state,
        stateElement,
        postalCode,
        postalCodeElement,
        country,
        countryElement,
        period
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressImplToJson(
      this,
    );
  }
}

abstract class _Address extends Address {
  const factory _Address(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: AddressUse.unknown) final AddressUse? use,
      @JsonKey(name: '_use') final Element? useElement,
      @JsonKey(unknownEnumValue: AddressType.unknown) final AddressType? type,
      @JsonKey(name: '_type') final Element? typeElement,
      final String? text,
      @JsonKey(name: '_text') final Element? textElement,
      final List<String>? line,
      @JsonKey(name: '_line') final List<Element?>? lineElement,
      final String? city,
      @JsonKey(name: '_city') final Element? cityElement,
      final String? district,
      @JsonKey(name: '_district') final Element? districtElement,
      final String? state,
      @JsonKey(name: '_state') final Element? stateElement,
      final String? postalCode,
      @JsonKey(name: '_postalCode') final Element? postalCodeElement,
      final String? country,
      @JsonKey(name: '_country') final Element? countryElement,
      final Period? period}) = _$AddressImpl;
  const _Address._() : super._();

  factory _Address.fromJson(Map<String, dynamic> json) = _$AddressImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [use] The purpose of this address.
  @JsonKey(unknownEnumValue: AddressUse.unknown)
  AddressUse? get use;
  @override

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  Element? get useElement;
  @override

  /// [type] Distinguishes between physical addresses (those you can visit) and
  /// mailing addresses (e.g. PO Boxes and care-of addresses). Most addresses
  ///  are both.
  @JsonKey(unknownEnumValue: AddressType.unknown)
  AddressType? get type;
  @override

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  Element? get typeElement;
  @override

  /// [text] Specifies the entire address as it should be displayed e.g. on a
  /// postal label. This may be provided instead of or as well as the specific
  ///  parts.
  String? get text;
  @override

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  Element? get textElement;
  @override

  /// [line] This component contains the house number, apartment number, street
  /// name, street direction,  P.O. Box number, delivery hints, and similar
  ///  address information.
  List<String>? get line;
  @override

  /// [lineElement] Extensions for line
  @JsonKey(name: '_line')
  List<Element?>? get lineElement;
  @override

  /// [city] The name of the city, town, suburb, village or other community or
  ///  delivery center.
  String? get city;
  @override

  /// [cityElement] Extensions for city
  @JsonKey(name: '_city')
  Element? get cityElement;
  @override

  /// [district] The name of the administrative area (county).
  String? get district;
  @override

  /// [districtElement] Extensions for district
  @JsonKey(name: '_district')
  Element? get districtElement;
  @override

  /// [state] Sub-unit of a country with limited sovereignty in a federally
  /// organized country. A code may be used if codes are in common use (e.g. US
  ///  2 letter state codes).
  String? get state;
  @override

  /// [stateElement] Extensions for state
  @JsonKey(name: '_state')
  Element? get stateElement;
  @override

  /// [postalCode] A postal code designating a region defined by the postal
  ///  service.
  String? get postalCode;
  @override

  /// [postalCodeElement] Extensions for postalCode
  @JsonKey(name: '_postalCode')
  Element? get postalCodeElement;
  @override

  /// [country] Country - a nation as commonly understood or generally
  ///  accepted.
  String? get country;
  @override

  /// [countryElement] Extensions for country
  @JsonKey(name: '_country')
  Element? get countryElement;
  @override

  /// [period] Time period when address was/is in use.
  Period? get period;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactPoint _$ContactPointFromJson(Map<String, dynamic> json) {
  return _ContactPoint.fromJson(json);
}

/// @nodoc
mixin _$ContactPoint {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ContactPointSystem.unknown)
  ContactPointSystem? get system => throw _privateConstructorUsedError;

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement => throw _privateConstructorUsedError;

  /// [value] The actual contact point details, in a form that is meaningful to
  ///  the designated communication system (i.e. phone number or email address).
  String? get value => throw _privateConstructorUsedError;

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement => throw _privateConstructorUsedError;

  /// [use] Identifies the purpose for the contact point.
  @JsonKey(unknownEnumValue: ContactPointUse.unknown)
  ContactPointUse? get use => throw _privateConstructorUsedError;

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  Element? get useElement => throw _privateConstructorUsedError;

  /// [rank] Specifies a preferred order in which to use a set of contacts.
  /// ContactPoints with lower rank values are more preferred than those with
  ///  higher rank values.
  FhirPositiveInt? get rank => throw _privateConstructorUsedError;

  /// [rankElement] Extensions for rank
  @JsonKey(name: '_rank')
  Element? get rankElement => throw _privateConstructorUsedError;

  /// [period] Time period when the contact point was/is in use.
  Period? get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactPointCopyWith<ContactPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactPointCopyWith<$Res> {
  factory $ContactPointCopyWith(
          ContactPoint value, $Res Function(ContactPoint) then) =
      _$ContactPointCopyWithImpl<$Res, ContactPoint>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: ContactPointSystem.unknown)
      ContactPointSystem? system,
      @JsonKey(name: '_system') Element? systemElement,
      String? value,
      @JsonKey(name: '_value') Element? valueElement,
      @JsonKey(unknownEnumValue: ContactPointUse.unknown) ContactPointUse? use,
      @JsonKey(name: '_use') Element? useElement,
      FhirPositiveInt? rank,
      @JsonKey(name: '_rank') Element? rankElement,
      Period? period});

  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class _$ContactPointCopyWithImpl<$Res, $Val extends ContactPoint>
    implements $ContactPointCopyWith<$Res> {
  _$ContactPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? rank = freezed,
    Object? rankElement = freezed,
    Object? period = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as ContactPointSystem?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as ContactPointUse?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      rankElement: freezed == rankElement
          ? _value.rankElement
          : rankElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get period {
    if (_value.period == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.period!, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContactPointImplCopyWith<$Res>
    implements $ContactPointCopyWith<$Res> {
  factory _$$ContactPointImplCopyWith(
          _$ContactPointImpl value, $Res Function(_$ContactPointImpl) then) =
      __$$ContactPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: ContactPointSystem.unknown)
      ContactPointSystem? system,
      @JsonKey(name: '_system') Element? systemElement,
      String? value,
      @JsonKey(name: '_value') Element? valueElement,
      @JsonKey(unknownEnumValue: ContactPointUse.unknown) ContactPointUse? use,
      @JsonKey(name: '_use') Element? useElement,
      FhirPositiveInt? rank,
      @JsonKey(name: '_rank') Element? rankElement,
      Period? period});

  @override
  $PeriodCopyWith<$Res>? get period;
}

/// @nodoc
class __$$ContactPointImplCopyWithImpl<$Res>
    extends _$ContactPointCopyWithImpl<$Res, _$ContactPointImpl>
    implements _$$ContactPointImplCopyWith<$Res> {
  __$$ContactPointImplCopyWithImpl(
      _$ContactPointImpl _value, $Res Function(_$ContactPointImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? system = freezed,
    Object? systemElement = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? use = freezed,
    Object? useElement = freezed,
    Object? rank = freezed,
    Object? rankElement = freezed,
    Object? period = freezed,
  }) {
    return _then(_$ContactPointImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      system: freezed == system
          ? _value.system
          : system // ignore: cast_nullable_to_non_nullable
              as ContactPointSystem?,
      systemElement: freezed == systemElement
          ? _value.systemElement
          : systemElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      use: freezed == use
          ? _value.use
          : use // ignore: cast_nullable_to_non_nullable
              as ContactPointUse?,
      useElement: freezed == useElement
          ? _value.useElement
          : useElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      rank: freezed == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      rankElement: freezed == rankElement
          ? _value.rankElement
          : rankElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactPointImpl extends _ContactPoint {
  const _$ContactPointImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: ContactPointSystem.unknown) this.system,
      @JsonKey(name: '_system') this.systemElement,
      this.value,
      @JsonKey(name: '_value') this.valueElement,
      @JsonKey(unknownEnumValue: ContactPointUse.unknown) this.use,
      @JsonKey(name: '_use') this.useElement,
      this.rank,
      @JsonKey(name: '_rank') this.rankElement,
      this.period})
      : _extension_ = extension_,
        super._();

  factory _$ContactPointImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactPointImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(unknownEnumValue: ContactPointSystem.unknown)
  final ContactPointSystem? system;

  /// [systemElement] Extensions for system
  @override
  @JsonKey(name: '_system')
  final Element? systemElement;

  /// [value] The actual contact point details, in a form that is meaningful to
  ///  the designated communication system (i.e. phone number or email address).
  @override
  final String? value;

  /// [valueElement] Extensions for value
  @override
  @JsonKey(name: '_value')
  final Element? valueElement;

  /// [use] Identifies the purpose for the contact point.
  @override
  @JsonKey(unknownEnumValue: ContactPointUse.unknown)
  final ContactPointUse? use;

  /// [useElement] Extensions for use
  @override
  @JsonKey(name: '_use')
  final Element? useElement;

  /// [rank] Specifies a preferred order in which to use a set of contacts.
  /// ContactPoints with lower rank values are more preferred than those with
  ///  higher rank values.
  @override
  final FhirPositiveInt? rank;

  /// [rankElement] Extensions for rank
  @override
  @JsonKey(name: '_rank')
  final Element? rankElement;

  /// [period] Time period when the contact point was/is in use.
  @override
  final Period? period;

  @override
  String toString() {
    return 'ContactPoint(id: $id, extension_: $extension_, system: $system, systemElement: $systemElement, value: $value, valueElement: $valueElement, use: $use, useElement: $useElement, rank: $rank, rankElement: $rankElement, period: $period)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactPointImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.system, system) || other.system == system) &&
            (identical(other.systemElement, systemElement) ||
                other.systemElement == systemElement) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement) &&
            (identical(other.use, use) || other.use == use) &&
            (identical(other.useElement, useElement) ||
                other.useElement == useElement) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.rankElement, rankElement) ||
                other.rankElement == rankElement) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      system,
      systemElement,
      value,
      valueElement,
      use,
      useElement,
      rank,
      rankElement,
      period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactPointImplCopyWith<_$ContactPointImpl> get copyWith =>
      __$$ContactPointImplCopyWithImpl<_$ContactPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactPointImplToJson(
      this,
    );
  }
}

abstract class _ContactPoint extends ContactPoint {
  const factory _ContactPoint(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: ContactPointSystem.unknown)
      final ContactPointSystem? system,
      @JsonKey(name: '_system') final Element? systemElement,
      final String? value,
      @JsonKey(name: '_value') final Element? valueElement,
      @JsonKey(unknownEnumValue: ContactPointUse.unknown)
      final ContactPointUse? use,
      @JsonKey(name: '_use') final Element? useElement,
      final FhirPositiveInt? rank,
      @JsonKey(name: '_rank') final Element? rankElement,
      final Period? period}) = _$ContactPointImpl;
  const _ContactPoint._() : super._();

  factory _ContactPoint.fromJson(Map<String, dynamic> json) =
      _$ContactPointImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  @JsonKey(unknownEnumValue: ContactPointSystem.unknown)
  ContactPointSystem? get system;
  @override

  /// [systemElement] Extensions for system
  @JsonKey(name: '_system')
  Element? get systemElement;
  @override

  /// [value] The actual contact point details, in a form that is meaningful to
  ///  the designated communication system (i.e. phone number or email address).
  String? get value;
  @override

  /// [valueElement] Extensions for value
  @JsonKey(name: '_value')
  Element? get valueElement;
  @override

  /// [use] Identifies the purpose for the contact point.
  @JsonKey(unknownEnumValue: ContactPointUse.unknown)
  ContactPointUse? get use;
  @override

  /// [useElement] Extensions for use
  @JsonKey(name: '_use')
  Element? get useElement;
  @override

  /// [rank] Specifies a preferred order in which to use a set of contacts.
  /// ContactPoints with lower rank values are more preferred than those with
  ///  higher rank values.
  FhirPositiveInt? get rank;
  @override

  /// [rankElement] Extensions for rank
  @JsonKey(name: '_rank')
  Element? get rankElement;
  @override

  /// [period] Time period when the contact point was/is in use.
  Period? get period;
  @override
  @JsonKey(ignore: true)
  _$$ContactPointImplCopyWith<_$ContactPointImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Timing _$TimingFromJson(Map<String, dynamic> json) {
  return _Timing.fromJson(json);
}

/// @nodoc
mixin _$Timing {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [event] Identifies specific times when the event occurs.
  List<FhirDateTime>? get event => throw _privateConstructorUsedError;

  /// [eventElement] Extensions for event
  @JsonKey(name: '_event')
  List<Element?>? get eventElement => throw _privateConstructorUsedError;

  /// [repeat] A set of rules that describe when the event is scheduled.
  TimingRepeat? get repeat => throw _privateConstructorUsedError;

  /// [code] A code for the timing schedule (or just text in code.text). Some
  /// codes such as BID are ubiquitous, but many institutions define their own
  /// additional codes. If a code is provided, the code is understood to be a
  /// complete statement of whatever is specified in the structured timing data,
  /// and either the code or the data may be used to interpret the Timing, with
  /// the exception that .repeat.bounds still applies over the code (and is not
  ///  contained in the code).
  CodeableConcept? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimingCopyWith<Timing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimingCopyWith<$Res> {
  factory $TimingCopyWith(Timing value, $Res Function(Timing) then) =
      _$TimingCopyWithImpl<$Res, Timing>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirDateTime>? event,
      @JsonKey(name: '_event') List<Element?>? eventElement,
      TimingRepeat? repeat,
      CodeableConcept? code});

  $TimingRepeatCopyWith<$Res>? get repeat;
  $CodeableConceptCopyWith<$Res>? get code;
}

/// @nodoc
class _$TimingCopyWithImpl<$Res, $Val extends Timing>
    implements $TimingCopyWith<$Res> {
  _$TimingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? event = freezed,
    Object? eventElement = freezed,
    Object? repeat = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      event: freezed == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as List<FhirDateTime>?,
      eventElement: freezed == eventElement
          ? _value.eventElement
          : eventElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as TimingRepeat?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimingRepeatCopyWith<$Res>? get repeat {
    if (_value.repeat == null) {
      return null;
    }

    return $TimingRepeatCopyWith<$Res>(_value.repeat!, (value) {
      return _then(_value.copyWith(repeat: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get code {
    if (_value.code == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.code!, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimingImplCopyWith<$Res> implements $TimingCopyWith<$Res> {
  factory _$$TimingImplCopyWith(
          _$TimingImpl value, $Res Function(_$TimingImpl) then) =
      __$$TimingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<FhirDateTime>? event,
      @JsonKey(name: '_event') List<Element?>? eventElement,
      TimingRepeat? repeat,
      CodeableConcept? code});

  @override
  $TimingRepeatCopyWith<$Res>? get repeat;
  @override
  $CodeableConceptCopyWith<$Res>? get code;
}

/// @nodoc
class __$$TimingImplCopyWithImpl<$Res>
    extends _$TimingCopyWithImpl<$Res, _$TimingImpl>
    implements _$$TimingImplCopyWith<$Res> {
  __$$TimingImplCopyWithImpl(
      _$TimingImpl _value, $Res Function(_$TimingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? event = freezed,
    Object? eventElement = freezed,
    Object? repeat = freezed,
    Object? code = freezed,
  }) {
    return _then(_$TimingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      event: freezed == event
          ? _value._event
          : event // ignore: cast_nullable_to_non_nullable
              as List<FhirDateTime>?,
      eventElement: freezed == eventElement
          ? _value._eventElement
          : eventElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      repeat: freezed == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as TimingRepeat?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimingImpl extends _Timing {
  const _$TimingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<FhirDateTime>? event,
      @JsonKey(name: '_event') final List<Element?>? eventElement,
      this.repeat,
      this.code})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _event = event,
        _eventElement = eventElement,
        super._();

  factory _$TimingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimingImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [event] Identifies specific times when the event occurs.
  final List<FhirDateTime>? _event;

  /// [event] Identifies specific times when the event occurs.
  @override
  List<FhirDateTime>? get event {
    final value = _event;
    if (value == null) return null;
    if (_event is EqualUnmodifiableListView) return _event;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [eventElement] Extensions for event
  final List<Element?>? _eventElement;

  /// [eventElement] Extensions for event
  @override
  @JsonKey(name: '_event')
  List<Element?>? get eventElement {
    final value = _eventElement;
    if (value == null) return null;
    if (_eventElement is EqualUnmodifiableListView) return _eventElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [repeat] A set of rules that describe when the event is scheduled.
  @override
  final TimingRepeat? repeat;

  /// [code] A code for the timing schedule (or just text in code.text). Some
  /// codes such as BID are ubiquitous, but many institutions define their own
  /// additional codes. If a code is provided, the code is understood to be a
  /// complete statement of whatever is specified in the structured timing data,
  /// and either the code or the data may be used to interpret the Timing, with
  /// the exception that .repeat.bounds still applies over the code (and is not
  ///  contained in the code).
  @override
  final CodeableConcept? code;

  @override
  String toString() {
    return 'Timing(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, event: $event, eventElement: $eventElement, repeat: $repeat, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._event, _event) &&
            const DeepCollectionEquality()
                .equals(other._eventElement, _eventElement) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_event),
      const DeepCollectionEquality().hash(_eventElement),
      repeat,
      code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimingImplCopyWith<_$TimingImpl> get copyWith =>
      __$$TimingImplCopyWithImpl<_$TimingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimingImplToJson(
      this,
    );
  }
}

abstract class _Timing extends Timing {
  const factory _Timing(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<FhirDateTime>? event,
      @JsonKey(name: '_event') final List<Element?>? eventElement,
      final TimingRepeat? repeat,
      final CodeableConcept? code}) = _$TimingImpl;
  const _Timing._() : super._();

  factory _Timing.fromJson(Map<String, dynamic> json) = _$TimingImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [event] Identifies specific times when the event occurs.
  List<FhirDateTime>? get event;
  @override

  /// [eventElement] Extensions for event
  @JsonKey(name: '_event')
  List<Element?>? get eventElement;
  @override

  /// [repeat] A set of rules that describe when the event is scheduled.
  TimingRepeat? get repeat;
  @override

  /// [code] A code for the timing schedule (or just text in code.text). Some
  /// codes such as BID are ubiquitous, but many institutions define their own
  /// additional codes. If a code is provided, the code is understood to be a
  /// complete statement of whatever is specified in the structured timing data,
  /// and either the code or the data may be used to interpret the Timing, with
  /// the exception that .repeat.bounds still applies over the code (and is not
  ///  contained in the code).
  CodeableConcept? get code;
  @override
  @JsonKey(ignore: true)
  _$$TimingImplCopyWith<_$TimingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimingRepeat _$TimingRepeatFromJson(Map<String, dynamic> json) {
  return _TimingRepeat.fromJson(json);
}

/// @nodoc
mixin _$TimingRepeat {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [boundsDuration] Either a duration for the length of the timing schedule,
  /// a range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  FhirDuration? get boundsDuration => throw _privateConstructorUsedError;

  /// [boundsRange] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  Range? get boundsRange => throw _privateConstructorUsedError;

  /// [boundsPeriod] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  Period? get boundsPeriod => throw _privateConstructorUsedError;

  /// [count] A total count of the desired number of repetitions across the
  /// duration of the entire timing specification. If countMax is present, this
  ///  element indicates the lower bound of the allowed range of count values.
  FhirPositiveInt? get count => throw _privateConstructorUsedError;

  /// [countElement] Extensions for count
  @JsonKey(name: '_count')
  Element? get countElement => throw _privateConstructorUsedError;

  /// [countMax] If present, indicates that the count is a range - so to
  ///  perform the action between [count] and [countMax] times.
  FhirPositiveInt? get countMax => throw _privateConstructorUsedError;

  /// [countMaxElement] Extensions for countMax
  @JsonKey(name: '_countMax')
  Element? get countMaxElement => throw _privateConstructorUsedError;

  /// [duration] How long this thing happens for when it happens. If
  /// durationMax is present, this element indicates the lower bound of the
  ///  allowed range of the duration.
  FhirDecimal? get duration => throw _privateConstructorUsedError;

  /// [durationElement] Extensions for duration
  @JsonKey(name: '_duration')
  Element? get durationElement => throw _privateConstructorUsedError;

  /// [durationMax] If present, indicates that the duration is a range - so to
  ///  perform the action between [duration] and [durationMax] time length.
  FhirDecimal? get durationMax => throw _privateConstructorUsedError;

  /// [durationMaxElement] Extensions for durationMax
  @JsonKey(name: '_durationMax')
  Element? get durationMaxElement => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
  TimingRepeatDurationUnit? get durationUnit =>
      throw _privateConstructorUsedError;

  /// [durationUnitElement] Extensions for durationUnit
  @JsonKey(name: '_durationUnit')
  Element? get durationUnitElement => throw _privateConstructorUsedError;

  /// [frequency] The number of times to repeat the action within the specified
  /// period. If frequencyMax is present, this element indicates the lower bound
  ///  of the allowed range of the frequency.
  FhirPositiveInt? get frequency => throw _privateConstructorUsedError;

  /// [frequencyElement] Extensions for frequency
  @JsonKey(name: '_frequency')
  Element? get frequencyElement => throw _privateConstructorUsedError;

  /// [frequencyMax] If present, indicates that the frequency is a range - so
  /// to repeat between [frequency] and [frequencyMax] times within the period
  ///  or period range.
  FhirPositiveInt? get frequencyMax => throw _privateConstructorUsedError;

  /// [frequencyMaxElement] Extensions for frequencyMax
  @JsonKey(name: '_frequencyMax')
  Element? get frequencyMaxElement => throw _privateConstructorUsedError;

  /// [period] Indicates the duration of time over which repetitions are to
  /// occur; e.g. to express "3 times per day", 3 would be the frequency and "1
  /// day" would be the period. If periodMax is present, this element indicates
  ///  the lower bound of the allowed range of the period length.
  FhirDecimal? get period => throw _privateConstructorUsedError;

  /// [periodElement] Extensions for period
  @JsonKey(name: '_period')
  Element? get periodElement => throw _privateConstructorUsedError;

  /// [periodMax] If present, indicates that the period is a range from [period]
  /// to [periodMax], allowing expressing concepts such as "do this once every
  /// 3-5 days.
  FhirDecimal? get periodMax => throw _privateConstructorUsedError;

  /// [periodMaxElement] Extensions for periodMax
  @JsonKey(name: '_periodMax')
  Element? get periodMaxElement => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
  TimingRepeatPeriodUnit? get periodUnit => throw _privateConstructorUsedError;

  /// [periodUnitElement] Extensions for periodUnit
  @JsonKey(name: '_periodUnit')
  Element? get periodUnitElement => throw _privateConstructorUsedError;

  /// [dayOfWeek] If one or more days of week is provided, then the action
  ///  happens only on the specified day(s).
  List<FhirCode>? get dayOfWeek => throw _privateConstructorUsedError;

  /// [dayOfWeekElement] Extensions for dayOfWeek
  @JsonKey(name: '_dayOfWeek')
  List<Element?>? get dayOfWeekElement => throw _privateConstructorUsedError;

  /// [timeOfDay] Specified time of day for action to take place.
  List<FhirTime>? get timeOfDay => throw _privateConstructorUsedError;

  /// [timeOfDayElement] Extensions for timeOfDay
  @JsonKey(name: '_timeOfDay')
  List<Element?>? get timeOfDayElement => throw _privateConstructorUsedError;

  /// [when] An approximate time period during the day, potentially linked to
  ///  an event of daily living that indicates when the action should occur.
  List<TimingRepeatWhen>? get when => throw _privateConstructorUsedError;

  /// [whenElement] Extensions for when
  @JsonKey(name: '_when')
  List<Element?>? get whenElement => throw _privateConstructorUsedError;

  /// [offset] The number of minutes from the event. If the event code does not
  /// indicate whether the minutes is before or after the event, then the offset
  ///  is assumed to be after the event.
  FhirUnsignedInt? get offset => throw _privateConstructorUsedError;

  /// [offsetElement] Extensions for offset
  @JsonKey(name: '_offset')
  Element? get offsetElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimingRepeatCopyWith<TimingRepeat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimingRepeatCopyWith<$Res> {
  factory $TimingRepeatCopyWith(
          TimingRepeat value, $Res Function(TimingRepeat) then) =
      _$TimingRepeatCopyWithImpl<$Res, TimingRepeat>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirDuration? boundsDuration,
      Range? boundsRange,
      Period? boundsPeriod,
      FhirPositiveInt? count,
      @JsonKey(name: '_count') Element? countElement,
      FhirPositiveInt? countMax,
      @JsonKey(name: '_countMax') Element? countMaxElement,
      FhirDecimal? duration,
      @JsonKey(name: '_duration') Element? durationElement,
      FhirDecimal? durationMax,
      @JsonKey(name: '_durationMax') Element? durationMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
      TimingRepeatDurationUnit? durationUnit,
      @JsonKey(name: '_durationUnit') Element? durationUnitElement,
      FhirPositiveInt? frequency,
      @JsonKey(name: '_frequency') Element? frequencyElement,
      FhirPositiveInt? frequencyMax,
      @JsonKey(name: '_frequencyMax') Element? frequencyMaxElement,
      FhirDecimal? period,
      @JsonKey(name: '_period') Element? periodElement,
      FhirDecimal? periodMax,
      @JsonKey(name: '_periodMax') Element? periodMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
      TimingRepeatPeriodUnit? periodUnit,
      @JsonKey(name: '_periodUnit') Element? periodUnitElement,
      List<FhirCode>? dayOfWeek,
      @JsonKey(name: '_dayOfWeek') List<Element?>? dayOfWeekElement,
      List<FhirTime>? timeOfDay,
      @JsonKey(name: '_timeOfDay') List<Element?>? timeOfDayElement,
      List<TimingRepeatWhen>? when,
      @JsonKey(name: '_when') List<Element?>? whenElement,
      FhirUnsignedInt? offset,
      @JsonKey(name: '_offset') Element? offsetElement});

  $FhirDurationCopyWith<$Res>? get boundsDuration;
  $RangeCopyWith<$Res>? get boundsRange;
  $PeriodCopyWith<$Res>? get boundsPeriod;
}

/// @nodoc
class _$TimingRepeatCopyWithImpl<$Res, $Val extends TimingRepeat>
    implements $TimingRepeatCopyWith<$Res> {
  _$TimingRepeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? boundsDuration = freezed,
    Object? boundsRange = freezed,
    Object? boundsPeriod = freezed,
    Object? count = freezed,
    Object? countElement = freezed,
    Object? countMax = freezed,
    Object? countMaxElement = freezed,
    Object? duration = freezed,
    Object? durationElement = freezed,
    Object? durationMax = freezed,
    Object? durationMaxElement = freezed,
    Object? durationUnit = freezed,
    Object? durationUnitElement = freezed,
    Object? frequency = freezed,
    Object? frequencyElement = freezed,
    Object? frequencyMax = freezed,
    Object? frequencyMaxElement = freezed,
    Object? period = freezed,
    Object? periodElement = freezed,
    Object? periodMax = freezed,
    Object? periodMaxElement = freezed,
    Object? periodUnit = freezed,
    Object? periodUnitElement = freezed,
    Object? dayOfWeek = freezed,
    Object? dayOfWeekElement = freezed,
    Object? timeOfDay = freezed,
    Object? timeOfDayElement = freezed,
    Object? when = freezed,
    Object? whenElement = freezed,
    Object? offset = freezed,
    Object? offsetElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      boundsDuration: freezed == boundsDuration
          ? _value.boundsDuration
          : boundsDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      boundsRange: freezed == boundsRange
          ? _value.boundsRange
          : boundsRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      boundsPeriod: freezed == boundsPeriod
          ? _value.boundsPeriod
          : boundsPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      countElement: freezed == countElement
          ? _value.countElement
          : countElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      countMax: freezed == countMax
          ? _value.countMax
          : countMax // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      countMaxElement: freezed == countMaxElement
          ? _value.countMaxElement
          : countMaxElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      durationElement: freezed == durationElement
          ? _value.durationElement
          : durationElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      durationMax: freezed == durationMax
          ? _value.durationMax
          : durationMax // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      durationMaxElement: freezed == durationMaxElement
          ? _value.durationMaxElement
          : durationMaxElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      durationUnit: freezed == durationUnit
          ? _value.durationUnit
          : durationUnit // ignore: cast_nullable_to_non_nullable
              as TimingRepeatDurationUnit?,
      durationUnitElement: freezed == durationUnitElement
          ? _value.durationUnitElement
          : durationUnitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      frequencyElement: freezed == frequencyElement
          ? _value.frequencyElement
          : frequencyElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      frequencyMax: freezed == frequencyMax
          ? _value.frequencyMax
          : frequencyMax // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      frequencyMaxElement: freezed == frequencyMaxElement
          ? _value.frequencyMaxElement
          : frequencyMaxElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      periodElement: freezed == periodElement
          ? _value.periodElement
          : periodElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      periodMax: freezed == periodMax
          ? _value.periodMax
          : periodMax // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      periodMaxElement: freezed == periodMaxElement
          ? _value.periodMaxElement
          : periodMaxElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      periodUnit: freezed == periodUnit
          ? _value.periodUnit
          : periodUnit // ignore: cast_nullable_to_non_nullable
              as TimingRepeatPeriodUnit?,
      periodUnitElement: freezed == periodUnitElement
          ? _value.periodUnitElement
          : periodUnitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      dayOfWeek: freezed == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      dayOfWeekElement: freezed == dayOfWeekElement
          ? _value.dayOfWeekElement
          : dayOfWeekElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      timeOfDay: freezed == timeOfDay
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as List<FhirTime>?,
      timeOfDayElement: freezed == timeOfDayElement
          ? _value.timeOfDayElement
          : timeOfDayElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      when: freezed == when
          ? _value.when
          : when // ignore: cast_nullable_to_non_nullable
              as List<TimingRepeatWhen>?,
      whenElement: freezed == whenElement
          ? _value.whenElement
          : whenElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      offsetElement: freezed == offsetElement
          ? _value.offsetElement
          : offsetElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get boundsDuration {
    if (_value.boundsDuration == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.boundsDuration!, (value) {
      return _then(_value.copyWith(boundsDuration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get boundsRange {
    if (_value.boundsRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.boundsRange!, (value) {
      return _then(_value.copyWith(boundsRange: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get boundsPeriod {
    if (_value.boundsPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.boundsPeriod!, (value) {
      return _then(_value.copyWith(boundsPeriod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimingRepeatImplCopyWith<$Res>
    implements $TimingRepeatCopyWith<$Res> {
  factory _$$TimingRepeatImplCopyWith(
          _$TimingRepeatImpl value, $Res Function(_$TimingRepeatImpl) then) =
      __$$TimingRepeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirDuration? boundsDuration,
      Range? boundsRange,
      Period? boundsPeriod,
      FhirPositiveInt? count,
      @JsonKey(name: '_count') Element? countElement,
      FhirPositiveInt? countMax,
      @JsonKey(name: '_countMax') Element? countMaxElement,
      FhirDecimal? duration,
      @JsonKey(name: '_duration') Element? durationElement,
      FhirDecimal? durationMax,
      @JsonKey(name: '_durationMax') Element? durationMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
      TimingRepeatDurationUnit? durationUnit,
      @JsonKey(name: '_durationUnit') Element? durationUnitElement,
      FhirPositiveInt? frequency,
      @JsonKey(name: '_frequency') Element? frequencyElement,
      FhirPositiveInt? frequencyMax,
      @JsonKey(name: '_frequencyMax') Element? frequencyMaxElement,
      FhirDecimal? period,
      @JsonKey(name: '_period') Element? periodElement,
      FhirDecimal? periodMax,
      @JsonKey(name: '_periodMax') Element? periodMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
      TimingRepeatPeriodUnit? periodUnit,
      @JsonKey(name: '_periodUnit') Element? periodUnitElement,
      List<FhirCode>? dayOfWeek,
      @JsonKey(name: '_dayOfWeek') List<Element?>? dayOfWeekElement,
      List<FhirTime>? timeOfDay,
      @JsonKey(name: '_timeOfDay') List<Element?>? timeOfDayElement,
      List<TimingRepeatWhen>? when,
      @JsonKey(name: '_when') List<Element?>? whenElement,
      FhirUnsignedInt? offset,
      @JsonKey(name: '_offset') Element? offsetElement});

  @override
  $FhirDurationCopyWith<$Res>? get boundsDuration;
  @override
  $RangeCopyWith<$Res>? get boundsRange;
  @override
  $PeriodCopyWith<$Res>? get boundsPeriod;
}

/// @nodoc
class __$$TimingRepeatImplCopyWithImpl<$Res>
    extends _$TimingRepeatCopyWithImpl<$Res, _$TimingRepeatImpl>
    implements _$$TimingRepeatImplCopyWith<$Res> {
  __$$TimingRepeatImplCopyWithImpl(
      _$TimingRepeatImpl _value, $Res Function(_$TimingRepeatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? boundsDuration = freezed,
    Object? boundsRange = freezed,
    Object? boundsPeriod = freezed,
    Object? count = freezed,
    Object? countElement = freezed,
    Object? countMax = freezed,
    Object? countMaxElement = freezed,
    Object? duration = freezed,
    Object? durationElement = freezed,
    Object? durationMax = freezed,
    Object? durationMaxElement = freezed,
    Object? durationUnit = freezed,
    Object? durationUnitElement = freezed,
    Object? frequency = freezed,
    Object? frequencyElement = freezed,
    Object? frequencyMax = freezed,
    Object? frequencyMaxElement = freezed,
    Object? period = freezed,
    Object? periodElement = freezed,
    Object? periodMax = freezed,
    Object? periodMaxElement = freezed,
    Object? periodUnit = freezed,
    Object? periodUnitElement = freezed,
    Object? dayOfWeek = freezed,
    Object? dayOfWeekElement = freezed,
    Object? timeOfDay = freezed,
    Object? timeOfDayElement = freezed,
    Object? when = freezed,
    Object? whenElement = freezed,
    Object? offset = freezed,
    Object? offsetElement = freezed,
  }) {
    return _then(_$TimingRepeatImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      boundsDuration: freezed == boundsDuration
          ? _value.boundsDuration
          : boundsDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      boundsRange: freezed == boundsRange
          ? _value.boundsRange
          : boundsRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      boundsPeriod: freezed == boundsPeriod
          ? _value.boundsPeriod
          : boundsPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      countElement: freezed == countElement
          ? _value.countElement
          : countElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      countMax: freezed == countMax
          ? _value.countMax
          : countMax // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      countMaxElement: freezed == countMaxElement
          ? _value.countMaxElement
          : countMaxElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      durationElement: freezed == durationElement
          ? _value.durationElement
          : durationElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      durationMax: freezed == durationMax
          ? _value.durationMax
          : durationMax // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      durationMaxElement: freezed == durationMaxElement
          ? _value.durationMaxElement
          : durationMaxElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      durationUnit: freezed == durationUnit
          ? _value.durationUnit
          : durationUnit // ignore: cast_nullable_to_non_nullable
              as TimingRepeatDurationUnit?,
      durationUnitElement: freezed == durationUnitElement
          ? _value.durationUnitElement
          : durationUnitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      frequencyElement: freezed == frequencyElement
          ? _value.frequencyElement
          : frequencyElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      frequencyMax: freezed == frequencyMax
          ? _value.frequencyMax
          : frequencyMax // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      frequencyMaxElement: freezed == frequencyMaxElement
          ? _value.frequencyMaxElement
          : frequencyMaxElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      period: freezed == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      periodElement: freezed == periodElement
          ? _value.periodElement
          : periodElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      periodMax: freezed == periodMax
          ? _value.periodMax
          : periodMax // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      periodMaxElement: freezed == periodMaxElement
          ? _value.periodMaxElement
          : periodMaxElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      periodUnit: freezed == periodUnit
          ? _value.periodUnit
          : periodUnit // ignore: cast_nullable_to_non_nullable
              as TimingRepeatPeriodUnit?,
      periodUnitElement: freezed == periodUnitElement
          ? _value.periodUnitElement
          : periodUnitElement // ignore: cast_nullable_to_non_nullable
              as Element?,
      dayOfWeek: freezed == dayOfWeek
          ? _value._dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as List<FhirCode>?,
      dayOfWeekElement: freezed == dayOfWeekElement
          ? _value._dayOfWeekElement
          : dayOfWeekElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      timeOfDay: freezed == timeOfDay
          ? _value._timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as List<FhirTime>?,
      timeOfDayElement: freezed == timeOfDayElement
          ? _value._timeOfDayElement
          : timeOfDayElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      when: freezed == when
          ? _value._when
          : when // ignore: cast_nullable_to_non_nullable
              as List<TimingRepeatWhen>?,
      whenElement: freezed == whenElement
          ? _value._whenElement
          : whenElement // ignore: cast_nullable_to_non_nullable
              as List<Element?>?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      offsetElement: freezed == offsetElement
          ? _value.offsetElement
          : offsetElement // ignore: cast_nullable_to_non_nullable
              as Element?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimingRepeatImpl extends _TimingRepeat {
  const _$TimingRepeatImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.boundsDuration,
      this.boundsRange,
      this.boundsPeriod,
      this.count,
      @JsonKey(name: '_count') this.countElement,
      this.countMax,
      @JsonKey(name: '_countMax') this.countMaxElement,
      this.duration,
      @JsonKey(name: '_duration') this.durationElement,
      this.durationMax,
      @JsonKey(name: '_durationMax') this.durationMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
      this.durationUnit,
      @JsonKey(name: '_durationUnit') this.durationUnitElement,
      this.frequency,
      @JsonKey(name: '_frequency') this.frequencyElement,
      this.frequencyMax,
      @JsonKey(name: '_frequencyMax') this.frequencyMaxElement,
      this.period,
      @JsonKey(name: '_period') this.periodElement,
      this.periodMax,
      @JsonKey(name: '_periodMax') this.periodMaxElement,
      @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
      this.periodUnit,
      @JsonKey(name: '_periodUnit') this.periodUnitElement,
      final List<FhirCode>? dayOfWeek,
      @JsonKey(name: '_dayOfWeek') final List<Element?>? dayOfWeekElement,
      final List<FhirTime>? timeOfDay,
      @JsonKey(name: '_timeOfDay') final List<Element?>? timeOfDayElement,
      final List<TimingRepeatWhen>? when,
      @JsonKey(name: '_when') final List<Element?>? whenElement,
      this.offset,
      @JsonKey(name: '_offset') this.offsetElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _dayOfWeek = dayOfWeek,
        _dayOfWeekElement = dayOfWeekElement,
        _timeOfDay = timeOfDay,
        _timeOfDayElement = timeOfDayElement,
        _when = when,
        _whenElement = whenElement,
        super._();

  factory _$TimingRepeatImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimingRepeatImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [boundsDuration] Either a duration for the length of the timing schedule,
  /// a range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  @override
  final FhirDuration? boundsDuration;

  /// [boundsRange] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  @override
  final Range? boundsRange;

  /// [boundsPeriod] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  @override
  final Period? boundsPeriod;

  /// [count] A total count of the desired number of repetitions across the
  /// duration of the entire timing specification. If countMax is present, this
  ///  element indicates the lower bound of the allowed range of count values.
  @override
  final FhirPositiveInt? count;

  /// [countElement] Extensions for count
  @override
  @JsonKey(name: '_count')
  final Element? countElement;

  /// [countMax] If present, indicates that the count is a range - so to
  ///  perform the action between [count] and [countMax] times.
  @override
  final FhirPositiveInt? countMax;

  /// [countMaxElement] Extensions for countMax
  @override
  @JsonKey(name: '_countMax')
  final Element? countMaxElement;

  /// [duration] How long this thing happens for when it happens. If
  /// durationMax is present, this element indicates the lower bound of the
  ///  allowed range of the duration.
  @override
  final FhirDecimal? duration;

  /// [durationElement] Extensions for duration
  @override
  @JsonKey(name: '_duration')
  final Element? durationElement;

  /// [durationMax] If present, indicates that the duration is a range - so to
  ///  perform the action between [duration] and [durationMax] time length.
  @override
  final FhirDecimal? durationMax;

  /// [durationMaxElement] Extensions for durationMax
  @override
  @JsonKey(name: '_durationMax')
  final Element? durationMaxElement;
  @override
  @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
  final TimingRepeatDurationUnit? durationUnit;

  /// [durationUnitElement] Extensions for durationUnit
  @override
  @JsonKey(name: '_durationUnit')
  final Element? durationUnitElement;

  /// [frequency] The number of times to repeat the action within the specified
  /// period. If frequencyMax is present, this element indicates the lower bound
  ///  of the allowed range of the frequency.
  @override
  final FhirPositiveInt? frequency;

  /// [frequencyElement] Extensions for frequency
  @override
  @JsonKey(name: '_frequency')
  final Element? frequencyElement;

  /// [frequencyMax] If present, indicates that the frequency is a range - so
  /// to repeat between [frequency] and [frequencyMax] times within the period
  ///  or period range.
  @override
  final FhirPositiveInt? frequencyMax;

  /// [frequencyMaxElement] Extensions for frequencyMax
  @override
  @JsonKey(name: '_frequencyMax')
  final Element? frequencyMaxElement;

  /// [period] Indicates the duration of time over which repetitions are to
  /// occur; e.g. to express "3 times per day", 3 would be the frequency and "1
  /// day" would be the period. If periodMax is present, this element indicates
  ///  the lower bound of the allowed range of the period length.
  @override
  final FhirDecimal? period;

  /// [periodElement] Extensions for period
  @override
  @JsonKey(name: '_period')
  final Element? periodElement;

  /// [periodMax] If present, indicates that the period is a range from [period]
  /// to [periodMax], allowing expressing concepts such as "do this once every
  /// 3-5 days.
  @override
  final FhirDecimal? periodMax;

  /// [periodMaxElement] Extensions for periodMax
  @override
  @JsonKey(name: '_periodMax')
  final Element? periodMaxElement;
  @override
  @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
  final TimingRepeatPeriodUnit? periodUnit;

  /// [periodUnitElement] Extensions for periodUnit
  @override
  @JsonKey(name: '_periodUnit')
  final Element? periodUnitElement;

  /// [dayOfWeek] If one or more days of week is provided, then the action
  ///  happens only on the specified day(s).
  final List<FhirCode>? _dayOfWeek;

  /// [dayOfWeek] If one or more days of week is provided, then the action
  ///  happens only on the specified day(s).
  @override
  List<FhirCode>? get dayOfWeek {
    final value = _dayOfWeek;
    if (value == null) return null;
    if (_dayOfWeek is EqualUnmodifiableListView) return _dayOfWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [dayOfWeekElement] Extensions for dayOfWeek
  final List<Element?>? _dayOfWeekElement;

  /// [dayOfWeekElement] Extensions for dayOfWeek
  @override
  @JsonKey(name: '_dayOfWeek')
  List<Element?>? get dayOfWeekElement {
    final value = _dayOfWeekElement;
    if (value == null) return null;
    if (_dayOfWeekElement is EqualUnmodifiableListView)
      return _dayOfWeekElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [timeOfDay] Specified time of day for action to take place.
  final List<FhirTime>? _timeOfDay;

  /// [timeOfDay] Specified time of day for action to take place.
  @override
  List<FhirTime>? get timeOfDay {
    final value = _timeOfDay;
    if (value == null) return null;
    if (_timeOfDay is EqualUnmodifiableListView) return _timeOfDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [timeOfDayElement] Extensions for timeOfDay
  final List<Element?>? _timeOfDayElement;

  /// [timeOfDayElement] Extensions for timeOfDay
  @override
  @JsonKey(name: '_timeOfDay')
  List<Element?>? get timeOfDayElement {
    final value = _timeOfDayElement;
    if (value == null) return null;
    if (_timeOfDayElement is EqualUnmodifiableListView)
      return _timeOfDayElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [when] An approximate time period during the day, potentially linked to
  ///  an event of daily living that indicates when the action should occur.
  final List<TimingRepeatWhen>? _when;

  /// [when] An approximate time period during the day, potentially linked to
  ///  an event of daily living that indicates when the action should occur.
  @override
  List<TimingRepeatWhen>? get when {
    final value = _when;
    if (value == null) return null;
    if (_when is EqualUnmodifiableListView) return _when;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [whenElement] Extensions for when
  final List<Element?>? _whenElement;

  /// [whenElement] Extensions for when
  @override
  @JsonKey(name: '_when')
  List<Element?>? get whenElement {
    final value = _whenElement;
    if (value == null) return null;
    if (_whenElement is EqualUnmodifiableListView) return _whenElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [offset] The number of minutes from the event. If the event code does not
  /// indicate whether the minutes is before or after the event, then the offset
  ///  is assumed to be after the event.
  @override
  final FhirUnsignedInt? offset;

  /// [offsetElement] Extensions for offset
  @override
  @JsonKey(name: '_offset')
  final Element? offsetElement;

  @override
  String toString() {
    return 'TimingRepeat(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, boundsDuration: $boundsDuration, boundsRange: $boundsRange, boundsPeriod: $boundsPeriod, count: $count, countElement: $countElement, countMax: $countMax, countMaxElement: $countMaxElement, duration: $duration, durationElement: $durationElement, durationMax: $durationMax, durationMaxElement: $durationMaxElement, durationUnit: $durationUnit, durationUnitElement: $durationUnitElement, frequency: $frequency, frequencyElement: $frequencyElement, frequencyMax: $frequencyMax, frequencyMaxElement: $frequencyMaxElement, period: $period, periodElement: $periodElement, periodMax: $periodMax, periodMaxElement: $periodMaxElement, periodUnit: $periodUnit, periodUnitElement: $periodUnitElement, dayOfWeek: $dayOfWeek, dayOfWeekElement: $dayOfWeekElement, timeOfDay: $timeOfDay, timeOfDayElement: $timeOfDayElement, when: $when, whenElement: $whenElement, offset: $offset, offsetElement: $offsetElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimingRepeatImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.boundsDuration, boundsDuration) ||
                other.boundsDuration == boundsDuration) &&
            (identical(other.boundsRange, boundsRange) ||
                other.boundsRange == boundsRange) &&
            (identical(other.boundsPeriod, boundsPeriod) ||
                other.boundsPeriod == boundsPeriod) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.countElement, countElement) ||
                other.countElement == countElement) &&
            (identical(other.countMax, countMax) ||
                other.countMax == countMax) &&
            (identical(other.countMaxElement, countMaxElement) ||
                other.countMaxElement == countMaxElement) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.durationElement, durationElement) ||
                other.durationElement == durationElement) &&
            (identical(other.durationMax, durationMax) ||
                other.durationMax == durationMax) &&
            (identical(other.durationMaxElement, durationMaxElement) ||
                other.durationMaxElement == durationMaxElement) &&
            (identical(other.durationUnit, durationUnit) ||
                other.durationUnit == durationUnit) &&
            (identical(other.durationUnitElement, durationUnitElement) ||
                other.durationUnitElement == durationUnitElement) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.frequencyElement, frequencyElement) ||
                other.frequencyElement == frequencyElement) &&
            (identical(other.frequencyMax, frequencyMax) ||
                other.frequencyMax == frequencyMax) &&
            (identical(other.frequencyMaxElement, frequencyMaxElement) ||
                other.frequencyMaxElement == frequencyMaxElement) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.periodElement, periodElement) ||
                other.periodElement == periodElement) &&
            (identical(other.periodMax, periodMax) ||
                other.periodMax == periodMax) &&
            (identical(other.periodMaxElement, periodMaxElement) ||
                other.periodMaxElement == periodMaxElement) &&
            (identical(other.periodUnit, periodUnit) ||
                other.periodUnit == periodUnit) &&
            (identical(other.periodUnitElement, periodUnitElement) ||
                other.periodUnitElement == periodUnitElement) &&
            const DeepCollectionEquality()
                .equals(other._dayOfWeek, _dayOfWeek) &&
            const DeepCollectionEquality()
                .equals(other._dayOfWeekElement, _dayOfWeekElement) &&
            const DeepCollectionEquality()
                .equals(other._timeOfDay, _timeOfDay) &&
            const DeepCollectionEquality()
                .equals(other._timeOfDayElement, _timeOfDayElement) &&
            const DeepCollectionEquality().equals(other._when, _when) &&
            const DeepCollectionEquality()
                .equals(other._whenElement, _whenElement) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.offsetElement, offsetElement) ||
                other.offsetElement == offsetElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        boundsDuration,
        boundsRange,
        boundsPeriod,
        count,
        countElement,
        countMax,
        countMaxElement,
        duration,
        durationElement,
        durationMax,
        durationMaxElement,
        durationUnit,
        durationUnitElement,
        frequency,
        frequencyElement,
        frequencyMax,
        frequencyMaxElement,
        period,
        periodElement,
        periodMax,
        periodMaxElement,
        periodUnit,
        periodUnitElement,
        const DeepCollectionEquality().hash(_dayOfWeek),
        const DeepCollectionEquality().hash(_dayOfWeekElement),
        const DeepCollectionEquality().hash(_timeOfDay),
        const DeepCollectionEquality().hash(_timeOfDayElement),
        const DeepCollectionEquality().hash(_when),
        const DeepCollectionEquality().hash(_whenElement),
        offset,
        offsetElement
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimingRepeatImplCopyWith<_$TimingRepeatImpl> get copyWith =>
      __$$TimingRepeatImplCopyWithImpl<_$TimingRepeatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimingRepeatImplToJson(
      this,
    );
  }
}

abstract class _TimingRepeat extends TimingRepeat {
  const factory _TimingRepeat(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirDuration? boundsDuration,
          final Range? boundsRange,
          final Period? boundsPeriod,
          final FhirPositiveInt? count,
          @JsonKey(name: '_count') final Element? countElement,
          final FhirPositiveInt? countMax,
          @JsonKey(name: '_countMax') final Element? countMaxElement,
          final FhirDecimal? duration,
          @JsonKey(name: '_duration') final Element? durationElement,
          final FhirDecimal? durationMax,
          @JsonKey(name: '_durationMax') final Element? durationMaxElement,
          @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
          final TimingRepeatDurationUnit? durationUnit,
          @JsonKey(name: '_durationUnit') final Element? durationUnitElement,
          final FhirPositiveInt? frequency,
          @JsonKey(name: '_frequency') final Element? frequencyElement,
          final FhirPositiveInt? frequencyMax,
          @JsonKey(name: '_frequencyMax') final Element? frequencyMaxElement,
          final FhirDecimal? period,
          @JsonKey(name: '_period') final Element? periodElement,
          final FhirDecimal? periodMax,
          @JsonKey(name: '_periodMax') final Element? periodMaxElement,
          @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
          final TimingRepeatPeriodUnit? periodUnit,
          @JsonKey(name: '_periodUnit') final Element? periodUnitElement,
          final List<FhirCode>? dayOfWeek,
          @JsonKey(name: '_dayOfWeek') final List<Element?>? dayOfWeekElement,
          final List<FhirTime>? timeOfDay,
          @JsonKey(name: '_timeOfDay') final List<Element?>? timeOfDayElement,
          final List<TimingRepeatWhen>? when,
          @JsonKey(name: '_when') final List<Element?>? whenElement,
          final FhirUnsignedInt? offset,
          @JsonKey(name: '_offset') final Element? offsetElement}) =
      _$TimingRepeatImpl;
  const _TimingRepeat._() : super._();

  factory _TimingRepeat.fromJson(Map<String, dynamic> json) =
      _$TimingRepeatImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [boundsDuration] Either a duration for the length of the timing schedule,
  /// a range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  FhirDuration? get boundsDuration;
  @override

  /// [boundsRange] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  Range? get boundsRange;
  @override

  /// [boundsPeriod] Either a duration for the length of the timing schedule, a
  /// range of possible length, or outer bounds for start and/or end limits of
  ///  the timing schedule.
  Period? get boundsPeriod;
  @override

  /// [count] A total count of the desired number of repetitions across the
  /// duration of the entire timing specification. If countMax is present, this
  ///  element indicates the lower bound of the allowed range of count values.
  FhirPositiveInt? get count;
  @override

  /// [countElement] Extensions for count
  @JsonKey(name: '_count')
  Element? get countElement;
  @override

  /// [countMax] If present, indicates that the count is a range - so to
  ///  perform the action between [count] and [countMax] times.
  FhirPositiveInt? get countMax;
  @override

  /// [countMaxElement] Extensions for countMax
  @JsonKey(name: '_countMax')
  Element? get countMaxElement;
  @override

  /// [duration] How long this thing happens for when it happens. If
  /// durationMax is present, this element indicates the lower bound of the
  ///  allowed range of the duration.
  FhirDecimal? get duration;
  @override

  /// [durationElement] Extensions for duration
  @JsonKey(name: '_duration')
  Element? get durationElement;
  @override

  /// [durationMax] If present, indicates that the duration is a range - so to
  ///  perform the action between [duration] and [durationMax] time length.
  FhirDecimal? get durationMax;
  @override

  /// [durationMaxElement] Extensions for durationMax
  @JsonKey(name: '_durationMax')
  Element? get durationMaxElement;
  @override
  @JsonKey(unknownEnumValue: TimingRepeatDurationUnit.unknown)
  TimingRepeatDurationUnit? get durationUnit;
  @override

  /// [durationUnitElement] Extensions for durationUnit
  @JsonKey(name: '_durationUnit')
  Element? get durationUnitElement;
  @override

  /// [frequency] The number of times to repeat the action within the specified
  /// period. If frequencyMax is present, this element indicates the lower bound
  ///  of the allowed range of the frequency.
  FhirPositiveInt? get frequency;
  @override

  /// [frequencyElement] Extensions for frequency
  @JsonKey(name: '_frequency')
  Element? get frequencyElement;
  @override

  /// [frequencyMax] If present, indicates that the frequency is a range - so
  /// to repeat between [frequency] and [frequencyMax] times within the period
  ///  or period range.
  FhirPositiveInt? get frequencyMax;
  @override

  /// [frequencyMaxElement] Extensions for frequencyMax
  @JsonKey(name: '_frequencyMax')
  Element? get frequencyMaxElement;
  @override

  /// [period] Indicates the duration of time over which repetitions are to
  /// occur; e.g. to express "3 times per day", 3 would be the frequency and "1
  /// day" would be the period. If periodMax is present, this element indicates
  ///  the lower bound of the allowed range of the period length.
  FhirDecimal? get period;
  @override

  /// [periodElement] Extensions for period
  @JsonKey(name: '_period')
  Element? get periodElement;
  @override

  /// [periodMax] If present, indicates that the period is a range from [period]
  /// to [periodMax], allowing expressing concepts such as "do this once every
  /// 3-5 days.
  FhirDecimal? get periodMax;
  @override

  /// [periodMaxElement] Extensions for periodMax
  @JsonKey(name: '_periodMax')
  Element? get periodMaxElement;
  @override
  @JsonKey(unknownEnumValue: TimingRepeatPeriodUnit.unknown)
  TimingRepeatPeriodUnit? get periodUnit;
  @override

  /// [periodUnitElement] Extensions for periodUnit
  @JsonKey(name: '_periodUnit')
  Element? get periodUnitElement;
  @override

  /// [dayOfWeek] If one or more days of week is provided, then the action
  ///  happens only on the specified day(s).
  List<FhirCode>? get dayOfWeek;
  @override

  /// [dayOfWeekElement] Extensions for dayOfWeek
  @JsonKey(name: '_dayOfWeek')
  List<Element?>? get dayOfWeekElement;
  @override

  /// [timeOfDay] Specified time of day for action to take place.
  List<FhirTime>? get timeOfDay;
  @override

  /// [timeOfDayElement] Extensions for timeOfDay
  @JsonKey(name: '_timeOfDay')
  List<Element?>? get timeOfDayElement;
  @override

  /// [when] An approximate time period during the day, potentially linked to
  ///  an event of daily living that indicates when the action should occur.
  List<TimingRepeatWhen>? get when;
  @override

  /// [whenElement] Extensions for when
  @JsonKey(name: '_when')
  List<Element?>? get whenElement;
  @override

  /// [offset] The number of minutes from the event. If the event code does not
  /// indicate whether the minutes is before or after the event, then the offset
  ///  is assumed to be after the event.
  FhirUnsignedInt? get offset;
  @override

  /// [offsetElement] Extensions for offset
  @JsonKey(name: '_offset')
  Element? get offsetElement;
  @override
  @JsonKey(ignore: true)
  _$$TimingRepeatImplCopyWith<_$TimingRepeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
