// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'related_artifact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RelatedArtifact _$RelatedArtifactFromJson(Map<String, dynamic> json) {
  return _RelatedArtifact.fromJson(json);
}

/// @nodoc
mixin _$RelatedArtifact {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: RelatedArtifactType.unknown)
  RelatedArtifactType? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [label] A short label that can be used to reference the citation from
  ///  elsewhere in the containing artifact, such as a footnote index.
  String? get label => throw _privateConstructorUsedError;

  /// [labelElement] Extensions for label
  @JsonKey(name: '_label')
  PrimitiveElement? get labelElement => throw _privateConstructorUsedError;

  /// [display] A brief description of the document or knowledge resource being
  ///  referenced, suitable for display to a consumer.
  String? get display => throw _privateConstructorUsedError;

  /// [displayElement] Extensions for display
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement => throw _privateConstructorUsedError;

  /// [citation] A bibliographic citation for the related artifact. This text
  ///  SHOULD be formatted according to an accepted citation format.
  FhirMarkdown? get citation => throw _privateConstructorUsedError;

  /// [citationElement] Extensions for citation
  @JsonKey(name: '_citation')
  PrimitiveElement? get citationElement => throw _privateConstructorUsedError;

  /// [url] A url for the artifact that can be followed to access the actual
  ///  content.
  FhirUrl? get url => throw _privateConstructorUsedError;

  /// [urlElement] Extensions for url
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  /// [document] The document being referenced, represented as an attachment.
  ///  This is exclusive with the resource element.
  Attachment? get document => throw _privateConstructorUsedError;

  /// [resource] The related resource, such as a library, value set, profile,
  ///  or other knowledge resource.
  FhirCanonical? get resource => throw _privateConstructorUsedError;

  /// Serializes this RelatedArtifact to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RelatedArtifact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RelatedArtifactCopyWith<RelatedArtifact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedArtifactCopyWith<$Res> {
  factory $RelatedArtifactCopyWith(
          RelatedArtifact value, $Res Function(RelatedArtifact) then) =
      _$RelatedArtifactCopyWithImpl<$Res, RelatedArtifact>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: RelatedArtifactType.unknown)
      RelatedArtifactType? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? label,
      @JsonKey(name: '_label') PrimitiveElement? labelElement,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement,
      FhirMarkdown? citation,
      @JsonKey(name: '_citation') PrimitiveElement? citationElement,
      FhirUrl? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      Attachment? document,
      FhirCanonical? resource});

  $AttachmentCopyWith<$Res>? get document;
}

/// @nodoc
class _$RelatedArtifactCopyWithImpl<$Res, $Val extends RelatedArtifact>
    implements $RelatedArtifactCopyWith<$Res> {
  _$RelatedArtifactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RelatedArtifact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? label = freezed,
    Object? labelElement = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
    Object? citation = freezed,
    Object? citationElement = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? document = freezed,
    Object? resource = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RelatedArtifactType?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      labelElement: freezed == labelElement
          ? _value.labelElement
          : labelElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayElement: freezed == displayElement
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      citation: freezed == citation
          ? _value.citation
          : citation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      citationElement: freezed == citationElement
          ? _value.citationElement
          : citationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
    ) as $Val);
  }

  /// Create a copy of RelatedArtifact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get document {
    if (_value.document == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.document!, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RelatedArtifactImplCopyWith<$Res>
    implements $RelatedArtifactCopyWith<$Res> {
  factory _$$RelatedArtifactImplCopyWith(_$RelatedArtifactImpl value,
          $Res Function(_$RelatedArtifactImpl) then) =
      __$$RelatedArtifactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: RelatedArtifactType.unknown)
      RelatedArtifactType? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      String? label,
      @JsonKey(name: '_label') PrimitiveElement? labelElement,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement,
      FhirMarkdown? citation,
      @JsonKey(name: '_citation') PrimitiveElement? citationElement,
      FhirUrl? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      Attachment? document,
      FhirCanonical? resource});

  @override
  $AttachmentCopyWith<$Res>? get document;
}

