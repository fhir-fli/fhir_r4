// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  @JsonKey(unknownEnumValue: R4ResourceType.Media)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Identifiers associated with the image - these may include
  /// identifiers for the image itself, identifiers for the context of its
  /// collection (e.g. series ids) and context ids such as accession numbers or
  ///  other workflow identifiers.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [basedOn] A procedure that is fulfilled in whole or in part by the
  ///  creation of this media.
  List<Reference>? get basedOn => throw _privateConstructorUsedError;

  /// [partOf] A larger event of which this particular event is a component or
  ///  step.
  List<Reference>? get partOf => throw _privateConstructorUsedError;

  /// [status] The current state of the {{title}}.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [type] A code that classifies whether the media is an image, video or
  ///  audio recording or some other media category.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [modality] Details of the type of the media - usually, how it was
  /// acquired (what type of device). If images sourced from a DICOM system, are
  ///  wrapped in a Media resource, then this is the modality.
  CodeableConcept? get modality => throw _privateConstructorUsedError;

  /// [view] The name of the imaging view e.g. Lateral or Antero-posterior
  ///  (AP).
  CodeableConcept? get view => throw _privateConstructorUsedError;

  /// [subject] Who/What this Media is a record of.
  Reference? get subject => throw _privateConstructorUsedError;

  /// [encounter] The encounter that establishes the context for this media.
  Reference? get encounter => throw _privateConstructorUsedError;

  /// [createdDateTime] The date and time(s) at which the media was collected.
  FhirDateTime? get createdDateTime => throw _privateConstructorUsedError;

  /// [createdDateTimeElement] Extensions for createdDateTime
  @JsonKey(name: '_createdDateTime')
  PrimitiveElement? get createdDateTimeElement =>
      throw _privateConstructorUsedError;

  /// [createdPeriod] The date and time(s) at which the media was collected.
  Period? get createdPeriod => throw _privateConstructorUsedError;

  /// [issued] The date and time this version of the media was made available
  ///  to providers, typically after having been reviewed.
  FhirInstant? get issued => throw _privateConstructorUsedError;

  /// [issuedElement] Extensions for issued
  @JsonKey(name: '_issued')
  PrimitiveElement? get issuedElement => throw _privateConstructorUsedError;

  /// [operator] The person who administered the collection of the image.
  @JsonKey(name: 'operator')
  Reference? get operator_ => throw _privateConstructorUsedError;

  /// [reasonCode] Describes why the event occurred in coded or textual form.
  List<CodeableConcept>? get reasonCode => throw _privateConstructorUsedError;

  /// [bodySite] Indicates the site on the subject's body where the observation
  ///  was made (i.e. the target site).
  CodeableConcept? get bodySite => throw _privateConstructorUsedError;

  /// [deviceName] The name of the device / manufacturer of the device  that
  ///  was used to make the recording.
  String? get deviceName => throw _privateConstructorUsedError;

  /// [deviceNameElement] Extensions for deviceName
  @JsonKey(name: '_deviceName')
  PrimitiveElement? get deviceNameElement => throw _privateConstructorUsedError;

  /// [device] The device used to collect the media.
  Reference? get device => throw _privateConstructorUsedError;

  /// [height] Height of the image in pixels (photo/video).
  FhirPositiveInt? get height => throw _privateConstructorUsedError;

  /// [heightElement] Extensions for height
  @JsonKey(name: '_height')
  PrimitiveElement? get heightElement => throw _privateConstructorUsedError;

  /// [width] Width of the image in pixels (photo/video).
  FhirPositiveInt? get width => throw _privateConstructorUsedError;

  /// [widthElement] Extensions for width
  @JsonKey(name: '_width')
  PrimitiveElement? get widthElement => throw _privateConstructorUsedError;

  /// [frames] The number of frames in a photo. This is used with a multi-page
  /// fax, or an imaging acquisition context that takes multiple slices in a
  /// single image, or an animated gif. If there is more than one frame, this
  /// SHALL have a value in order to alert interface software that a multi-frame
  ///  capable rendering widget is required.
  FhirPositiveInt? get frames => throw _privateConstructorUsedError;

  /// [framesElement] Extensions for frames
  @JsonKey(name: '_frames')
  PrimitiveElement? get framesElement => throw _privateConstructorUsedError;

  /// [duration] The duration of the recording in seconds - for audio and
  ///  video.
  FhirDecimal? get duration => throw _privateConstructorUsedError;

  /// [durationElement] Extensions for duration
  @JsonKey(name: '_duration')
  PrimitiveElement? get durationElement => throw _privateConstructorUsedError;

  /// [content] The actual content of the media - inline or by direct reference
  ///  to the media source file.
  Attachment get content => throw _privateConstructorUsedError;

  /// [note] Comments made about the media by the performer, subject or other
  ///  participants.
  List<Annotation>? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Media)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      List<Reference>? basedOn,
      List<Reference>? partOf,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept? type,
      CodeableConcept? modality,
      CodeableConcept? view,
      Reference? subject,
      Reference? encounter,
      FhirDateTime? createdDateTime,
      @JsonKey(name: '_createdDateTime')
      PrimitiveElement? createdDateTimeElement,
      Period? createdPeriod,
      FhirInstant? issued,
      @JsonKey(name: '_issued') PrimitiveElement? issuedElement,
      @JsonKey(name: 'operator') Reference? operator_,
      List<CodeableConcept>? reasonCode,
      CodeableConcept? bodySite,
      String? deviceName,
      @JsonKey(name: '_deviceName') PrimitiveElement? deviceNameElement,
      Reference? device,
      FhirPositiveInt? height,
      @JsonKey(name: '_height') PrimitiveElement? heightElement,
      FhirPositiveInt? width,
      @JsonKey(name: '_width') PrimitiveElement? widthElement,
      FhirPositiveInt? frames,
      @JsonKey(name: '_frames') PrimitiveElement? framesElement,
      FhirDecimal? duration,
      @JsonKey(name: '_duration') PrimitiveElement? durationElement,
      Attachment content,
      List<Annotation>? note});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get modality;
  $CodeableConceptCopyWith<$Res>? get view;
  $ReferenceCopyWith<$Res>? get subject;
  $ReferenceCopyWith<$Res>? get encounter;
  $PeriodCopyWith<$Res>? get createdPeriod;
  $ReferenceCopyWith<$Res>? get operator_;
  $CodeableConceptCopyWith<$Res>? get bodySite;
  $ReferenceCopyWith<$Res>? get device;
  $AttachmentCopyWith<$Res> get content;
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? basedOn = freezed,
    Object? partOf = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? type = freezed,
    Object? modality = freezed,
    Object? view = freezed,
    Object? subject = freezed,
    Object? encounter = freezed,
    Object? createdDateTime = freezed,
    Object? createdDateTimeElement = freezed,
    Object? createdPeriod = freezed,
    Object? issued = freezed,
    Object? issuedElement = freezed,
    Object? operator_ = freezed,
    Object? reasonCode = freezed,
    Object? bodySite = freezed,
    Object? deviceName = freezed,
    Object? deviceNameElement = freezed,
    Object? device = freezed,
    Object? height = freezed,
    Object? heightElement = freezed,
    Object? width = freezed,
    Object? widthElement = freezed,
    Object? frames = freezed,
    Object? framesElement = freezed,
    Object? duration = freezed,
    Object? durationElement = freezed,
    Object? content = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      basedOn: freezed == basedOn
          ? _value.basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      partOf: freezed == partOf
          ? _value.partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      modality: freezed == modality
          ? _value.modality
          : modality // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference?,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      createdDateTime: freezed == createdDateTime
          ? _value.createdDateTime
          : createdDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdDateTimeElement: freezed == createdDateTimeElement
          ? _value.createdDateTimeElement
          : createdDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      createdPeriod: freezed == createdPeriod
          ? _value.createdPeriod
          : createdPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      issuedElement: freezed == issuedElement
          ? _value.issuedElement
          : issuedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      operator_: freezed == operator_
          ? _value.operator_
          : operator_ // ignore: cast_nullable_to_non_nullable
              as Reference?,
      reasonCode: freezed == reasonCode
          ? _value.reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceNameElement: freezed == deviceNameElement
          ? _value.deviceNameElement
          : deviceNameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Reference?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      heightElement: freezed == heightElement
          ? _value.heightElement
          : heightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      widthElement: freezed == widthElement
          ? _value.widthElement
          : widthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      frames: freezed == frames
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      framesElement: freezed == framesElement
          ? _value.framesElement
          : framesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      durationElement: freezed == durationElement
          ? _value.durationElement
          : durationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Attachment,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
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
  $CodeableConceptCopyWith<$Res>? get modality {
    if (_value.modality == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.modality!, (value) {
      return _then(_value.copyWith(modality: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get view {
    if (_value.view == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.view!, (value) {
      return _then(_value.copyWith(view: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get subject {
    if (_value.subject == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.subject!, (value) {
      return _then(_value.copyWith(subject: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get encounter {
    if (_value.encounter == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.encounter!, (value) {
      return _then(_value.copyWith(encounter: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get createdPeriod {
    if (_value.createdPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.createdPeriod!, (value) {
      return _then(_value.copyWith(createdPeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get operator_ {
    if (_value.operator_ == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.operator_!, (value) {
      return _then(_value.copyWith(operator_: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get bodySite {
    if (_value.bodySite == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.bodySite!, (value) {
      return _then(_value.copyWith(bodySite: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get device {
    if (_value.device == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.device!, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res> get content {
    return $AttachmentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$MediaImplCopyWith(
          _$MediaImpl value, $Res Function(_$MediaImpl) then) =
      __$$MediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Media)
      R4ResourceType resourceType,
      String? id,
      FhirMeta? meta,
      FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
      FhirCode? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      Narrative? text,
      List<Resource>? contained,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      List<Reference>? basedOn,
      List<Reference>? partOf,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept? type,
      CodeableConcept? modality,
      CodeableConcept? view,
      Reference? subject,
      Reference? encounter,
      FhirDateTime? createdDateTime,
      @JsonKey(name: '_createdDateTime')
      PrimitiveElement? createdDateTimeElement,
      Period? createdPeriod,
      FhirInstant? issued,
      @JsonKey(name: '_issued') PrimitiveElement? issuedElement,
      @JsonKey(name: 'operator') Reference? operator_,
      List<CodeableConcept>? reasonCode,
      CodeableConcept? bodySite,
      String? deviceName,
      @JsonKey(name: '_deviceName') PrimitiveElement? deviceNameElement,
      Reference? device,
      FhirPositiveInt? height,
      @JsonKey(name: '_height') PrimitiveElement? heightElement,
      FhirPositiveInt? width,
      @JsonKey(name: '_width') PrimitiveElement? widthElement,
      FhirPositiveInt? frames,
      @JsonKey(name: '_frames') PrimitiveElement? framesElement,
      FhirDecimal? duration,
      @JsonKey(name: '_duration') PrimitiveElement? durationElement,
      Attachment content,
      List<Annotation>? note});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get modality;
  @override
  $CodeableConceptCopyWith<$Res>? get view;
  @override
  $ReferenceCopyWith<$Res>? get subject;
  @override
  $ReferenceCopyWith<$Res>? get encounter;
  @override
  $PeriodCopyWith<$Res>? get createdPeriod;
  @override
  $ReferenceCopyWith<$Res>? get operator_;
  @override
  $CodeableConceptCopyWith<$Res>? get bodySite;
  @override
  $ReferenceCopyWith<$Res>? get device;
  @override
  $AttachmentCopyWith<$Res> get content;
}

/// @nodoc
class __$$MediaImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
      _$MediaImpl _value, $Res Function(_$MediaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? basedOn = freezed,
    Object? partOf = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? type = freezed,
    Object? modality = freezed,
    Object? view = freezed,
    Object? subject = freezed,
    Object? encounter = freezed,
    Object? createdDateTime = freezed,
    Object? createdDateTimeElement = freezed,
    Object? createdPeriod = freezed,
    Object? issued = freezed,
    Object? issuedElement = freezed,
    Object? operator_ = freezed,
    Object? reasonCode = freezed,
    Object? bodySite = freezed,
    Object? deviceName = freezed,
    Object? deviceNameElement = freezed,
    Object? device = freezed,
    Object? height = freezed,
    Object? heightElement = freezed,
    Object? width = freezed,
    Object? widthElement = freezed,
    Object? frames = freezed,
    Object? framesElement = freezed,
    Object? duration = freezed,
    Object? durationElement = freezed,
    Object? content = null,
    Object? note = freezed,
  }) {
    return _then(_$MediaImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      basedOn: freezed == basedOn
          ? _value._basedOn
          : basedOn // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      partOf: freezed == partOf
          ? _value._partOf
          : partOf // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      modality: freezed == modality
          ? _value.modality
          : modality // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      view: freezed == view
          ? _value.view
          : view // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as Reference?,
      encounter: freezed == encounter
          ? _value.encounter
          : encounter // ignore: cast_nullable_to_non_nullable
              as Reference?,
      createdDateTime: freezed == createdDateTime
          ? _value.createdDateTime
          : createdDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      createdDateTimeElement: freezed == createdDateTimeElement
          ? _value.createdDateTimeElement
          : createdDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      createdPeriod: freezed == createdPeriod
          ? _value.createdPeriod
          : createdPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      issued: freezed == issued
          ? _value.issued
          : issued // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      issuedElement: freezed == issuedElement
          ? _value.issuedElement
          : issuedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      operator_: freezed == operator_
          ? _value.operator_
          : operator_ // ignore: cast_nullable_to_non_nullable
              as Reference?,
      reasonCode: freezed == reasonCode
          ? _value._reasonCode
          : reasonCode // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      bodySite: freezed == bodySite
          ? _value.bodySite
          : bodySite // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceNameElement: freezed == deviceNameElement
          ? _value.deviceNameElement
          : deviceNameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Reference?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      heightElement: freezed == heightElement
          ? _value.heightElement
          : heightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      widthElement: freezed == widthElement
          ? _value.widthElement
          : widthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      frames: freezed == frames
          ? _value.frames
          : frames // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      framesElement: freezed == framesElement
          ? _value.framesElement
          : framesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      durationElement: freezed == durationElement
          ? _value.durationElement
          : durationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as Attachment,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaImpl extends _Media {
  _$MediaImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.Media)
      this.resourceType = R4ResourceType.Media,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final List<Reference>? basedOn,
      final List<Reference>? partOf,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.type,
      this.modality,
      this.view,
      this.subject,
      this.encounter,
      this.createdDateTime,
      @JsonKey(name: '_createdDateTime') this.createdDateTimeElement,
      this.createdPeriod,
      this.issued,
      @JsonKey(name: '_issued') this.issuedElement,
      @JsonKey(name: 'operator') this.operator_,
      final List<CodeableConcept>? reasonCode,
      this.bodySite,
      this.deviceName,
      @JsonKey(name: '_deviceName') this.deviceNameElement,
      this.device,
      this.height,
      @JsonKey(name: '_height') this.heightElement,
      this.width,
      @JsonKey(name: '_width') this.widthElement,
      this.frames,
      @JsonKey(name: '_frames') this.framesElement,
      this.duration,
      @JsonKey(name: '_duration') this.durationElement,
      required this.content,
      final List<Annotation>? note})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _basedOn = basedOn,
        _partOf = partOf,
        _reasonCode = reasonCode,
        _note = note,
        super._();

  factory _$MediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Media)
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
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
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
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

  /// [identifier] Identifiers associated with the image - these may include
  /// identifiers for the image itself, identifiers for the context of its
  /// collection (e.g. series ids) and context ids such as accession numbers or
  ///  other workflow identifiers.
  final List<Identifier>? _identifier;

  /// [identifier] Identifiers associated with the image - these may include
  /// identifiers for the image itself, identifiers for the context of its
  /// collection (e.g. series ids) and context ids such as accession numbers or
  ///  other workflow identifiers.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [basedOn] A procedure that is fulfilled in whole or in part by the
  ///  creation of this media.
  final List<Reference>? _basedOn;

  /// [basedOn] A procedure that is fulfilled in whole or in part by the
  ///  creation of this media.
  @override
  List<Reference>? get basedOn {
    final value = _basedOn;
    if (value == null) return null;
    if (_basedOn is EqualUnmodifiableListView) return _basedOn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [partOf] A larger event of which this particular event is a component or
  ///  step.
  final List<Reference>? _partOf;

  /// [partOf] A larger event of which this particular event is a component or
  ///  step.
  @override
  List<Reference>? get partOf {
    final value = _partOf;
    if (value == null) return null;
    if (_partOf is EqualUnmodifiableListView) return _partOf;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The current state of the {{title}}.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [type] A code that classifies whether the media is an image, video or
  ///  audio recording or some other media category.
  @override
  final CodeableConcept? type;

  /// [modality] Details of the type of the media - usually, how it was
  /// acquired (what type of device). If images sourced from a DICOM system, are
  ///  wrapped in a Media resource, then this is the modality.
  @override
  final CodeableConcept? modality;

  /// [view] The name of the imaging view e.g. Lateral or Antero-posterior
  ///  (AP).
  @override
  final CodeableConcept? view;

  /// [subject] Who/What this Media is a record of.
  @override
  final Reference? subject;

  /// [encounter] The encounter that establishes the context for this media.
  @override
  final Reference? encounter;

  /// [createdDateTime] The date and time(s) at which the media was collected.
  @override
  final FhirDateTime? createdDateTime;

  /// [createdDateTimeElement] Extensions for createdDateTime
  @override
  @JsonKey(name: '_createdDateTime')
  final PrimitiveElement? createdDateTimeElement;

  /// [createdPeriod] The date and time(s) at which the media was collected.
  @override
  final Period? createdPeriod;

  /// [issued] The date and time this version of the media was made available
  ///  to providers, typically after having been reviewed.
  @override
  final FhirInstant? issued;

  /// [issuedElement] Extensions for issued
  @override
  @JsonKey(name: '_issued')
  final PrimitiveElement? issuedElement;

  /// [operator] The person who administered the collection of the image.
  @override
  @JsonKey(name: 'operator')
  final Reference? operator_;

  /// [reasonCode] Describes why the event occurred in coded or textual form.
  final List<CodeableConcept>? _reasonCode;

  /// [reasonCode] Describes why the event occurred in coded or textual form.
  @override
  List<CodeableConcept>? get reasonCode {
    final value = _reasonCode;
    if (value == null) return null;
    if (_reasonCode is EqualUnmodifiableListView) return _reasonCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [bodySite] Indicates the site on the subject's body where the observation
  ///  was made (i.e. the target site).
  @override
  final CodeableConcept? bodySite;

  /// [deviceName] The name of the device / manufacturer of the device  that
  ///  was used to make the recording.
  @override
  final String? deviceName;

  /// [deviceNameElement] Extensions for deviceName
  @override
  @JsonKey(name: '_deviceName')
  final PrimitiveElement? deviceNameElement;

  /// [device] The device used to collect the media.
  @override
  final Reference? device;

  /// [height] Height of the image in pixels (photo/video).
  @override
  final FhirPositiveInt? height;

  /// [heightElement] Extensions for height
  @override
  @JsonKey(name: '_height')
  final PrimitiveElement? heightElement;

  /// [width] Width of the image in pixels (photo/video).
  @override
  final FhirPositiveInt? width;

  /// [widthElement] Extensions for width
  @override
  @JsonKey(name: '_width')
  final PrimitiveElement? widthElement;

  /// [frames] The number of frames in a photo. This is used with a multi-page
  /// fax, or an imaging acquisition context that takes multiple slices in a
  /// single image, or an animated gif. If there is more than one frame, this
  /// SHALL have a value in order to alert interface software that a multi-frame
  ///  capable rendering widget is required.
  @override
  final FhirPositiveInt? frames;

  /// [framesElement] Extensions for frames
  @override
  @JsonKey(name: '_frames')
  final PrimitiveElement? framesElement;

  /// [duration] The duration of the recording in seconds - for audio and
  ///  video.
  @override
  final FhirDecimal? duration;

  /// [durationElement] Extensions for duration
  @override
  @JsonKey(name: '_duration')
  final PrimitiveElement? durationElement;

  /// [content] The actual content of the media - inline or by direct reference
  ///  to the media source file.
  @override
  final Attachment content;

  /// [note] Comments made about the media by the performer, subject or other
  ///  participants.
  final List<Annotation>? _note;

  /// [note] Comments made about the media by the performer, subject or other
  ///  participants.
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            const DeepCollectionEquality().equals(other._basedOn, _basedOn) &&
            const DeepCollectionEquality().equals(other._partOf, _partOf) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.modality, modality) ||
                other.modality == modality) &&
            (identical(other.view, view) || other.view == view) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.encounter, encounter) ||
                other.encounter == encounter) &&
            (identical(other.createdDateTime, createdDateTime) ||
                other.createdDateTime == createdDateTime) &&
            (identical(other.createdDateTimeElement, createdDateTimeElement) ||
                other.createdDateTimeElement == createdDateTimeElement) &&
            (identical(other.createdPeriod, createdPeriod) ||
                other.createdPeriod == createdPeriod) &&
            (identical(other.issued, issued) || other.issued == issued) &&
            (identical(other.issuedElement, issuedElement) ||
                other.issuedElement == issuedElement) &&
            (identical(other.operator_, operator_) ||
                other.operator_ == operator_) &&
            const DeepCollectionEquality()
                .equals(other._reasonCode, _reasonCode) &&
            (identical(other.bodySite, bodySite) ||
                other.bodySite == bodySite) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName) &&
            (identical(other.deviceNameElement, deviceNameElement) ||
                other.deviceNameElement == deviceNameElement) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.heightElement, heightElement) ||
                other.heightElement == heightElement) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.widthElement, widthElement) ||
                other.widthElement == widthElement) &&
            (identical(other.frames, frames) || other.frames == frames) &&
            (identical(other.framesElement, framesElement) ||
                other.framesElement == framesElement) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.durationElement, durationElement) ||
                other.durationElement == durationElement) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._note, _note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        const DeepCollectionEquality().hash(_basedOn),
        const DeepCollectionEquality().hash(_partOf),
        status,
        statusElement,
        type,
        modality,
        view,
        subject,
        encounter,
        createdDateTime,
        createdDateTimeElement,
        createdPeriod,
        issued,
        issuedElement,
        operator_,
        const DeepCollectionEquality().hash(_reasonCode),
        bodySite,
        deviceName,
        deviceNameElement,
        device,
        height,
        heightElement,
        width,
        widthElement,
        frames,
        framesElement,
        duration,
        durationElement,
        content,
        const DeepCollectionEquality().hash(_note)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaImplToJson(
      this,
    );
  }
}

abstract class _Media extends Media {
  factory _Media(
      {@JsonKey(unknownEnumValue: R4ResourceType.Media)
      final R4ResourceType resourceType,
      final String? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
      final PrimitiveElement? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final PrimitiveElement? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final List<Reference>? basedOn,
      final List<Reference>? partOf,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final CodeableConcept? type,
      final CodeableConcept? modality,
      final CodeableConcept? view,
      final Reference? subject,
      final Reference? encounter,
      final FhirDateTime? createdDateTime,
      @JsonKey(name: '_createdDateTime')
      final PrimitiveElement? createdDateTimeElement,
      final Period? createdPeriod,
      final FhirInstant? issued,
      @JsonKey(name: '_issued') final PrimitiveElement? issuedElement,
      @JsonKey(name: 'operator') final Reference? operator_,
      final List<CodeableConcept>? reasonCode,
      final CodeableConcept? bodySite,
      final String? deviceName,
      @JsonKey(name: '_deviceName') final PrimitiveElement? deviceNameElement,
      final Reference? device,
      final FhirPositiveInt? height,
      @JsonKey(name: '_height') final PrimitiveElement? heightElement,
      final FhirPositiveInt? width,
      @JsonKey(name: '_width') final PrimitiveElement? widthElement,
      final FhirPositiveInt? frames,
      @JsonKey(name: '_frames') final PrimitiveElement? framesElement,
      final FhirDecimal? duration,
      @JsonKey(name: '_duration') final PrimitiveElement? durationElement,
      required final Attachment content,
      final List<Annotation>? note}) = _$MediaImpl;
  _Media._() : super._();

  factory _Media.fromJson(Map<String, dynamic> json) = _$MediaImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Media)
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] Identifiers associated with the image - these may include
  /// identifiers for the image itself, identifiers for the context of its
  /// collection (e.g. series ids) and context ids such as accession numbers or
  ///  other workflow identifiers.
  List<Identifier>? get identifier;
  @override

  /// [basedOn] A procedure that is fulfilled in whole or in part by the
  ///  creation of this media.
  List<Reference>? get basedOn;
  @override

  /// [partOf] A larger event of which this particular event is a component or
  ///  step.
  List<Reference>? get partOf;
  @override

  /// [status] The current state of the {{title}}.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [type] A code that classifies whether the media is an image, video or
  ///  audio recording or some other media category.
  CodeableConcept? get type;
  @override

  /// [modality] Details of the type of the media - usually, how it was
  /// acquired (what type of device). If images sourced from a DICOM system, are
  ///  wrapped in a Media resource, then this is the modality.
  CodeableConcept? get modality;
  @override

  /// [view] The name of the imaging view e.g. Lateral or Antero-posterior
  ///  (AP).
  CodeableConcept? get view;
  @override

  /// [subject] Who/What this Media is a record of.
  Reference? get subject;
  @override

  /// [encounter] The encounter that establishes the context for this media.
  Reference? get encounter;
  @override

  /// [createdDateTime] The date and time(s) at which the media was collected.
  FhirDateTime? get createdDateTime;
  @override

  /// [createdDateTimeElement] Extensions for createdDateTime
  @JsonKey(name: '_createdDateTime')
  PrimitiveElement? get createdDateTimeElement;
  @override

  /// [createdPeriod] The date and time(s) at which the media was collected.
  Period? get createdPeriod;
  @override

  /// [issued] The date and time this version of the media was made available
  ///  to providers, typically after having been reviewed.
  FhirInstant? get issued;
  @override

  /// [issuedElement] Extensions for issued
  @JsonKey(name: '_issued')
  PrimitiveElement? get issuedElement;
  @override

  /// [operator] The person who administered the collection of the image.
  @JsonKey(name: 'operator')
  Reference? get operator_;
  @override

  /// [reasonCode] Describes why the event occurred in coded or textual form.
  List<CodeableConcept>? get reasonCode;
  @override

  /// [bodySite] Indicates the site on the subject's body where the observation
  ///  was made (i.e. the target site).
  CodeableConcept? get bodySite;
  @override

  /// [deviceName] The name of the device / manufacturer of the device  that
  ///  was used to make the recording.
  String? get deviceName;
  @override

  /// [deviceNameElement] Extensions for deviceName
  @JsonKey(name: '_deviceName')
  PrimitiveElement? get deviceNameElement;
  @override

  /// [device] The device used to collect the media.
  Reference? get device;
  @override

  /// [height] Height of the image in pixels (photo/video).
  FhirPositiveInt? get height;
  @override

  /// [heightElement] Extensions for height
  @JsonKey(name: '_height')
  PrimitiveElement? get heightElement;
  @override

  /// [width] Width of the image in pixels (photo/video).
  FhirPositiveInt? get width;
  @override

  /// [widthElement] Extensions for width
  @JsonKey(name: '_width')
  PrimitiveElement? get widthElement;
  @override

  /// [frames] The number of frames in a photo. This is used with a multi-page
  /// fax, or an imaging acquisition context that takes multiple slices in a
  /// single image, or an animated gif. If there is more than one frame, this
  /// SHALL have a value in order to alert interface software that a multi-frame
  ///  capable rendering widget is required.
  FhirPositiveInt? get frames;
  @override

  /// [framesElement] Extensions for frames
  @JsonKey(name: '_frames')
  PrimitiveElement? get framesElement;
  @override

  /// [duration] The duration of the recording in seconds - for audio and
  ///  video.
  FhirDecimal? get duration;
  @override

  /// [durationElement] Extensions for duration
  @JsonKey(name: '_duration')
  PrimitiveElement? get durationElement;
  @override

  /// [content] The actual content of the media - inline or by direct reference
  ///  to the media source file.
  Attachment get content;
  @override

  /// [note] Comments made about the media by the performer, subject or other
  ///  participants.
  List<Annotation>? get note;
  @override
  @JsonKey(ignore: true)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
