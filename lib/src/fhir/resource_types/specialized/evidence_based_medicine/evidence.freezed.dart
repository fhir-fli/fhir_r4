// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evidence.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Evidence _$EvidenceFromJson(Map<String, dynamic> json) {
  return _Evidence.fromJson(json);
}

/// @nodoc
mixin _$Evidence {
  @JsonKey(unknownEnumValue: R4ResourceType.Evidence)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  FhirMeta? get meta => throw _privateConstructorUsedError;
  FhirUri? get implicitRules => throw _privateConstructorUsedError;
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;
  FhirCode? get language => throw _privateConstructorUsedError;
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;
  Narrative? get text => throw _privateConstructorUsedError;
  List<Resource>? get contained => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  FhirUri? get url => throw _privateConstructorUsedError;
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;
  Reference? get citeAsReference => throw _privateConstructorUsedError;
  FhirMarkdown? get citAsMarkdown => throw _privateConstructorUsedError;
  @JsonKey(name: '_citeAsMarkdown')
  PrimitiveElement? get citeAsMarkdownElement =>
      throw _privateConstructorUsedError;
  FhirCode? get status => throw _privateConstructorUsedError;
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;
  FhirDateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;
  FhirDate? get approvalDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_approvalDate')
  PrimitiveElement? get approvalDateElement =>
      throw _privateConstructorUsedError;
  FhirDate? get lastReviewDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_lastReviewDate')
  PrimitiveElement? get lastReviewDateElement =>
      throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;
  List<ContactDetail>? get author => throw _privateConstructorUsedError;
  List<ContactDetail>? get editor => throw _privateConstructorUsedError;
  List<ContactDetail>? get reviewer => throw _privateConstructorUsedError;
  List<ContactDetail>? get endorser => throw _privateConstructorUsedError;
  List<RelatedArtifact>? get relatedArtifact =>
      throw _privateConstructorUsedError;
  FhirMarkdown? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  FhirMarkdown? get assertion => throw _privateConstructorUsedError;
  @JsonKey(name: '_assertion')
  PrimitiveElement? get assertionElement => throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;
  List<EvidenceVariableDefinition> get variableDefinition =>
      throw _privateConstructorUsedError;
  CodeableConcept? get synthesisType => throw _privateConstructorUsedError;
  CodeableConcept? get studyType => throw _privateConstructorUsedError;
  List<EvidenceStatistic>? get statistic => throw _privateConstructorUsedError;
  List<EvidenceCertainty>? get certainty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvidenceCopyWith<Evidence> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvidenceCopyWith<$Res> {
  factory $EvidenceCopyWith(Evidence value, $Res Function(Evidence) then) =
      _$EvidenceCopyWithImpl<$Res, Evidence>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Evidence)
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
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      List<Identifier>? identifier,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      Reference? citeAsReference,
      FhirMarkdown? citAsMarkdown,
      @JsonKey(name: '_citeAsMarkdown') PrimitiveElement? citeAsMarkdownElement,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      List<UsageContext>? useContext,
      FhirDate? approvalDate,
      @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
      FhirDate? lastReviewDate,
      @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
      String? publisher,
      @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
      List<ContactDetail>? contact,
      List<ContactDetail>? author,
      List<ContactDetail>? editor,
      List<ContactDetail>? reviewer,
      List<ContactDetail>? endorser,
      List<RelatedArtifact>? relatedArtifact,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirMarkdown? assertion,
      @JsonKey(name: '_assertion') PrimitiveElement? assertionElement,
      List<Annotation>? note,
      List<EvidenceVariableDefinition> variableDefinition,
      CodeableConcept? synthesisType,
      CodeableConcept? studyType,
      List<EvidenceStatistic>? statistic,
      List<EvidenceCertainty>? certainty});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $ReferenceCopyWith<$Res>? get citeAsReference;
  $CodeableConceptCopyWith<$Res>? get synthesisType;
  $CodeableConceptCopyWith<$Res>? get studyType;
}