/// @nodoc
class __$$RelatedArtifactImplCopyWithImpl<$Res>
    extends _$RelatedArtifactCopyWithImpl<$Res, _$RelatedArtifactImpl>
    implements _$$RelatedArtifactImplCopyWith<$Res> {
  __$$RelatedArtifactImplCopyWithImpl(
      _$RelatedArtifactImpl _value, $Res Function(_$RelatedArtifactImpl) _then)
      : super(_value, _then);

  /// Create a copy of RelatedArtifact
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? label = freezed,
    Object? labelElement = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
    Object? citation = freezed,
    Object? citationElement = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? document = freezed,
    Object? resource = freezed,
  }) {
    return _then(_$RelatedArtifactImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RelatedArtifactType?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      labelElement: freezed == labelElement
          ? _value.labelElement
          : labelElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayElement: freezed == displayElement
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      citation: freezed == citation
          ? _value.citation
          : citation // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      citationElement: freezed == citationElement
          ? _value.citationElement
          : citationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUrl?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      resource: freezed == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RelatedArtifactImpl extends _RelatedArtifact {
  const _$RelatedArtifactImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: RelatedArtifactType.unknown) this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.label,
      @JsonKey(name: '_label') this.labelElement,
      this.display,
      @JsonKey(name: '_display') this.displayElement,
      this.citation,
      @JsonKey(name: '_citation') this.citationElement,
      this.url,
      @JsonKey(name: '_url') this.urlElement,
      this.document,
      this.resource})
      : _extension_ = extension_,
        super._();

  factory _$RelatedArtifactImpl.fromJson(Map<String, dynamic> json) =>
      _$$RelatedArtifactImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
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
  @JsonKey(unknownEnumValue: RelatedArtifactType.unknown)
  final RelatedArtifactType? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [label] A short label that can be used to reference the citation from
  ///  elsewhere in the containing artifact, such as a footnote index.
  @override
  final String? label;

  /// [labelElement] Extensions for label
  @override
  @JsonKey(name: '_label')
  final PrimitiveElement? labelElement;

  /// [display] A brief description of the document or knowledge resource being
  ///  referenced, suitable for display to a consumer.
  @override
  final String? display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  final PrimitiveElement? displayElement;

  /// [citation] A bibliographic citation for the related artifact. This text
  ///  SHOULD be formatted according to an accepted citation format.
  @override
  final FhirMarkdown? citation;

  /// [citationElement] Extensions for citation
  @override
  @JsonKey(name: '_citation')
  final PrimitiveElement? citationElement;

  /// [url] A url for the artifact that can be followed to access the actual
  ///  content.
  @override
  final FhirUrl? url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  /// [document] The document being referenced, represented as an attachment.
  ///  This is exclusive with the resource element.
  @override
  final Attachment? document;

  /// [resource] The related resource, such as a library, value set, profile,
  ///  or other knowledge resource.
  @override
  final FhirCanonical? resource;

  @override
  String toString() {
    return 'RelatedArtifact(id: $id, extension_: $extension_, type: $type, typeElement: $typeElement, label: $label, labelElement: $labelElement, display: $display, displayElement: $displayElement, citation: $citation, citationElement: $citationElement, url: $url, urlElement: $urlElement, document: $document, resource: $resource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RelatedArtifactImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.labelElement, labelElement) ||
                other.labelElement == labelElement) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.displayElement, displayElement) ||
                other.displayElement == displayElement) &&
            (identical(other.citation, citation) ||
                other.citation == citation) &&
            (identical(other.citationElement, citationElement) ||
                other.citationElement == citationElement) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlElement, urlElement) ||
                other.urlElement == urlElement) &&
            (identical(other.document, document) ||
                other.document == document) &&
            (identical(other.resource, resource) ||
                other.resource == resource));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      type,
      typeElement,
      label,
      labelElement,
      display,
      displayElement,
      citation,
      citationElement,
      url,
      urlElement,
      document,
      resource);

  /// Create a copy of RelatedArtifact
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RelatedArtifactImplCopyWith<_$RelatedArtifactImpl> get copyWith =>
      __$$RelatedArtifactImplCopyWithImpl<_$RelatedArtifactImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RelatedArtifactImplToJson(
      this,
    );
  }
}

abstract class _RelatedArtifact extends RelatedArtifact {
  const factory _RelatedArtifact(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      @JsonKey(unknownEnumValue: RelatedArtifactType.unknown)
      final RelatedArtifactType? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final String? label,
      @JsonKey(name: '_label') final PrimitiveElement? labelElement,
      final String? display,
      @JsonKey(name: '_display') final PrimitiveElement? displayElement,
      final FhirMarkdown? citation,
      @JsonKey(name: '_citation') final PrimitiveElement? citationElement,
      final FhirUrl? url,
      @JsonKey(name: '_url') final PrimitiveElement? urlElement,
      final Attachment? document,
      final FhirCanonical? resource}) = _$RelatedArtifactImpl;
  const _RelatedArtifact._() : super._();

  factory _RelatedArtifact.fromJson(Map<String, dynamic> json) =
      _$RelatedArtifactImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  @JsonKey(unknownEnumValue: RelatedArtifactType.unknown)
  RelatedArtifactType? get type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;

  /// [label] A short label that can be used to reference the citation from
  ///  elsewhere in the containing artifact, such as a footnote index.
  @override
  String? get label;

  /// [labelElement] Extensions for label
  @override
  @JsonKey(name: '_label')
  PrimitiveElement? get labelElement;

  /// [display] A brief description of the document or knowledge resource being
  ///  referenced, suitable for display to a consumer.
  @override
  String? get display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement;

  /// [citation] A bibliographic citation for the related artifact. This text
  ///  SHOULD be formatted according to an accepted citation format.
  @override
  FhirMarkdown? get citation;

  /// [citationElement] Extensions for citation
  @override
  @JsonKey(name: '_citation')
  PrimitiveElement? get citationElement;

  /// [url] A url for the artifact that can be followed to access the actual
  ///  content.
  @override
  FhirUrl? get url;

  /// [urlElement] Extensions for url
  @override
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;

  /// [document] The document being referenced, represented as an attachment.
  ///  This is exclusive with the resource element.
  @override
  Attachment? get document;

  /// [resource] The related resource, such as a library, value set, profile,
  ///  or other knowledge resource.
  @override
  FhirCanonical? get resource;

  /// Create a copy of RelatedArtifact
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RelatedArtifactImplCopyWith<_$RelatedArtifactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