/// @nodoc
class _$EvidenceCopyWithImpl<$Res, $Val extends Evidence>
    implements $EvidenceCopyWith<$Res> {
  _$EvidenceCopyWithImpl(this._value, this._then);

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
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? identifier = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? citeAsReference = freezed,
    Object? citAsMarkdown = freezed,
    Object? citeAsMarkdownElement = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? useContext = freezed,
    Object? approvalDate = freezed,
    Object? approvalDateElement = freezed,
    Object? lastReviewDate = freezed,
    Object? lastReviewDateElement = freezed,
    Object? publisher = freezed,
    Object? publisherElement = freezed,
    Object? contact = freezed,
    Object? author = freezed,
    Object? editor = freezed,
    Object? reviewer = freezed,
    Object? endorser = freezed,
    Object? relatedArtifact = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? assertion = freezed,
    Object? assertionElement = freezed,
    Object? note = freezed,
    Object? variableDefinition = null,
    Object? synthesisType = freezed,
    Object? studyType = freezed,
    Object? statistic = freezed,
    Object? certainty = freezed,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      citeAsReference: freezed == citeAsReference
          ? _value.citeAsReference
          : citeAsReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      citAsMarkdown: freezed == citAsMarkdown
          ? _value.citAsMarkdown
          : citAsMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      citeAsMarkdownElement: freezed == citeAsMarkdownElement
          ? _value.citeAsMarkdownElement
          : citeAsMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      useContext: freezed == useContext
          ? _value.useContext
          : useContext // ignore: cast_nullable_to_non_nullable
              as List<UsageContext>?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      approvalDateElement: freezed == approvalDateElement
          ? _value.approvalDateElement
          : approvalDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      lastReviewDateElement: freezed == lastReviewDateElement
          ? _value.lastReviewDateElement
          : lastReviewDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      publisherElement: freezed == publisherElement
          ? _value.publisherElement
          : publisherElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ContactDetail>?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as List<ContactDetail>?,
      editor: freezed == editor
          ? _value.editor
          : editor // ignore: cast_nullable_to_non_nullable
              as List<ContactDetail>?,
      reviewer: freezed == reviewer
          ? _value.reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as List<ContactDetail>?,
      endorser: freezed == endorser
          ? _value.endorser
          : endorser // ignore: cast_nullable_to_non_nullable
              as List<ContactDetail>?,
      relatedArtifact: freezed == relatedArtifact
          ? _value.relatedArtifact
          : relatedArtifact // ignore: cast_nullable_to_non_nullable
              as List<RelatedArtifact>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      assertion: freezed == assertion
          ? _value.assertion
          : assertion // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      assertionElement: freezed == assertionElement
          ? _value.assertionElement
          : assertionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      variableDefinition: null == variableDefinition
          ? _value.variableDefinition
          : variableDefinition // ignore: cast_nullable_to_non_nullable
              as List<EvidenceVariableDefinition>,
      synthesisType: freezed == synthesisType
          ? _value.synthesisType
          : synthesisType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      studyType: freezed == studyType
          ? _value.studyType
          : studyType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      statistic: freezed == statistic
          ? _value.statistic
          : statistic // ignore: cast_nullable_to_non_nullable
              as List<EvidenceStatistic>?,
      certainty: freezed == certainty
          ? _value.certainty
          : certainty // ignore: cast_nullable_to_non_nullable
              as List<EvidenceCertainty>?,
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
  $ReferenceCopyWith<$Res>? get citeAsReference {
    if (_value.citeAsReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.citeAsReference!, (value) {
      return _then(_value.copyWith(citeAsReference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get synthesisType {
    if (_value.synthesisType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.synthesisType!, (value) {
      return _then(_value.copyWith(synthesisType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get studyType {
    if (_value.studyType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.studyType!, (value) {
      return _then(_value.copyWith(studyType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvidenceImplCopyWith<$Res>
    implements $EvidenceCopyWith<$Res> {
  factory _$$EvidenceImplCopyWith(
          _$EvidenceImpl value, $Res Function(_$EvidenceImpl) then) =
      __$$EvidenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Evidence)
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
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement,
      List<Identifier>? identifier,
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      Reference? citeAsReference,
      FhirMarkdown? citAsMarkdown,
      @JsonKey(name: '_citeAsMarkdown') PrimitiveElement? citeAsMarkdownElement,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      List<UsageContext>? useContext,
      FhirDate? approvalDate,
      @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
      FhirDate? lastReviewDate,
      @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
      String? publisher,
      @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
      List<ContactDetail>? contact,
      List<ContactDetail>? author,
      List<ContactDetail>? editor,
      List<ContactDetail>? reviewer,
      List<ContactDetail>? endorser,
      List<RelatedArtifact>? relatedArtifact,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirMarkdown? assertion,
      @JsonKey(name: '_assertion') PrimitiveElement? assertionElement,
      List<Annotation>? note,
      List<EvidenceVariableDefinition> variableDefinition,
      CodeableConcept? synthesisType,
      CodeableConcept? studyType,
      List<EvidenceStatistic>? statistic,
      List<EvidenceCertainty>? certainty});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $ReferenceCopyWith<$Res>? get citeAsReference;
  @override
  $CodeableConceptCopyWith<$Res>? get synthesisType;
  @override
  $CodeableConceptCopyWith<$Res>? get studyType;
}

/// @nodoc
class __$$EvidenceImplCopyWithImpl<$Res>
    extends _$EvidenceCopyWithImpl<$Res, _$EvidenceImpl>
    implements _$$EvidenceImplCopyWith<$Res> {
  __$$EvidenceImplCopyWithImpl(
      _$EvidenceImpl _value, $Res Function(_$EvidenceImpl) _then)
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
    Object? url = freezed,
    Object? urlElement = freezed,
    Object? identifier = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? citeAsReference = freezed,
    Object? citAsMarkdown = freezed,
    Object? citeAsMarkdownElement = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? useContext = freezed,
    Object? approvalDate = freezed,
    Object? approvalDateElement = freezed,
    Object? lastReviewDate = freezed,
    Object? lastReviewDateElement = freezed,
    Object? publisher = freezed,
    Object? publisherElement = freezed,
    Object? contact = freezed,
    Object? author = freezed,
    Object? editor = freezed,
    Object? reviewer = freezed,
    Object? endorser = freezed,
    Object? relatedArtifact = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? assertion = freezed,
    Object? assertionElement = freezed,
    Object? note = freezed,
    Object? variableDefinition = null,
    Object? synthesisType = freezed,
    Object? studyType = freezed,
    Object? statistic = freezed,
    Object? certainty = freezed,
  }) {
    return _then(_$EvidenceImpl(
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      citeAsReference: freezed == citeAsReference
          ? _value.citeAsReference
          : citeAsReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      citAsMarkdown: freezed == citAsMarkdown
          ? _value.citAsMarkdown
          : citAsMarkdown // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      citeAsMarkdownElement: freezed == citeAsMarkdownElement
          ? _value.citeAsMarkdownElement
          : citeAsMarkdownElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      useContext: freezed == useContext
          ? _value._useContext
          : useContext // ignore: cast_nullable_to_non_nullable
              as List<UsageContext>?,
      approvalDate: freezed == approvalDate
          ? _value.approvalDate
          : approvalDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      approvalDateElement: freezed == approvalDateElement
          ? _value.approvalDateElement
          : approvalDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lastReviewDate: freezed == lastReviewDate
          ? _value.lastReviewDate
          : lastReviewDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      lastReviewDateElement: freezed == lastReviewDateElement
          ? _value.lastReviewDateElement
          : lastReviewDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      publisherElement: freezed == publisherElement
          ? _value.publisherElement
          : publisherElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      contact: freezed == contact
          ? _value._contact
          : contact // ignore: cast_nullable_to_non_nullable
              as List<ContactDetail>?,
      author: freezed == author
          ? _value._author
          : author // ignore: cast_nullable_to_non_nullable
              as List<ContactDetail>?,
      editor: freezed == editor
          ? _value._editor
          : editor // ignore: cast_nullable_to_non_nullable
              as List<ContactDetail>?,
      reviewer: freezed == reviewer
          ? _value._reviewer
          : reviewer // ignore: cast_nullable_to_non_nullable
              as List<ContactDetail>?,
      endorser: freezed == endorser
          ? _value._endorser
          : endorser // ignore: cast_nullable_to_non_nullable
              as List<ContactDetail>?,
      relatedArtifact: freezed == relatedArtifact
          ? _value._relatedArtifact
          : relatedArtifact // ignore: cast_nullable_to_non_nullable
              as List<RelatedArtifact>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      assertion: freezed == assertion
          ? _value.assertion
          : assertion // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      assertionElement: freezed == assertionElement
          ? _value.assertionElement
          : assertionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      variableDefinition: null == variableDefinition
          ? _value._variableDefinition
          : variableDefinition // ignore: cast_nullable_to_non_nullable
              as List<EvidenceVariableDefinition>,
      synthesisType: freezed == synthesisType
          ? _value.synthesisType
          : synthesisType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      studyType: freezed == studyType
          ? _value.studyType
          : studyType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      statistic: freezed == statistic
          ? _value._statistic
          : statistic // ignore: cast_nullable_to_non_nullable
              as List<EvidenceStatistic>?,
      certainty: freezed == certainty
          ? _value._certainty
          : certainty // ignore: cast_nullable_to_non_nullable
              as List<EvidenceCertainty>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvidenceImpl extends _Evidence {
  const _$EvidenceImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.Evidence)
      this.resourceType = R4ResourceType.Evidence,
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
      this.url,
      @JsonKey(name: '_url') this.urlElement,
      final List<Identifier>? identifier,
      this.version,
      @JsonKey(name: '_version') this.versionElement,
      this.title,
      @JsonKey(name: '_title') this.titleElement,
      this.citeAsReference,
      this.citAsMarkdown,
      @JsonKey(name: '_citeAsMarkdown') this.citeAsMarkdownElement,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      final List<UsageContext>? useContext,
      this.approvalDate,
      @JsonKey(name: '_approvalDate') this.approvalDateElement,
      this.lastReviewDate,
      @JsonKey(name: '_lastReviewDate') this.lastReviewDateElement,
      this.publisher,
      @JsonKey(name: '_publisher') this.publisherElement,
      final List<ContactDetail>? contact,
      final List<ContactDetail>? author,
      final List<ContactDetail>? editor,
      final List<ContactDetail>? reviewer,
      final List<ContactDetail>? endorser,
      final List<RelatedArtifact>? relatedArtifact,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.assertion,
      @JsonKey(name: '_assertion') this.assertionElement,
      final List<Annotation>? note,
      required final List<EvidenceVariableDefinition> variableDefinition,
      this.synthesisType,
      this.studyType,
      final List<EvidenceStatistic>? statistic,
      final List<EvidenceCertainty>? certainty})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _useContext = useContext,
        _contact = contact,
        _author = author,
        _editor = editor,
        _reviewer = reviewer,
        _endorser = endorser,
        _relatedArtifact = relatedArtifact,
        _note = note,
        _variableDefinition = variableDefinition,
        _statistic = statistic,
        _certainty = certainty,
        super._();

  factory _$EvidenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvidenceImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Evidence)
  final R4ResourceType resourceType;
  @override
  final String? id;
  @override
  final FhirMeta? meta;
  @override
  final FhirUri? implicitRules;
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;
  @override
  final FhirCode? language;
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;
  @override
  final Narrative? text;
  final List<Resource>? _contained;
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirUri? url;
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;
  final List<Identifier>? _identifier;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? version;
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;
  @override
  final String? title;
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;
  @override
  final Reference? citeAsReference;
  @override
  final FhirMarkdown? citAsMarkdown;
  @override
  @JsonKey(name: '_citeAsMarkdown')
  final PrimitiveElement? citeAsMarkdownElement;
  @override
  final FhirCode? status;
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;
  @override
  final FhirDateTime? date;
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;
  final List<UsageContext>? _useContext;
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirDate? approvalDate;
  @override
  @JsonKey(name: '_approvalDate')
  final PrimitiveElement? approvalDateElement;
  @override
  final FhirDate? lastReviewDate;
  @override
  @JsonKey(name: '_lastReviewDate')
  final PrimitiveElement? lastReviewDateElement;
  @override
  final String? publisher;
  @override
  @JsonKey(name: '_publisher')
  final PrimitiveElement? publisherElement;
  final List<ContactDetail>? _contact;
  @override
  List<ContactDetail>? get contact {
    final value = _contact;
    if (value == null) return null;
    if (_contact is EqualUnmodifiableListView) return _contact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContactDetail>? _author;
  @override
  List<ContactDetail>? get author {
    final value = _author;
    if (value == null) return null;
    if (_author is EqualUnmodifiableListView) return _author;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContactDetail>? _editor;
  @override
  List<ContactDetail>? get editor {
    final value = _editor;
    if (value == null) return null;
    if (_editor is EqualUnmodifiableListView) return _editor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContactDetail>? _reviewer;
  @override
  List<ContactDetail>? get reviewer {
    final value = _reviewer;
    if (value == null) return null;
    if (_reviewer is EqualUnmodifiableListView) return _reviewer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContactDetail>? _endorser;
  @override
  List<ContactDetail>? get endorser {
    final value = _endorser;
    if (value == null) return null;
    if (_endorser is EqualUnmodifiableListView) return _endorser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RelatedArtifact>? _relatedArtifact;
  @override
  List<RelatedArtifact>? get relatedArtifact {
    final value = _relatedArtifact;
    if (value == null) return null;
    if (_relatedArtifact is EqualUnmodifiableListView) return _relatedArtifact;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirMarkdown? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  @override
  final FhirMarkdown? assertion;
  @override
  @JsonKey(name: '_assertion')
  final PrimitiveElement? assertionElement;
  final List<Annotation>? _note;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EvidenceVariableDefinition> _variableDefinition;
  @override
  List<EvidenceVariableDefinition> get variableDefinition {
    if (_variableDefinition is EqualUnmodifiableListView)
      return _variableDefinition;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variableDefinition);
  }

  @override
  final CodeableConcept? synthesisType;
  @override
  final CodeableConcept? studyType;
  final List<EvidenceStatistic>? _statistic;
  @override
  List<EvidenceStatistic>? get statistic {
    final value = _statistic;
    if (value == null) return null;
    if (_statistic is EqualUnmodifiableListView) return _statistic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EvidenceCertainty>? _certainty;
  @override
  List<EvidenceCertainty>? get certainty {
    final value = _certainty;
    if (value == null) return null;
    if (_certainty is EqualUnmodifiableListView) return _certainty;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvidenceImpl &&
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
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlElement, urlElement) ||
                other.urlElement == urlElement) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.versionElement, versionElement) ||
                other.versionElement == versionElement) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleElement, titleElement) ||
                other.titleElement == titleElement) &&
            (identical(other.citeAsReference, citeAsReference) ||
                other.citeAsReference == citeAsReference) &&
            (identical(other.citAsMarkdown, citAsMarkdown) ||
                other.citAsMarkdown == citAsMarkdown) &&
            (identical(other.citeAsMarkdownElement, citeAsMarkdownElement) ||
                other.citeAsMarkdownElement == citeAsMarkdownElement) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            const DeepCollectionEquality()
                .equals(other._useContext, _useContext) &&
            (identical(other.approvalDate, approvalDate) ||
                other.approvalDate == approvalDate) &&
            (identical(other.approvalDateElement, approvalDateElement) ||
                other.approvalDateElement == approvalDateElement) &&
            (identical(other.lastReviewDate, lastReviewDate) ||
                other.lastReviewDate == lastReviewDate) &&
            (identical(other.lastReviewDateElement, lastReviewDateElement) ||
                other.lastReviewDateElement == lastReviewDateElement) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publisherElement, publisherElement) ||
                other.publisherElement == publisherElement) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            const DeepCollectionEquality().equals(other._author, _author) &&
            const DeepCollectionEquality().equals(other._editor, _editor) &&
            const DeepCollectionEquality().equals(other._reviewer, _reviewer) &&
            const DeepCollectionEquality().equals(other._endorser, _endorser) &&
            const DeepCollectionEquality()
                .equals(other._relatedArtifact, _relatedArtifact) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.assertion, assertion) ||
                other.assertion == assertion) &&
            (identical(other.assertionElement, assertionElement) ||
                other.assertionElement == assertionElement) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            const DeepCollectionEquality()
                .equals(other._variableDefinition, _variableDefinition) &&
            (identical(other.synthesisType, synthesisType) ||
                other.synthesisType == synthesisType) &&
            (identical(other.studyType, studyType) ||
                other.studyType == studyType) &&
            const DeepCollectionEquality()
                .equals(other._statistic, _statistic) &&
            const DeepCollectionEquality()
                .equals(other._certainty, _certainty));
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
        url,
        urlElement,
        const DeepCollectionEquality().hash(_identifier),
        version,
        versionElement,
        title,
        titleElement,
        citeAsReference,
        citAsMarkdown,
        citeAsMarkdownElement,
        status,
        statusElement,
        date,
        dateElement,
        const DeepCollectionEquality().hash(_useContext),
        approvalDate,
        approvalDateElement,
        lastReviewDate,
        lastReviewDateElement,
        publisher,
        publisherElement,
        const DeepCollectionEquality().hash(_contact),
        const DeepCollectionEquality().hash(_author),
        const DeepCollectionEquality().hash(_editor),
        const DeepCollectionEquality().hash(_reviewer),
        const DeepCollectionEquality().hash(_endorser),
        const DeepCollectionEquality().hash(_relatedArtifact),
        description,
        descriptionElement,
        assertion,
        assertionElement,
        const DeepCollectionEquality().hash(_note),
        const DeepCollectionEquality().hash(_variableDefinition),
        synthesisType,
        studyType,
        const DeepCollectionEquality().hash(_statistic),
        const DeepCollectionEquality().hash(_certainty)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvidenceImplCopyWith<_$EvidenceImpl> get copyWith =>
      __$$EvidenceImplCopyWithImpl<_$EvidenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvidenceImplToJson(
      this,
    );
  }
}

abstract class _Evidence extends Evidence {
  const factory _Evidence(
      {@JsonKey(unknownEnumValue: R4ResourceType.Evidence)
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
      final FhirUri? url,
      @JsonKey(name: '_url') final PrimitiveElement? urlElement,
      final List<Identifier>? identifier,
      final String? version,
      @JsonKey(name: '_version') final PrimitiveElement? versionElement,
      final String? title,
      @JsonKey(name: '_title') final PrimitiveElement? titleElement,
      final Reference? citeAsReference,
      final FhirMarkdown? citAsMarkdown,
      @JsonKey(name: '_citeAsMarkdown')
      final PrimitiveElement? citeAsMarkdownElement,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final FhirDateTime? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      final List<UsageContext>? useContext,
      final FhirDate? approvalDate,
      @JsonKey(name: '_approvalDate')
      final PrimitiveElement? approvalDateElement,
      final FhirDate? lastReviewDate,
      @JsonKey(name: '_lastReviewDate')
      final PrimitiveElement? lastReviewDateElement,
      final String? publisher,
      @JsonKey(name: '_publisher') final PrimitiveElement? publisherElement,
      final List<ContactDetail>? contact,
      final List<ContactDetail>? author,
      final List<ContactDetail>? editor,
      final List<ContactDetail>? reviewer,
      final List<ContactDetail>? endorser,
      final List<RelatedArtifact>? relatedArtifact,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirMarkdown? assertion,
      @JsonKey(name: '_assertion') final PrimitiveElement? assertionElement,
      final List<Annotation>? note,
      required final List<EvidenceVariableDefinition> variableDefinition,
      final CodeableConcept? synthesisType,
      final CodeableConcept? studyType,
      final List<EvidenceStatistic>? statistic,
      final List<EvidenceCertainty>? certainty}) = _$EvidenceImpl;
  const _Evidence._() : super._();

  factory _Evidence.fromJson(Map<String, dynamic> json) =
      _$EvidenceImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Evidence)
  R4ResourceType get resourceType;
  @override
  String? get id;
  @override
  FhirMeta? get meta;
  @override
  FhirUri? get implicitRules;
  @override
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override
  FhirCode? get language;
  @override
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override
  Narrative? get text;
  @override
  List<Resource>? get contained;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  FhirUri? get url;
  @override
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override
  List<Identifier>? get identifier;
  @override
  String? get version;
  @override
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override
  String? get title;
  @override
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override
  Reference? get citeAsReference;
  @override
  FhirMarkdown? get citAsMarkdown;
  @override
  @JsonKey(name: '_citeAsMarkdown')
  PrimitiveElement? get citeAsMarkdownElement;
  @override
  FhirCode? get status;
  @override
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override
  FhirDateTime? get date;
  @override
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override
  List<UsageContext>? get useContext;
  @override
  FhirDate? get approvalDate;
  @override
  @JsonKey(name: '_approvalDate')
  PrimitiveElement? get approvalDateElement;
  @override
  FhirDate? get lastReviewDate;
  @override
  @JsonKey(name: '_lastReviewDate')
  PrimitiveElement? get lastReviewDateElement;
  @override
  String? get publisher;
  @override
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement;
  @override
  List<ContactDetail>? get contact;
  @override
  List<ContactDetail>? get author;
  @override
  List<ContactDetail>? get editor;
  @override
  List<ContactDetail>? get reviewer;
  @override
  List<ContactDetail>? get endorser;
  @override
  List<RelatedArtifact>? get relatedArtifact;
  @override
  FhirMarkdown? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  FhirMarkdown? get assertion;
  @override
  @JsonKey(name: '_assertion')
  PrimitiveElement? get assertionElement;
  @override
  List<Annotation>? get note;
  @override
  List<EvidenceVariableDefinition> get variableDefinition;
  @override
  CodeableConcept? get synthesisType;
  @override
  CodeableConcept? get studyType;
  @override
  List<EvidenceStatistic>? get statistic;
  @override
  List<EvidenceCertainty>? get certainty;
  @override
  @JsonKey(ignore: true)
  _$$EvidenceImplCopyWith<_$EvidenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EvidenceVariableDefinition _$EvidenceVariableDefinitionFromJson(
    Map<String, dynamic> json) {
  return _EvidenceVariableDefinition.fromJson(json);
}

/// @nodoc
mixin _$EvidenceVariableDefinition {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  FhirMarkdown? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;
  CodeableConcept get variableRole => throw _privateConstructorUsedError;
  Reference? get observed => throw _privateConstructorUsedError;
  Reference? get intended => throw _privateConstructorUsedError;
  CodeableConcept? get directnessMatch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvidenceVariableDefinitionCopyWith<EvidenceVariableDefinition>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvidenceVariableDefinitionCopyWith<$Res> {
  factory $EvidenceVariableDefinitionCopyWith(EvidenceVariableDefinition value,
          $Res Function(EvidenceVariableDefinition) then) =
      _$EvidenceVariableDefinitionCopyWithImpl<$Res,
          EvidenceVariableDefinition>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<Annotation>? note,
      CodeableConcept variableRole,
      Reference? observed,
      Reference? intended,
      CodeableConcept? directnessMatch});

  $CodeableConceptCopyWith<$Res> get variableRole;
  $ReferenceCopyWith<$Res>? get observed;
  $ReferenceCopyWith<$Res>? get intended;
  $CodeableConceptCopyWith<$Res>? get directnessMatch;
}

/// @nodoc
class _$EvidenceVariableDefinitionCopyWithImpl<$Res,
        $Val extends EvidenceVariableDefinition>
    implements $EvidenceVariableDefinitionCopyWith<$Res> {
  _$EvidenceVariableDefinitionCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? note = freezed,
    Object? variableRole = null,
    Object? observed = freezed,
    Object? intended = freezed,
    Object? directnessMatch = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      variableRole: null == variableRole
          ? _value.variableRole
          : variableRole // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      observed: freezed == observed
          ? _value.observed
          : observed // ignore: cast_nullable_to_non_nullable
              as Reference?,
      intended: freezed == intended
          ? _value.intended
          : intended // ignore: cast_nullable_to_non_nullable
              as Reference?,
      directnessMatch: freezed == directnessMatch
          ? _value.directnessMatch
          : directnessMatch // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get variableRole {
    return $CodeableConceptCopyWith<$Res>(_value.variableRole, (value) {
      return _then(_value.copyWith(variableRole: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get observed {
    if (_value.observed == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.observed!, (value) {
      return _then(_value.copyWith(observed: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get intended {
    if (_value.intended == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.intended!, (value) {
      return _then(_value.copyWith(intended: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get directnessMatch {
    if (_value.directnessMatch == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.directnessMatch!, (value) {
      return _then(_value.copyWith(directnessMatch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvidenceVariableDefinitionImplCopyWith<$Res>
    implements $EvidenceVariableDefinitionCopyWith<$Res> {
  factory _$$EvidenceVariableDefinitionImplCopyWith(
          _$EvidenceVariableDefinitionImpl value,
          $Res Function(_$EvidenceVariableDefinitionImpl) then) =
      __$$EvidenceVariableDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<Annotation>? note,
      CodeableConcept variableRole,
      Reference? observed,
      Reference? intended,
      CodeableConcept? directnessMatch});

  @override
  $CodeableConceptCopyWith<$Res> get variableRole;
  @override
  $ReferenceCopyWith<$Res>? get observed;
  @override
  $ReferenceCopyWith<$Res>? get intended;
  @override
  $CodeableConceptCopyWith<$Res>? get directnessMatch;
}

/// @nodoc
class __$$EvidenceVariableDefinitionImplCopyWithImpl<$Res>
    extends _$EvidenceVariableDefinitionCopyWithImpl<$Res,
        _$EvidenceVariableDefinitionImpl>
    implements _$$EvidenceVariableDefinitionImplCopyWith<$Res> {
  __$$EvidenceVariableDefinitionImplCopyWithImpl(
      _$EvidenceVariableDefinitionImpl _value,
      $Res Function(_$EvidenceVariableDefinitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? note = freezed,
    Object? variableRole = null,
    Object? observed = freezed,
    Object? intended = freezed,
    Object? directnessMatch = freezed,
  }) {
    return _then(_$EvidenceVariableDefinitionImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      variableRole: null == variableRole
          ? _value.variableRole
          : variableRole // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      observed: freezed == observed
          ? _value.observed
          : observed // ignore: cast_nullable_to_non_nullable
              as Reference?,
      intended: freezed == intended
          ? _value.intended
          : intended // ignore: cast_nullable_to_non_nullable
              as Reference?,
      directnessMatch: freezed == directnessMatch
          ? _value.directnessMatch
          : directnessMatch // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvidenceVariableDefinitionImpl extends _EvidenceVariableDefinition {
  const _$EvidenceVariableDefinitionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<Annotation>? note,
      required this.variableRole,
      this.observed,
      this.intended,
      this.directnessMatch})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _note = note,
        super._();

  factory _$EvidenceVariableDefinitionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EvidenceVariableDefinitionImplFromJson(json);

  @override
  final String? id;
  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirMarkdown? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  final List<Annotation>? _note;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CodeableConcept variableRole;
  @override
  final Reference? observed;
  @override
  final Reference? intended;
  @override
  final CodeableConcept? directnessMatch;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvidenceVariableDefinitionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            (identical(other.variableRole, variableRole) ||
                other.variableRole == variableRole) &&
            (identical(other.observed, observed) ||
                other.observed == observed) &&
            (identical(other.intended, intended) ||
                other.intended == intended) &&
            (identical(other.directnessMatch, directnessMatch) ||
                other.directnessMatch == directnessMatch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      description,
      descriptionElement,
      const DeepCollectionEquality().hash(_note),
      variableRole,
      observed,
      intended,
      directnessMatch);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvidenceVariableDefinitionImplCopyWith<_$EvidenceVariableDefinitionImpl>
      get copyWith => __$$EvidenceVariableDefinitionImplCopyWithImpl<
          _$EvidenceVariableDefinitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvidenceVariableDefinitionImplToJson(
      this,
    );
  }
}

abstract class _EvidenceVariableDefinition extends EvidenceVariableDefinition {
  const factory _EvidenceVariableDefinition(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<Annotation>? note,
      required final CodeableConcept variableRole,
      final Reference? observed,
      final Reference? intended,
      final CodeableConcept?
          directnessMatch}) = _$EvidenceVariableDefinitionImpl;
  const _EvidenceVariableDefinition._() : super._();

  factory _EvidenceVariableDefinition.fromJson(Map<String, dynamic> json) =
      _$EvidenceVariableDefinitionImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  FhirMarkdown? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  List<Annotation>? get note;
  @override
  CodeableConcept get variableRole;
  @override
  Reference? get observed;
  @override
  Reference? get intended;
  @override
  CodeableConcept? get directnessMatch;
  @override
  @JsonKey(ignore: true)
  _$$EvidenceVariableDefinitionImplCopyWith<_$EvidenceVariableDefinitionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EvidenceStatistic _$EvidenceStatisticFromJson(Map<String, dynamic> json) {
  return _EvidenceStatistic.fromJson(json);
}

/// @nodoc
mixin _$EvidenceStatistic {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;
  CodeableConcept? get statisticType => throw _privateConstructorUsedError;
  CodeableConcept? get category => throw _privateConstructorUsedError;
  Quantity? get quantity => throw _privateConstructorUsedError;
  FhirUnsignedInt? get numberOfEvents => throw _privateConstructorUsedError;
  @JsonKey(name: '_numberOfEvents')
  PrimitiveElement? get numberOfEventsElement =>
      throw _privateConstructorUsedError;
  FhirUnsignedInt? get numberAffected => throw _privateConstructorUsedError;
  @JsonKey(name: '_numberAffected')
  PrimitiveElement? get numberAffectedElement =>
      throw _privateConstructorUsedError;
  EvidenceSampleSize? get sampleSize => throw _privateConstructorUsedError;
  List<EvidenceAttributeEstimate>? get attributeEstimate =>
      throw _privateConstructorUsedError;
  List<EvidenceModelCharacteristic>? get modelCharacteristic =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvidenceStatisticCopyWith<EvidenceStatistic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvidenceStatisticCopyWith<$Res> {
  factory $EvidenceStatisticCopyWith(
          EvidenceStatistic value, $Res Function(EvidenceStatistic) then) =
      _$EvidenceStatisticCopyWithImpl<$Res, EvidenceStatistic>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<Annotation>? note,
      CodeableConcept? statisticType,
      CodeableConcept? category,
      Quantity? quantity,
      FhirUnsignedInt? numberOfEvents,
      @JsonKey(name: '_numberOfEvents') PrimitiveElement? numberOfEventsElement,
      FhirUnsignedInt? numberAffected,
      @JsonKey(name: '_numberAffected') PrimitiveElement? numberAffectedElement,
      EvidenceSampleSize? sampleSize,
      List<EvidenceAttributeEstimate>? attributeEstimate,
      List<EvidenceModelCharacteristic>? modelCharacteristic});

  $CodeableConceptCopyWith<$Res>? get statisticType;
  $CodeableConceptCopyWith<$Res>? get category;
  $QuantityCopyWith<$Res>? get quantity;
  $EvidenceSampleSizeCopyWith<$Res>? get sampleSize;
}

/// @nodoc
class _$EvidenceStatisticCopyWithImpl<$Res, $Val extends EvidenceStatistic>
    implements $EvidenceStatisticCopyWith<$Res> {
  _$EvidenceStatisticCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? note = freezed,
    Object? statisticType = freezed,
    Object? category = freezed,
    Object? quantity = freezed,
    Object? numberOfEvents = freezed,
    Object? numberOfEventsElement = freezed,
    Object? numberAffected = freezed,
    Object? numberAffectedElement = freezed,
    Object? sampleSize = freezed,
    Object? attributeEstimate = freezed,
    Object? modelCharacteristic = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      statisticType: freezed == statisticType
          ? _value.statisticType
          : statisticType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      numberOfEvents: freezed == numberOfEvents
          ? _value.numberOfEvents
          : numberOfEvents // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      numberOfEventsElement: freezed == numberOfEventsElement
          ? _value.numberOfEventsElement
          : numberOfEventsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      numberAffected: freezed == numberAffected
          ? _value.numberAffected
          : numberAffected // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      numberAffectedElement: freezed == numberAffectedElement
          ? _value.numberAffectedElement
          : numberAffectedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sampleSize: freezed == sampleSize
          ? _value.sampleSize
          : sampleSize // ignore: cast_nullable_to_non_nullable
              as EvidenceSampleSize?,
      attributeEstimate: freezed == attributeEstimate
          ? _value.attributeEstimate
          : attributeEstimate // ignore: cast_nullable_to_non_nullable
              as List<EvidenceAttributeEstimate>?,
      modelCharacteristic: freezed == modelCharacteristic
          ? _value.modelCharacteristic
          : modelCharacteristic // ignore: cast_nullable_to_non_nullable
              as List<EvidenceModelCharacteristic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get statisticType {
    if (_value.statisticType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.statisticType!, (value) {
      return _then(_value.copyWith(statisticType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EvidenceSampleSizeCopyWith<$Res>? get sampleSize {
    if (_value.sampleSize == null) {
      return null;
    }

    return $EvidenceSampleSizeCopyWith<$Res>(_value.sampleSize!, (value) {
      return _then(_value.copyWith(sampleSize: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvidenceStatisticImplCopyWith<$Res>
    implements $EvidenceStatisticCopyWith<$Res> {
  factory _$$EvidenceStatisticImplCopyWith(_$EvidenceStatisticImpl value,
          $Res Function(_$EvidenceStatisticImpl) then) =
      __$$EvidenceStatisticImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<Annotation>? note,
      CodeableConcept? statisticType,
      CodeableConcept? category,
      Quantity? quantity,
      FhirUnsignedInt? numberOfEvents,
      @JsonKey(name: '_numberOfEvents') PrimitiveElement? numberOfEventsElement,
      FhirUnsignedInt? numberAffected,
      @JsonKey(name: '_numberAffected') PrimitiveElement? numberAffectedElement,
      EvidenceSampleSize? sampleSize,
      List<EvidenceAttributeEstimate>? attributeEstimate,
      List<EvidenceModelCharacteristic>? modelCharacteristic});

  @override
  $CodeableConceptCopyWith<$Res>? get statisticType;
  @override
  $CodeableConceptCopyWith<$Res>? get category;
  @override
  $QuantityCopyWith<$Res>? get quantity;
  @override
  $EvidenceSampleSizeCopyWith<$Res>? get sampleSize;
}

/// @nodoc
class __$$EvidenceStatisticImplCopyWithImpl<$Res>
    extends _$EvidenceStatisticCopyWithImpl<$Res, _$EvidenceStatisticImpl>
    implements _$$EvidenceStatisticImplCopyWith<$Res> {
  __$$EvidenceStatisticImplCopyWithImpl(_$EvidenceStatisticImpl _value,
      $Res Function(_$EvidenceStatisticImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? note = freezed,
    Object? statisticType = freezed,
    Object? category = freezed,
    Object? quantity = freezed,
    Object? numberOfEvents = freezed,
    Object? numberOfEventsElement = freezed,
    Object? numberAffected = freezed,
    Object? numberAffectedElement = freezed,
    Object? sampleSize = freezed,
    Object? attributeEstimate = freezed,
    Object? modelCharacteristic = freezed,
  }) {
    return _then(_$EvidenceStatisticImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      statisticType: freezed == statisticType
          ? _value.statisticType
          : statisticType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      numberOfEvents: freezed == numberOfEvents
          ? _value.numberOfEvents
          : numberOfEvents // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      numberOfEventsElement: freezed == numberOfEventsElement
          ? _value.numberOfEventsElement
          : numberOfEventsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      numberAffected: freezed == numberAffected
          ? _value.numberAffected
          : numberAffected // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      numberAffectedElement: freezed == numberAffectedElement
          ? _value.numberAffectedElement
          : numberAffectedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sampleSize: freezed == sampleSize
          ? _value.sampleSize
          : sampleSize // ignore: cast_nullable_to_non_nullable
              as EvidenceSampleSize?,
      attributeEstimate: freezed == attributeEstimate
          ? _value._attributeEstimate
          : attributeEstimate // ignore: cast_nullable_to_non_nullable
              as List<EvidenceAttributeEstimate>?,
      modelCharacteristic: freezed == modelCharacteristic
          ? _value._modelCharacteristic
          : modelCharacteristic // ignore: cast_nullable_to_non_nullable
              as List<EvidenceModelCharacteristic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvidenceStatisticImpl extends _EvidenceStatistic {
  const _$EvidenceStatisticImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<Annotation>? note,
      this.statisticType,
      this.category,
      this.quantity,
      this.numberOfEvents,
      @JsonKey(name: '_numberOfEvents') this.numberOfEventsElement,
      this.numberAffected,
      @JsonKey(name: '_numberAffected') this.numberAffectedElement,
      this.sampleSize,
      final List<EvidenceAttributeEstimate>? attributeEstimate,
      final List<EvidenceModelCharacteristic>? modelCharacteristic})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _note = note,
        _attributeEstimate = attributeEstimate,
        _modelCharacteristic = modelCharacteristic,
        super._();

  factory _$EvidenceStatisticImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvidenceStatisticImplFromJson(json);

  @override
  final String? id;
  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  final List<Annotation>? _note;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CodeableConcept? statisticType;
  @override
  final CodeableConcept? category;
  @override
  final Quantity? quantity;
  @override
  final FhirUnsignedInt? numberOfEvents;
  @override
  @JsonKey(name: '_numberOfEvents')
  final PrimitiveElement? numberOfEventsElement;
  @override
  final FhirUnsignedInt? numberAffected;
  @override
  @JsonKey(name: '_numberAffected')
  final PrimitiveElement? numberAffectedElement;
  @override
  final EvidenceSampleSize? sampleSize;
  final List<EvidenceAttributeEstimate>? _attributeEstimate;
  @override
  List<EvidenceAttributeEstimate>? get attributeEstimate {
    final value = _attributeEstimate;
    if (value == null) return null;
    if (_attributeEstimate is EqualUnmodifiableListView)
      return _attributeEstimate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EvidenceModelCharacteristic>? _modelCharacteristic;
  @override
  List<EvidenceModelCharacteristic>? get modelCharacteristic {
    final value = _modelCharacteristic;
    if (value == null) return null;
    if (_modelCharacteristic is EqualUnmodifiableListView)
      return _modelCharacteristic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvidenceStatisticImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            (identical(other.statisticType, statisticType) ||
                other.statisticType == statisticType) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.numberOfEvents, numberOfEvents) ||
                other.numberOfEvents == numberOfEvents) &&
            (identical(other.numberOfEventsElement, numberOfEventsElement) ||
                other.numberOfEventsElement == numberOfEventsElement) &&
            (identical(other.numberAffected, numberAffected) ||
                other.numberAffected == numberAffected) &&
            (identical(other.numberAffectedElement, numberAffectedElement) ||
                other.numberAffectedElement == numberAffectedElement) &&
            (identical(other.sampleSize, sampleSize) ||
                other.sampleSize == sampleSize) &&
            const DeepCollectionEquality()
                .equals(other._attributeEstimate, _attributeEstimate) &&
            const DeepCollectionEquality()
                .equals(other._modelCharacteristic, _modelCharacteristic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      description,
      descriptionElement,
      const DeepCollectionEquality().hash(_note),
      statisticType,
      category,
      quantity,
      numberOfEvents,
      numberOfEventsElement,
      numberAffected,
      numberAffectedElement,
      sampleSize,
      const DeepCollectionEquality().hash(_attributeEstimate),
      const DeepCollectionEquality().hash(_modelCharacteristic));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvidenceStatisticImplCopyWith<_$EvidenceStatisticImpl> get copyWith =>
      __$$EvidenceStatisticImplCopyWithImpl<_$EvidenceStatisticImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvidenceStatisticImplToJson(
      this,
    );
  }
}

abstract class _EvidenceStatistic extends EvidenceStatistic {
  const factory _EvidenceStatistic(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<Annotation>? note,
      final CodeableConcept? statisticType,
      final CodeableConcept? category,
      final Quantity? quantity,
      final FhirUnsignedInt? numberOfEvents,
      @JsonKey(name: '_numberOfEvents')
      final PrimitiveElement? numberOfEventsElement,
      final FhirUnsignedInt? numberAffected,
      @JsonKey(name: '_numberAffected')
      final PrimitiveElement? numberAffectedElement,
      final EvidenceSampleSize? sampleSize,
      final List<EvidenceAttributeEstimate>? attributeEstimate,
      final List<EvidenceModelCharacteristic>?
          modelCharacteristic}) = _$EvidenceStatisticImpl;
  const _EvidenceStatistic._() : super._();

  factory _EvidenceStatistic.fromJson(Map<String, dynamic> json) =
      _$EvidenceStatisticImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  String? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  List<Annotation>? get note;
  @override
  CodeableConcept? get statisticType;
  @override
  CodeableConcept? get category;
  @override
  Quantity? get quantity;
  @override
  FhirUnsignedInt? get numberOfEvents;
  @override
  @JsonKey(name: '_numberOfEvents')
  PrimitiveElement? get numberOfEventsElement;
  @override
  FhirUnsignedInt? get numberAffected;
  @override
  @JsonKey(name: '_numberAffected')
  PrimitiveElement? get numberAffectedElement;
  @override
  EvidenceSampleSize? get sampleSize;
  @override
  List<EvidenceAttributeEstimate>? get attributeEstimate;
  @override
  List<EvidenceModelCharacteristic>? get modelCharacteristic;
  @override
  @JsonKey(ignore: true)
  _$$EvidenceStatisticImplCopyWith<_$EvidenceStatisticImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EvidenceSampleSize _$EvidenceSampleSizeFromJson(Map<String, dynamic> json) {
  return _EvidenceSampleSize.fromJson(json);
}

/// @nodoc
mixin _$EvidenceSampleSize {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;
  FhirUnsignedInt? get numberOfStudies => throw _privateConstructorUsedError;
  @JsonKey(name: '_numberOfStudies')
  PrimitiveElement? get numberOfStudiesElement =>
      throw _privateConstructorUsedError;
  FhirUnsignedInt? get numberOfParticipants =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_numberOfParticipants')
  PrimitiveElement? get numberOfParticipantsElement =>
      throw _privateConstructorUsedError;
  FhirUnsignedInt? get knownDataCount => throw _privateConstructorUsedError;
  @JsonKey(name: '_knownDataCount')
  PrimitiveElement? get knownDataCountElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvidenceSampleSizeCopyWith<EvidenceSampleSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvidenceSampleSizeCopyWith<$Res> {
  factory $EvidenceSampleSizeCopyWith(
          EvidenceSampleSize value, $Res Function(EvidenceSampleSize) then) =
      _$EvidenceSampleSizeCopyWithImpl<$Res, EvidenceSampleSize>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<Annotation>? note,
      FhirUnsignedInt? numberOfStudies,
      @JsonKey(name: '_numberOfStudies')
      PrimitiveElement? numberOfStudiesElement,
      FhirUnsignedInt? numberOfParticipants,
      @JsonKey(name: '_numberOfParticipants')
      PrimitiveElement? numberOfParticipantsElement,
      FhirUnsignedInt? knownDataCount,
      @JsonKey(name: '_knownDataCount')
      PrimitiveElement? knownDataCountElement});
}

/// @nodoc
class _$EvidenceSampleSizeCopyWithImpl<$Res, $Val extends EvidenceSampleSize>
    implements $EvidenceSampleSizeCopyWith<$Res> {
  _$EvidenceSampleSizeCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? note = freezed,
    Object? numberOfStudies = freezed,
    Object? numberOfStudiesElement = freezed,
    Object? numberOfParticipants = freezed,
    Object? numberOfParticipantsElement = freezed,
    Object? knownDataCount = freezed,
    Object? knownDataCountElement = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      numberOfStudies: freezed == numberOfStudies
          ? _value.numberOfStudies
          : numberOfStudies // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      numberOfStudiesElement: freezed == numberOfStudiesElement
          ? _value.numberOfStudiesElement
          : numberOfStudiesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      numberOfParticipants: freezed == numberOfParticipants
          ? _value.numberOfParticipants
          : numberOfParticipants // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      numberOfParticipantsElement: freezed == numberOfParticipantsElement
          ? _value.numberOfParticipantsElement
          : numberOfParticipantsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      knownDataCount: freezed == knownDataCount
          ? _value.knownDataCount
          : knownDataCount // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      knownDataCountElement: freezed == knownDataCountElement
          ? _value.knownDataCountElement
          : knownDataCountElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EvidenceSampleSizeImplCopyWith<$Res>
    implements $EvidenceSampleSizeCopyWith<$Res> {
  factory _$$EvidenceSampleSizeImplCopyWith(_$EvidenceSampleSizeImpl value,
          $Res Function(_$EvidenceSampleSizeImpl) then) =
      __$$EvidenceSampleSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<Annotation>? note,
      FhirUnsignedInt? numberOfStudies,
      @JsonKey(name: '_numberOfStudies')
      PrimitiveElement? numberOfStudiesElement,
      FhirUnsignedInt? numberOfParticipants,
      @JsonKey(name: '_numberOfParticipants')
      PrimitiveElement? numberOfParticipantsElement,
      FhirUnsignedInt? knownDataCount,
      @JsonKey(name: '_knownDataCount')
      PrimitiveElement? knownDataCountElement});
}

/// @nodoc
class __$$EvidenceSampleSizeImplCopyWithImpl<$Res>
    extends _$EvidenceSampleSizeCopyWithImpl<$Res, _$EvidenceSampleSizeImpl>
    implements _$$EvidenceSampleSizeImplCopyWith<$Res> {
  __$$EvidenceSampleSizeImplCopyWithImpl(_$EvidenceSampleSizeImpl _value,
      $Res Function(_$EvidenceSampleSizeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? note = freezed,
    Object? numberOfStudies = freezed,
    Object? numberOfStudiesElement = freezed,
    Object? numberOfParticipants = freezed,
    Object? numberOfParticipantsElement = freezed,
    Object? knownDataCount = freezed,
    Object? knownDataCountElement = freezed,
  }) {
    return _then(_$EvidenceSampleSizeImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      numberOfStudies: freezed == numberOfStudies
          ? _value.numberOfStudies
          : numberOfStudies // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      numberOfStudiesElement: freezed == numberOfStudiesElement
          ? _value.numberOfStudiesElement
          : numberOfStudiesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      numberOfParticipants: freezed == numberOfParticipants
          ? _value.numberOfParticipants
          : numberOfParticipants // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      numberOfParticipantsElement: freezed == numberOfParticipantsElement
          ? _value.numberOfParticipantsElement
          : numberOfParticipantsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      knownDataCount: freezed == knownDataCount
          ? _value.knownDataCount
          : knownDataCount // ignore: cast_nullable_to_non_nullable
              as FhirUnsignedInt?,
      knownDataCountElement: freezed == knownDataCountElement
          ? _value.knownDataCountElement
          : knownDataCountElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvidenceSampleSizeImpl extends _EvidenceSampleSize {
  const _$EvidenceSampleSizeImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<Annotation>? note,
      this.numberOfStudies,
      @JsonKey(name: '_numberOfStudies') this.numberOfStudiesElement,
      this.numberOfParticipants,
      @JsonKey(name: '_numberOfParticipants') this.numberOfParticipantsElement,
      this.knownDataCount,
      @JsonKey(name: '_knownDataCount') this.knownDataCountElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _note = note,
        super._();

  factory _$EvidenceSampleSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvidenceSampleSizeImplFromJson(json);

  @override
  final String? id;
  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  final List<Annotation>? _note;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirUnsignedInt? numberOfStudies;
  @override
  @JsonKey(name: '_numberOfStudies')
  final PrimitiveElement? numberOfStudiesElement;
  @override
  final FhirUnsignedInt? numberOfParticipants;
  @override
  @JsonKey(name: '_numberOfParticipants')
  final PrimitiveElement? numberOfParticipantsElement;
  @override
  final FhirUnsignedInt? knownDataCount;
  @override
  @JsonKey(name: '_knownDataCount')
  final PrimitiveElement? knownDataCountElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvidenceSampleSizeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            (identical(other.numberOfStudies, numberOfStudies) ||
                other.numberOfStudies == numberOfStudies) &&
            (identical(other.numberOfStudiesElement, numberOfStudiesElement) ||
                other.numberOfStudiesElement == numberOfStudiesElement) &&
            (identical(other.numberOfParticipants, numberOfParticipants) ||
                other.numberOfParticipants == numberOfParticipants) &&
            (identical(other.numberOfParticipantsElement,
                    numberOfParticipantsElement) ||
                other.numberOfParticipantsElement ==
                    numberOfParticipantsElement) &&
            (identical(other.knownDataCount, knownDataCount) ||
                other.knownDataCount == knownDataCount) &&
            (identical(other.knownDataCountElement, knownDataCountElement) ||
                other.knownDataCountElement == knownDataCountElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      description,
      descriptionElement,
      const DeepCollectionEquality().hash(_note),
      numberOfStudies,
      numberOfStudiesElement,
      numberOfParticipants,
      numberOfParticipantsElement,
      knownDataCount,
      knownDataCountElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvidenceSampleSizeImplCopyWith<_$EvidenceSampleSizeImpl> get copyWith =>
      __$$EvidenceSampleSizeImplCopyWithImpl<_$EvidenceSampleSizeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvidenceSampleSizeImplToJson(
      this,
    );
  }
}

abstract class _EvidenceSampleSize extends EvidenceSampleSize {
  const factory _EvidenceSampleSize(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<Annotation>? note,
      final FhirUnsignedInt? numberOfStudies,
      @JsonKey(name: '_numberOfStudies')
      final PrimitiveElement? numberOfStudiesElement,
      final FhirUnsignedInt? numberOfParticipants,
      @JsonKey(name: '_numberOfParticipants')
      final PrimitiveElement? numberOfParticipantsElement,
      final FhirUnsignedInt? knownDataCount,
      @JsonKey(name: '_knownDataCount')
      final PrimitiveElement?
          knownDataCountElement}) = _$EvidenceSampleSizeImpl;
  const _EvidenceSampleSize._() : super._();

  factory _EvidenceSampleSize.fromJson(Map<String, dynamic> json) =
      _$EvidenceSampleSizeImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  String? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  List<Annotation>? get note;
  @override
  FhirUnsignedInt? get numberOfStudies;
  @override
  @JsonKey(name: '_numberOfStudies')
  PrimitiveElement? get numberOfStudiesElement;
  @override
  FhirUnsignedInt? get numberOfParticipants;
  @override
  @JsonKey(name: '_numberOfParticipants')
  PrimitiveElement? get numberOfParticipantsElement;
  @override
  FhirUnsignedInt? get knownDataCount;
  @override
  @JsonKey(name: '_knownDataCount')
  PrimitiveElement? get knownDataCountElement;
  @override
  @JsonKey(ignore: true)
  _$$EvidenceSampleSizeImplCopyWith<_$EvidenceSampleSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EvidenceAttributeEstimate _$EvidenceAttributeEstimateFromJson(
    Map<String, dynamic> json) {
  return _EvidenceAttributeEstimate.fromJson(json);
}

/// @nodoc
mixin _$EvidenceAttributeEstimate {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;
  CodeableConcept? get type => throw _privateConstructorUsedError;
  Quantity? get quantity => throw _privateConstructorUsedError;
  FhirDecimal? get level => throw _privateConstructorUsedError;
  @JsonKey(name: '_level')
  PrimitiveElement? get levelElement => throw _privateConstructorUsedError;
  Range? get range => throw _privateConstructorUsedError;
  List<EvidenceAttributeEstimate>? get attributeEstimate =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvidenceAttributeEstimateCopyWith<EvidenceAttributeEstimate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvidenceAttributeEstimateCopyWith<$Res> {
  factory $EvidenceAttributeEstimateCopyWith(EvidenceAttributeEstimate value,
          $Res Function(EvidenceAttributeEstimate) then) =
      _$EvidenceAttributeEstimateCopyWithImpl<$Res, EvidenceAttributeEstimate>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<Annotation>? note,
      CodeableConcept? type,
      Quantity? quantity,
      FhirDecimal? level,
      @JsonKey(name: '_level') PrimitiveElement? levelElement,
      Range? range,
      List<EvidenceAttributeEstimate>? attributeEstimate});

  $CodeableConceptCopyWith<$Res>? get type;
  $QuantityCopyWith<$Res>? get quantity;
  $RangeCopyWith<$Res>? get range;
}

/// @nodoc
class _$EvidenceAttributeEstimateCopyWithImpl<$Res,
        $Val extends EvidenceAttributeEstimate>
    implements $EvidenceAttributeEstimateCopyWith<$Res> {
  _$EvidenceAttributeEstimateCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? note = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
    Object? level = freezed,
    Object? levelElement = freezed,
    Object? range = freezed,
    Object? attributeEstimate = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      levelElement: freezed == levelElement
          ? _value.levelElement
          : levelElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      attributeEstimate: freezed == attributeEstimate
          ? _value.attributeEstimate
          : attributeEstimate // ignore: cast_nullable_to_non_nullable
              as List<EvidenceAttributeEstimate>?,
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
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get range {
    if (_value.range == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.range!, (value) {
      return _then(_value.copyWith(range: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvidenceAttributeEstimateImplCopyWith<$Res>
    implements $EvidenceAttributeEstimateCopyWith<$Res> {
  factory _$$EvidenceAttributeEstimateImplCopyWith(
          _$EvidenceAttributeEstimateImpl value,
          $Res Function(_$EvidenceAttributeEstimateImpl) then) =
      __$$EvidenceAttributeEstimateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<Annotation>? note,
      CodeableConcept? type,
      Quantity? quantity,
      FhirDecimal? level,
      @JsonKey(name: '_level') PrimitiveElement? levelElement,
      Range? range,
      List<EvidenceAttributeEstimate>? attributeEstimate});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $QuantityCopyWith<$Res>? get quantity;
  @override
  $RangeCopyWith<$Res>? get range;
}

/// @nodoc
class __$$EvidenceAttributeEstimateImplCopyWithImpl<$Res>
    extends _$EvidenceAttributeEstimateCopyWithImpl<$Res,
        _$EvidenceAttributeEstimateImpl>
    implements _$$EvidenceAttributeEstimateImplCopyWith<$Res> {
  __$$EvidenceAttributeEstimateImplCopyWithImpl(
      _$EvidenceAttributeEstimateImpl _value,
      $Res Function(_$EvidenceAttributeEstimateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? note = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
    Object? level = freezed,
    Object? levelElement = freezed,
    Object? range = freezed,
    Object? attributeEstimate = freezed,
  }) {
    return _then(_$EvidenceAttributeEstimateImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as FhirDecimal?,
      levelElement: freezed == levelElement
          ? _value.levelElement
          : levelElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      attributeEstimate: freezed == attributeEstimate
          ? _value._attributeEstimate
          : attributeEstimate // ignore: cast_nullable_to_non_nullable
              as List<EvidenceAttributeEstimate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvidenceAttributeEstimateImpl extends _EvidenceAttributeEstimate {
  const _$EvidenceAttributeEstimateImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<Annotation>? note,
      this.type,
      this.quantity,
      this.level,
      @JsonKey(name: '_level') this.levelElement,
      this.range,
      final List<EvidenceAttributeEstimate>? attributeEstimate})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _note = note,
        _attributeEstimate = attributeEstimate,
        super._();

  factory _$EvidenceAttributeEstimateImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvidenceAttributeEstimateImplFromJson(json);

  @override
  final String? id;
  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  final List<Annotation>? _note;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CodeableConcept? type;
  @override
  final Quantity? quantity;
  @override
  final FhirDecimal? level;
  @override
  @JsonKey(name: '_level')
  final PrimitiveElement? levelElement;
  @override
  final Range? range;
  final List<EvidenceAttributeEstimate>? _attributeEstimate;
  @override
  List<EvidenceAttributeEstimate>? get attributeEstimate {
    final value = _attributeEstimate;
    if (value == null) return null;
    if (_attributeEstimate is EqualUnmodifiableListView)
      return _attributeEstimate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvidenceAttributeEstimateImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.levelElement, levelElement) ||
                other.levelElement == levelElement) &&
            (identical(other.range, range) || other.range == range) &&
            const DeepCollectionEquality()
                .equals(other._attributeEstimate, _attributeEstimate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      description,
      descriptionElement,
      const DeepCollectionEquality().hash(_note),
      type,
      quantity,
      level,
      levelElement,
      range,
      const DeepCollectionEquality().hash(_attributeEstimate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvidenceAttributeEstimateImplCopyWith<_$EvidenceAttributeEstimateImpl>
      get copyWith => __$$EvidenceAttributeEstimateImplCopyWithImpl<
          _$EvidenceAttributeEstimateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvidenceAttributeEstimateImplToJson(
      this,
    );
  }
}

abstract class _EvidenceAttributeEstimate extends EvidenceAttributeEstimate {
  const factory _EvidenceAttributeEstimate(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<Annotation>? note,
      final CodeableConcept? type,
      final Quantity? quantity,
      final FhirDecimal? level,
      @JsonKey(name: '_level') final PrimitiveElement? levelElement,
      final Range? range,
      final List<EvidenceAttributeEstimate>?
          attributeEstimate}) = _$EvidenceAttributeEstimateImpl;
  const _EvidenceAttributeEstimate._() : super._();

  factory _EvidenceAttributeEstimate.fromJson(Map<String, dynamic> json) =
      _$EvidenceAttributeEstimateImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  String? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  List<Annotation>? get note;
  @override
  CodeableConcept? get type;
  @override
  Quantity? get quantity;
  @override
  FhirDecimal? get level;
  @override
  @JsonKey(name: '_level')
  PrimitiveElement? get levelElement;
  @override
  Range? get range;
  @override
  List<EvidenceAttributeEstimate>? get attributeEstimate;
  @override
  @JsonKey(ignore: true)
  _$$EvidenceAttributeEstimateImplCopyWith<_$EvidenceAttributeEstimateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EvidenceModelCharacteristic _$EvidenceModelCharacteristicFromJson(
    Map<String, dynamic> json) {
  return _EvidenceModelCharacteristic.fromJson(json);
}

/// @nodoc
mixin _$EvidenceModelCharacteristic {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept get code => throw _privateConstructorUsedError;
  Quantity? get value => throw _privateConstructorUsedError;
  List<EvidenceVar>? get variable => throw _privateConstructorUsedError;
  List<EvidenceAttributeEstimate>? get attributeEstimate =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvidenceModelCharacteristicCopyWith<EvidenceModelCharacteristic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvidenceModelCharacteristicCopyWith<$Res> {
  factory $EvidenceModelCharacteristicCopyWith(
          EvidenceModelCharacteristic value,
          $Res Function(EvidenceModelCharacteristic) then) =
      _$EvidenceModelCharacteristicCopyWithImpl<$Res,
          EvidenceModelCharacteristic>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept code,
      Quantity? value,
      List<EvidenceVar>? variable,
      List<EvidenceAttributeEstimate>? attributeEstimate});

  $CodeableConceptCopyWith<$Res> get code;
  $QuantityCopyWith<$Res>? get value;
}

/// @nodoc
class _$EvidenceModelCharacteristicCopyWithImpl<$Res,
        $Val extends EvidenceModelCharacteristic>
    implements $EvidenceModelCharacteristicCopyWith<$Res> {
  _$EvidenceModelCharacteristicCopyWithImpl(this._value, this._then);

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
    Object? code = null,
    Object? value = freezed,
    Object? variable = freezed,
    Object? attributeEstimate = freezed,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      variable: freezed == variable
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as List<EvidenceVar>?,
      attributeEstimate: freezed == attributeEstimate
          ? _value.attributeEstimate
          : attributeEstimate // ignore: cast_nullable_to_non_nullable
              as List<EvidenceAttributeEstimate>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get code {
    return $CodeableConceptCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.value!, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvidenceModelCharacteristicImplCopyWith<$Res>
    implements $EvidenceModelCharacteristicCopyWith<$Res> {
  factory _$$EvidenceModelCharacteristicImplCopyWith(
          _$EvidenceModelCharacteristicImpl value,
          $Res Function(_$EvidenceModelCharacteristicImpl) then) =
      __$$EvidenceModelCharacteristicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept code,
      Quantity? value,
      List<EvidenceVar>? variable,
      List<EvidenceAttributeEstimate>? attributeEstimate});

  @override
  $CodeableConceptCopyWith<$Res> get code;
  @override
  $QuantityCopyWith<$Res>? get value;
}

/// @nodoc
class __$$EvidenceModelCharacteristicImplCopyWithImpl<$Res>
    extends _$EvidenceModelCharacteristicCopyWithImpl<$Res,
        _$EvidenceModelCharacteristicImpl>
    implements _$$EvidenceModelCharacteristicImplCopyWith<$Res> {
  __$$EvidenceModelCharacteristicImplCopyWithImpl(
      _$EvidenceModelCharacteristicImpl _value,
      $Res Function(_$EvidenceModelCharacteristicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = null,
    Object? value = freezed,
    Object? variable = freezed,
    Object? attributeEstimate = freezed,
  }) {
    return _then(_$EvidenceModelCharacteristicImpl(
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      variable: freezed == variable
          ? _value._variable
          : variable // ignore: cast_nullable_to_non_nullable
              as List<EvidenceVar>?,
      attributeEstimate: freezed == attributeEstimate
          ? _value._attributeEstimate
          : attributeEstimate // ignore: cast_nullable_to_non_nullable
              as List<EvidenceAttributeEstimate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvidenceModelCharacteristicImpl extends _EvidenceModelCharacteristic {
  const _$EvidenceModelCharacteristicImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.code,
      this.value,
      final List<EvidenceVar>? variable,
      final List<EvidenceAttributeEstimate>? attributeEstimate})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _variable = variable,
        _attributeEstimate = attributeEstimate,
        super._();

  factory _$EvidenceModelCharacteristicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EvidenceModelCharacteristicImplFromJson(json);

  @override
  final String? id;
  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CodeableConcept code;
  @override
  final Quantity? value;
  final List<EvidenceVar>? _variable;
  @override
  List<EvidenceVar>? get variable {
    final value = _variable;
    if (value == null) return null;
    if (_variable is EqualUnmodifiableListView) return _variable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<EvidenceAttributeEstimate>? _attributeEstimate;
  @override
  List<EvidenceAttributeEstimate>? get attributeEstimate {
    final value = _attributeEstimate;
    if (value == null) return null;
    if (_attributeEstimate is EqualUnmodifiableListView)
      return _attributeEstimate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvidenceModelCharacteristicImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other._variable, _variable) &&
            const DeepCollectionEquality()
                .equals(other._attributeEstimate, _attributeEstimate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      value,
      const DeepCollectionEquality().hash(_variable),
      const DeepCollectionEquality().hash(_attributeEstimate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvidenceModelCharacteristicImplCopyWith<_$EvidenceModelCharacteristicImpl>
      get copyWith => __$$EvidenceModelCharacteristicImplCopyWithImpl<
          _$EvidenceModelCharacteristicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvidenceModelCharacteristicImplToJson(
      this,
    );
  }
}

abstract class _EvidenceModelCharacteristic
    extends EvidenceModelCharacteristic {
  const factory _EvidenceModelCharacteristic(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept code,
          final Quantity? value,
          final List<EvidenceVar>? variable,
          final List<EvidenceAttributeEstimate>? attributeEstimate}) =
      _$EvidenceModelCharacteristicImpl;
  const _EvidenceModelCharacteristic._() : super._();

  factory _EvidenceModelCharacteristic.fromJson(Map<String, dynamic> json) =
      _$EvidenceModelCharacteristicImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept get code;
  @override
  Quantity? get value;
  @override
  List<EvidenceVar>? get variable;
  @override
  List<EvidenceAttributeEstimate>? get attributeEstimate;
  @override
  @JsonKey(ignore: true)
  _$$EvidenceModelCharacteristicImplCopyWith<_$EvidenceModelCharacteristicImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EvidenceVar _$EvidenceVarFromJson(Map<String, dynamic> json) {
  return _EvidenceVar.fromJson(json);
}

/// @nodoc
mixin _$EvidenceVar {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  Reference get variableDefinition => throw _privateConstructorUsedError;
  FhirCode? get handling => throw _privateConstructorUsedError;
  @JsonKey(name: '_handling')
  PrimitiveElement? get handlingElement => throw _privateConstructorUsedError;
  List<CodeableConcept>? get valueCategory =>
      throw _privateConstructorUsedError;
  List<Quantity>? get valueQuantity => throw _privateConstructorUsedError;
  List<Range>? get valueRange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvidenceVarCopyWith<EvidenceVar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvidenceVarCopyWith<$Res> {
  factory $EvidenceVarCopyWith(
          EvidenceVar value, $Res Function(EvidenceVar) then) =
      _$EvidenceVarCopyWithImpl<$Res, EvidenceVar>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference variableDefinition,
      FhirCode? handling,
      @JsonKey(name: '_handling') PrimitiveElement? handlingElement,
      List<CodeableConcept>? valueCategory,
      List<Quantity>? valueQuantity,
      List<Range>? valueRange});

  $ReferenceCopyWith<$Res> get variableDefinition;
}

/// @nodoc
class _$EvidenceVarCopyWithImpl<$Res, $Val extends EvidenceVar>
    implements $EvidenceVarCopyWith<$Res> {
  _$EvidenceVarCopyWithImpl(this._value, this._then);

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
    Object? variableDefinition = null,
    Object? handling = freezed,
    Object? handlingElement = freezed,
    Object? valueCategory = freezed,
    Object? valueQuantity = freezed,
    Object? valueRange = freezed,
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
      variableDefinition: null == variableDefinition
          ? _value.variableDefinition
          : variableDefinition // ignore: cast_nullable_to_non_nullable
              as Reference,
      handling: freezed == handling
          ? _value.handling
          : handling // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      handlingElement: freezed == handlingElement
          ? _value.handlingElement
          : handlingElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCategory: freezed == valueCategory
          ? _value.valueCategory
          : valueCategory // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as List<Quantity>?,
      valueRange: freezed == valueRange
          ? _value.valueRange
          : valueRange // ignore: cast_nullable_to_non_nullable
              as List<Range>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get variableDefinition {
    return $ReferenceCopyWith<$Res>(_value.variableDefinition, (value) {
      return _then(_value.copyWith(variableDefinition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvidenceVarImplCopyWith<$Res>
    implements $EvidenceVarCopyWith<$Res> {
  factory _$$EvidenceVarImplCopyWith(
          _$EvidenceVarImpl value, $Res Function(_$EvidenceVarImpl) then) =
      __$$EvidenceVarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference variableDefinition,
      FhirCode? handling,
      @JsonKey(name: '_handling') PrimitiveElement? handlingElement,
      List<CodeableConcept>? valueCategory,
      List<Quantity>? valueQuantity,
      List<Range>? valueRange});

  @override
  $ReferenceCopyWith<$Res> get variableDefinition;
}

/// @nodoc
class __$$EvidenceVarImplCopyWithImpl<$Res>
    extends _$EvidenceVarCopyWithImpl<$Res, _$EvidenceVarImpl>
    implements _$$EvidenceVarImplCopyWith<$Res> {
  __$$EvidenceVarImplCopyWithImpl(
      _$EvidenceVarImpl _value, $Res Function(_$EvidenceVarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? variableDefinition = null,
    Object? handling = freezed,
    Object? handlingElement = freezed,
    Object? valueCategory = freezed,
    Object? valueQuantity = freezed,
    Object? valueRange = freezed,
  }) {
    return _then(_$EvidenceVarImpl(
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
      variableDefinition: null == variableDefinition
          ? _value.variableDefinition
          : variableDefinition // ignore: cast_nullable_to_non_nullable
              as Reference,
      handling: freezed == handling
          ? _value.handling
          : handling // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      handlingElement: freezed == handlingElement
          ? _value.handlingElement
          : handlingElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueCategory: freezed == valueCategory
          ? _value._valueCategory
          : valueCategory // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      valueQuantity: freezed == valueQuantity
          ? _value._valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as List<Quantity>?,
      valueRange: freezed == valueRange
          ? _value._valueRange
          : valueRange // ignore: cast_nullable_to_non_nullable
              as List<Range>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvidenceVarImpl extends _EvidenceVar {
  const _$EvidenceVarImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.variableDefinition,
      this.handling,
      @JsonKey(name: '_handling') this.handlingElement,
      final List<CodeableConcept>? valueCategory,
      final List<Quantity>? valueQuantity,
      final List<Range>? valueRange})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _valueCategory = valueCategory,
        _valueQuantity = valueQuantity,
        _valueRange = valueRange,
        super._();

  factory _$EvidenceVarImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvidenceVarImplFromJson(json);

  @override
  final String? id;
  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Reference variableDefinition;
  @override
  final FhirCode? handling;
  @override
  @JsonKey(name: '_handling')
  final PrimitiveElement? handlingElement;
  final List<CodeableConcept>? _valueCategory;
  @override
  List<CodeableConcept>? get valueCategory {
    final value = _valueCategory;
    if (value == null) return null;
    if (_valueCategory is EqualUnmodifiableListView) return _valueCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Quantity>? _valueQuantity;
  @override
  List<Quantity>? get valueQuantity {
    final value = _valueQuantity;
    if (value == null) return null;
    if (_valueQuantity is EqualUnmodifiableListView) return _valueQuantity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Range>? _valueRange;
  @override
  List<Range>? get valueRange {
    final value = _valueRange;
    if (value == null) return null;
    if (_valueRange is EqualUnmodifiableListView) return _valueRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvidenceVarImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.variableDefinition, variableDefinition) ||
                other.variableDefinition == variableDefinition) &&
            (identical(other.handling, handling) ||
                other.handling == handling) &&
            (identical(other.handlingElement, handlingElement) ||
                other.handlingElement == handlingElement) &&
            const DeepCollectionEquality()
                .equals(other._valueCategory, _valueCategory) &&
            const DeepCollectionEquality()
                .equals(other._valueQuantity, _valueQuantity) &&
            const DeepCollectionEquality()
                .equals(other._valueRange, _valueRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      variableDefinition,
      handling,
      handlingElement,
      const DeepCollectionEquality().hash(_valueCategory),
      const DeepCollectionEquality().hash(_valueQuantity),
      const DeepCollectionEquality().hash(_valueRange));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvidenceVarImplCopyWith<_$EvidenceVarImpl> get copyWith =>
      __$$EvidenceVarImplCopyWithImpl<_$EvidenceVarImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvidenceVarImplToJson(
      this,
    );
  }
}

abstract class _EvidenceVar extends EvidenceVar {
  const factory _EvidenceVar(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final Reference variableDefinition,
      final FhirCode? handling,
      @JsonKey(name: '_handling') final PrimitiveElement? handlingElement,
      final List<CodeableConcept>? valueCategory,
      final List<Quantity>? valueQuantity,
      final List<Range>? valueRange}) = _$EvidenceVarImpl;
  const _EvidenceVar._() : super._();

  factory _EvidenceVar.fromJson(Map<String, dynamic> json) =
      _$EvidenceVarImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  Reference get variableDefinition;
  @override
  FhirCode? get handling;
  @override
  @JsonKey(name: '_handling')
  PrimitiveElement? get handlingElement;
  @override
  List<CodeableConcept>? get valueCategory;
  @override
  List<Quantity>? get valueQuantity;
  @override
  List<Range>? get valueRange;
  @override
  @JsonKey(ignore: true)
  _$$EvidenceVarImplCopyWith<_$EvidenceVarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EvidenceCertainty _$EvidenceCertaintyFromJson(Map<String, dynamic> json) {
  return _EvidenceCertainty.fromJson(json);
}

/// @nodoc
mixin _$EvidenceCertainty {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;
  CodeableConcept? get type => throw _privateConstructorUsedError;
  CodeableConcept? get rating => throw _privateConstructorUsedError;
  String? get rater => throw _privateConstructorUsedError;
  @JsonKey(name: '_rater')
  PrimitiveElement? get raterElement => throw _privateConstructorUsedError;
  List<EvidenceCertainty>? get subcomponent =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvidenceCertaintyCopyWith<EvidenceCertainty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvidenceCertaintyCopyWith<$Res> {
  factory $EvidenceCertaintyCopyWith(
          EvidenceCertainty value, $Res Function(EvidenceCertainty) then) =
      _$EvidenceCertaintyCopyWithImpl<$Res, EvidenceCertainty>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<Annotation>? note,
      CodeableConcept? type,
      CodeableConcept? rating,
      String? rater,
      @JsonKey(name: '_rater') PrimitiveElement? raterElement,
      List<EvidenceCertainty>? subcomponent});

  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get rating;
}

/// @nodoc
class _$EvidenceCertaintyCopyWithImpl<$Res, $Val extends EvidenceCertainty>
    implements $EvidenceCertaintyCopyWith<$Res> {
  _$EvidenceCertaintyCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? note = freezed,
    Object? type = freezed,
    Object? rating = freezed,
    Object? rater = freezed,
    Object? raterElement = freezed,
    Object? subcomponent = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      rater: freezed == rater
          ? _value.rater
          : rater // ignore: cast_nullable_to_non_nullable
              as String?,
      raterElement: freezed == raterElement
          ? _value.raterElement
          : raterElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subcomponent: freezed == subcomponent
          ? _value.subcomponent
          : subcomponent // ignore: cast_nullable_to_non_nullable
              as List<EvidenceCertainty>?,
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
  $CodeableConceptCopyWith<$Res>? get rating {
    if (_value.rating == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.rating!, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EvidenceCertaintyImplCopyWith<$Res>
    implements $EvidenceCertaintyCopyWith<$Res> {
  factory _$$EvidenceCertaintyImplCopyWith(_$EvidenceCertaintyImpl value,
          $Res Function(_$EvidenceCertaintyImpl) then) =
      __$$EvidenceCertaintyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<Annotation>? note,
      CodeableConcept? type,
      CodeableConcept? rating,
      String? rater,
      @JsonKey(name: '_rater') PrimitiveElement? raterElement,
      List<EvidenceCertainty>? subcomponent});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get rating;
}

/// @nodoc
class __$$EvidenceCertaintyImplCopyWithImpl<$Res>
    extends _$EvidenceCertaintyCopyWithImpl<$Res, _$EvidenceCertaintyImpl>
    implements _$$EvidenceCertaintyImplCopyWith<$Res> {
  __$$EvidenceCertaintyImplCopyWithImpl(_$EvidenceCertaintyImpl _value,
      $Res Function(_$EvidenceCertaintyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? note = freezed,
    Object? type = freezed,
    Object? rating = freezed,
    Object? rater = freezed,
    Object? raterElement = freezed,
    Object? subcomponent = freezed,
  }) {
    return _then(_$EvidenceCertaintyImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      rater: freezed == rater
          ? _value.rater
          : rater // ignore: cast_nullable_to_non_nullable
              as String?,
      raterElement: freezed == raterElement
          ? _value.raterElement
          : raterElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subcomponent: freezed == subcomponent
          ? _value._subcomponent
          : subcomponent // ignore: cast_nullable_to_non_nullable
              as List<EvidenceCertainty>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EvidenceCertaintyImpl extends _EvidenceCertainty {
  const _$EvidenceCertaintyImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<Annotation>? note,
      this.type,
      this.rating,
      this.rater,
      @JsonKey(name: '_rater') this.raterElement,
      final List<EvidenceCertainty>? subcomponent})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _note = note,
        _subcomponent = subcomponent,
        super._();

  factory _$EvidenceCertaintyImpl.fromJson(Map<String, dynamic> json) =>
      _$$EvidenceCertaintyImplFromJson(json);

  @override
  final String? id;
  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  final List<Annotation>? _note;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CodeableConcept? type;
  @override
  final CodeableConcept? rating;
  @override
  final String? rater;
  @override
  @JsonKey(name: '_rater')
  final PrimitiveElement? raterElement;
  final List<EvidenceCertainty>? _subcomponent;
  @override
  List<EvidenceCertainty>? get subcomponent {
    final value = _subcomponent;
    if (value == null) return null;
    if (_subcomponent is EqualUnmodifiableListView) return _subcomponent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EvidenceCertaintyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.rater, rater) || other.rater == rater) &&
            (identical(other.raterElement, raterElement) ||
                other.raterElement == raterElement) &&
            const DeepCollectionEquality()
                .equals(other._subcomponent, _subcomponent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      description,
      descriptionElement,
      const DeepCollectionEquality().hash(_note),
      type,
      rating,
      rater,
      raterElement,
      const DeepCollectionEquality().hash(_subcomponent));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EvidenceCertaintyImplCopyWith<_$EvidenceCertaintyImpl> get copyWith =>
      __$$EvidenceCertaintyImplCopyWithImpl<_$EvidenceCertaintyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EvidenceCertaintyImplToJson(
      this,
    );
  }
}

abstract class _EvidenceCertainty extends EvidenceCertainty {
  const factory _EvidenceCertainty(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<Annotation>? note,
      final CodeableConcept? type,
      final CodeableConcept? rating,
      final String? rater,
      @JsonKey(name: '_rater') final PrimitiveElement? raterElement,
      final List<EvidenceCertainty>? subcomponent}) = _$EvidenceCertaintyImpl;
  const _EvidenceCertainty._() : super._();

  factory _EvidenceCertainty.fromJson(Map<String, dynamic> json) =
      _$EvidenceCertaintyImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  String? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  List<Annotation>? get note;
  @override
  CodeableConcept? get type;
  @override
  CodeableConcept? get rating;
  @override
  String? get rater;
  @override
  @JsonKey(name: '_rater')
  PrimitiveElement? get raterElement;
  @override
  List<EvidenceCertainty>? get subcomponent;
  @override
  @JsonKey(ignore: true)
  _$$EvidenceCertaintyImplCopyWith<_$EvidenceCertaintyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
