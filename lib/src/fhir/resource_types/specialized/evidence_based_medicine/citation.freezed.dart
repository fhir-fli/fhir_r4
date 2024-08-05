// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'citation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Citation _$CitationFromJson(Map<String, dynamic> json) {
  return _Citation.fromJson(json);
}

/// @nodoc
mixin _$Citation {
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
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;
  FhirCode? get status => throw _privateConstructorUsedError;
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;
  FhirBoolean? get experimental => throw _privateConstructorUsedError;
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;
  FhirDateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement => throw _privateConstructorUsedError;
  List<ContactDetail>? get contact => throw _privateConstructorUsedError;
  FhirMarkdown? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;
  FhirDate? get approvalDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_approvalDate')
  PrimitiveElement? get approvalDateElement =>
      throw _privateConstructorUsedError;
  FhirDate? get lastReviewDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_lastReviewDate')
  PrimitiveElement? get lastReviewDateElement =>
      throw _privateConstructorUsedError;
  Period? get effectivePeriod =>
      throw _privateConstructorUsedError; // List<CodeableConcept>? topic,
  List<ContactDetail>? get author => throw _privateConstructorUsedError;
  List<ContactDetail>? get editor => throw _privateConstructorUsedError;
  List<ContactDetail>? get reviewer => throw _privateConstructorUsedError;
  List<ContactDetail>? get endorser =>
      throw _privateConstructorUsedError; // List<RelatedArtifact>? relatedArtifact,
  List<CitationSummary>? get summary => throw _privateConstructorUsedError;
  List<CitationClassification>? get classification =>
      throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;
  List<CodeableConcept>? get currentState => throw _privateConstructorUsedError;
  List<CitationStatusDate>? get statusDate =>
      throw _privateConstructorUsedError;
  List<CitationRelatesTo>? get relatesTo => throw _privateConstructorUsedError;
  CitationCitedArtifact? get citedArtifact =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationCopyWith<Citation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationCopyWith<$Res> {
  factory $CitationCopyWith(Citation value, $Res Function(Citation) then) =
      _$CitationCopyWithImpl<$Res, Citation>;
  @useResult
  $Res call(
      {R4ResourceType resourceType,
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
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirBoolean? experimental,
      @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? publisher,
      @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
      List<ContactDetail>? contact,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<UsageContext>? useContext,
      List<CodeableConcept>? jurisdiction,
      FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
      FhirDate? approvalDate,
      @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
      FhirDate? lastReviewDate,
      @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
      Period? effectivePeriod,
      List<ContactDetail>? author,
      List<ContactDetail>? editor,
      List<ContactDetail>? reviewer,
      List<ContactDetail>? endorser,
      List<CitationSummary>? summary,
      List<CitationClassification>? classification,
      List<Annotation>? note,
      List<CodeableConcept>? currentState,
      List<CitationStatusDate>? statusDate,
      List<CitationRelatesTo>? relatesTo,
      CitationCitedArtifact? citedArtifact});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $PeriodCopyWith<$Res>? get effectivePeriod;
  $CitationCitedArtifactCopyWith<$Res>? get citedArtifact;
}

/// @nodoc
class _$CitationCopyWithImpl<$Res, $Val extends Citation>
    implements $CitationCopyWith<$Res> {
  _$CitationCopyWithImpl(this._value, this._then);

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
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? experimental = freezed,
    Object? experimentalElement = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? publisher = freezed,
    Object? publisherElement = freezed,
    Object? contact = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? useContext = freezed,
    Object? jurisdiction = freezed,
    Object? purpose = freezed,
    Object? purposeElement = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
    Object? approvalDate = freezed,
    Object? approvalDateElement = freezed,
    Object? lastReviewDate = freezed,
    Object? lastReviewDateElement = freezed,
    Object? effectivePeriod = freezed,
    Object? author = freezed,
    Object? editor = freezed,
    Object? reviewer = freezed,
    Object? endorser = freezed,
    Object? summary = freezed,
    Object? classification = freezed,
    Object? note = freezed,
    Object? currentState = freezed,
    Object? statusDate = freezed,
    Object? relatesTo = freezed,
    Object? citedArtifact = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      experimental: freezed == experimental
          ? _value.experimental
          : experimental // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      experimentalElement: freezed == experimentalElement
          ? _value.experimentalElement
          : experimentalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      useContext: freezed == useContext
          ? _value.useContext
          : useContext // ignore: cast_nullable_to_non_nullable
              as List<UsageContext>?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      purposeElement: freezed == purposeElement
          ? _value.purposeElement
          : purposeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      copyrightElement: freezed == copyrightElement
          ? _value.copyrightElement
          : copyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
      effectivePeriod: freezed == effectivePeriod
          ? _value.effectivePeriod
          : effectivePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
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
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as List<CitationSummary>?,
      classification: freezed == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as List<CitationClassification>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      currentState: freezed == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as List<CitationStatusDate>?,
      relatesTo: freezed == relatesTo
          ? _value.relatesTo
          : relatesTo // ignore: cast_nullable_to_non_nullable
              as List<CitationRelatesTo>?,
      citedArtifact: freezed == citedArtifact
          ? _value.citedArtifact
          : citedArtifact // ignore: cast_nullable_to_non_nullable
              as CitationCitedArtifact?,
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
  $PeriodCopyWith<$Res>? get effectivePeriod {
    if (_value.effectivePeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.effectivePeriod!, (value) {
      return _then(_value.copyWith(effectivePeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CitationCitedArtifactCopyWith<$Res>? get citedArtifact {
    if (_value.citedArtifact == null) {
      return null;
    }

    return $CitationCitedArtifactCopyWith<$Res>(_value.citedArtifact!, (value) {
      return _then(_value.copyWith(citedArtifact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationImplCopyWith<$Res>
    implements $CitationCopyWith<$Res> {
  factory _$$CitationImplCopyWith(
          _$CitationImpl value, $Res Function(_$CitationImpl) then) =
      __$$CitationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {R4ResourceType resourceType,
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
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirBoolean? experimental,
      @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? publisher,
      @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
      List<ContactDetail>? contact,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<UsageContext>? useContext,
      List<CodeableConcept>? jurisdiction,
      FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
      FhirDate? approvalDate,
      @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
      FhirDate? lastReviewDate,
      @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
      Period? effectivePeriod,
      List<ContactDetail>? author,
      List<ContactDetail>? editor,
      List<ContactDetail>? reviewer,
      List<ContactDetail>? endorser,
      List<CitationSummary>? summary,
      List<CitationClassification>? classification,
      List<Annotation>? note,
      List<CodeableConcept>? currentState,
      List<CitationStatusDate>? statusDate,
      List<CitationRelatesTo>? relatesTo,
      CitationCitedArtifact? citedArtifact});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $PeriodCopyWith<$Res>? get effectivePeriod;
  @override
  $CitationCitedArtifactCopyWith<$Res>? get citedArtifact;
}

/// @nodoc
class __$$CitationImplCopyWithImpl<$Res>
    extends _$CitationCopyWithImpl<$Res, _$CitationImpl>
    implements _$$CitationImplCopyWith<$Res> {
  __$$CitationImplCopyWithImpl(
      _$CitationImpl _value, $Res Function(_$CitationImpl) _then)
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
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? experimental = freezed,
    Object? experimentalElement = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? publisher = freezed,
    Object? publisherElement = freezed,
    Object? contact = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? useContext = freezed,
    Object? jurisdiction = freezed,
    Object? purpose = freezed,
    Object? purposeElement = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
    Object? approvalDate = freezed,
    Object? approvalDateElement = freezed,
    Object? lastReviewDate = freezed,
    Object? lastReviewDateElement = freezed,
    Object? effectivePeriod = freezed,
    Object? author = freezed,
    Object? editor = freezed,
    Object? reviewer = freezed,
    Object? endorser = freezed,
    Object? summary = freezed,
    Object? classification = freezed,
    Object? note = freezed,
    Object? currentState = freezed,
    Object? statusDate = freezed,
    Object? relatesTo = freezed,
    Object? citedArtifact = freezed,
  }) {
    return _then(_$CitationImpl(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      experimental: freezed == experimental
          ? _value.experimental
          : experimental // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      experimentalElement: freezed == experimentalElement
          ? _value.experimentalElement
          : experimentalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      useContext: freezed == useContext
          ? _value._useContext
          : useContext // ignore: cast_nullable_to_non_nullable
              as List<UsageContext>?,
      jurisdiction: freezed == jurisdiction
          ? _value._jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      purpose: freezed == purpose
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      purposeElement: freezed == purposeElement
          ? _value.purposeElement
          : purposeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      copyrightElement: freezed == copyrightElement
          ? _value.copyrightElement
          : copyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
      effectivePeriod: freezed == effectivePeriod
          ? _value.effectivePeriod
          : effectivePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
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
      summary: freezed == summary
          ? _value._summary
          : summary // ignore: cast_nullable_to_non_nullable
              as List<CitationSummary>?,
      classification: freezed == classification
          ? _value._classification
          : classification // ignore: cast_nullable_to_non_nullable
              as List<CitationClassification>?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      currentState: freezed == currentState
          ? _value._currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      statusDate: freezed == statusDate
          ? _value._statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as List<CitationStatusDate>?,
      relatesTo: freezed == relatesTo
          ? _value._relatesTo
          : relatesTo // ignore: cast_nullable_to_non_nullable
              as List<CitationRelatesTo>?,
      citedArtifact: freezed == citedArtifact
          ? _value.citedArtifact
          : citedArtifact // ignore: cast_nullable_to_non_nullable
              as CitationCitedArtifact?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationImpl extends _Citation {
  _$CitationImpl(
      {this.resourceType = R4ResourceType.Citation,
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
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.title,
      @JsonKey(name: '_title') this.titleElement,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.experimental,
      @JsonKey(name: '_experimental') this.experimentalElement,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.publisher,
      @JsonKey(name: '_publisher') this.publisherElement,
      final List<ContactDetail>? contact,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<UsageContext>? useContext,
      final List<CodeableConcept>? jurisdiction,
      this.purpose,
      @JsonKey(name: '_purpose') this.purposeElement,
      this.copyright,
      @JsonKey(name: '_copyright') this.copyrightElement,
      this.approvalDate,
      @JsonKey(name: '_approvalDate') this.approvalDateElement,
      this.lastReviewDate,
      @JsonKey(name: '_lastReviewDate') this.lastReviewDateElement,
      this.effectivePeriod,
      final List<ContactDetail>? author,
      final List<ContactDetail>? editor,
      final List<ContactDetail>? reviewer,
      final List<ContactDetail>? endorser,
      final List<CitationSummary>? summary,
      final List<CitationClassification>? classification,
      final List<Annotation>? note,
      final List<CodeableConcept>? currentState,
      final List<CitationStatusDate>? statusDate,
      final List<CitationRelatesTo>? relatesTo,
      this.citedArtifact})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _contact = contact,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _author = author,
        _editor = editor,
        _reviewer = reviewer,
        _endorser = endorser,
        _summary = summary,
        _classification = classification,
        _note = note,
        _currentState = currentState,
        _statusDate = statusDate,
        _relatesTo = relatesTo,
        super._();

  factory _$CitationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationImplFromJson(json);

  @override
  @JsonKey()
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
  final String? name;
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;
  @override
  final String? title;
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;
  @override
  final FhirCode? status;
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;
  @override
  final FhirBoolean? experimental;
  @override
  @JsonKey(name: '_experimental')
  final PrimitiveElement? experimentalElement;
  @override
  final FhirDateTime? date;
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;
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

  @override
  final FhirMarkdown? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  final List<UsageContext>? _useContext;
  @override
  List<UsageContext>? get useContext {
    final value = _useContext;
    if (value == null) return null;
    if (_useContext is EqualUnmodifiableListView) return _useContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CodeableConcept>? _jurisdiction;
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirMarkdown? purpose;
  @override
  @JsonKey(name: '_purpose')
  final PrimitiveElement? purposeElement;
  @override
  final FhirMarkdown? copyright;
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;
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
  final Period? effectivePeriod;
// List<CodeableConcept>? topic,
  final List<ContactDetail>? _author;
// List<CodeableConcept>? topic,
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

// List<RelatedArtifact>? relatedArtifact,
  final List<CitationSummary>? _summary;
// List<RelatedArtifact>? relatedArtifact,
  @override
  List<CitationSummary>? get summary {
    final value = _summary;
    if (value == null) return null;
    if (_summary is EqualUnmodifiableListView) return _summary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CitationClassification>? _classification;
  @override
  List<CitationClassification>? get classification {
    final value = _classification;
    if (value == null) return null;
    if (_classification is EqualUnmodifiableListView) return _classification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Annotation>? _note;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CodeableConcept>? _currentState;
  @override
  List<CodeableConcept>? get currentState {
    final value = _currentState;
    if (value == null) return null;
    if (_currentState is EqualUnmodifiableListView) return _currentState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CitationStatusDate>? _statusDate;
  @override
  List<CitationStatusDate>? get statusDate {
    final value = _statusDate;
    if (value == null) return null;
    if (_statusDate is EqualUnmodifiableListView) return _statusDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CitationRelatesTo>? _relatesTo;
  @override
  List<CitationRelatesTo>? get relatesTo {
    final value = _relatesTo;
    if (value == null) return null;
    if (_relatesTo is EqualUnmodifiableListView) return _relatesTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CitationCitedArtifact? citedArtifact;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationImpl &&
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
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleElement, titleElement) ||
                other.titleElement == titleElement) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.experimental, experimental) ||
                other.experimental == experimental) &&
            (identical(other.experimentalElement, experimentalElement) ||
                other.experimentalElement == experimentalElement) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publisherElement, publisherElement) ||
                other.publisherElement == publisherElement) &&
            const DeepCollectionEquality().equals(other._contact, _contact) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality()
                .equals(other._useContext, _useContext) &&
            const DeepCollectionEquality()
                .equals(other._jurisdiction, _jurisdiction) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.purposeElement, purposeElement) ||
                other.purposeElement == purposeElement) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.copyrightElement, copyrightElement) ||
                other.copyrightElement == copyrightElement) &&
            (identical(other.approvalDate, approvalDate) ||
                other.approvalDate == approvalDate) &&
            (identical(other.approvalDateElement, approvalDateElement) ||
                other.approvalDateElement == approvalDateElement) &&
            (identical(other.lastReviewDate, lastReviewDate) ||
                other.lastReviewDate == lastReviewDate) &&
            (identical(other.lastReviewDateElement, lastReviewDateElement) ||
                other.lastReviewDateElement == lastReviewDateElement) &&
            (identical(other.effectivePeriod, effectivePeriod) ||
                other.effectivePeriod == effectivePeriod) &&
            const DeepCollectionEquality().equals(other._author, _author) &&
            const DeepCollectionEquality().equals(other._editor, _editor) &&
            const DeepCollectionEquality().equals(other._reviewer, _reviewer) &&
            const DeepCollectionEquality().equals(other._endorser, _endorser) &&
            const DeepCollectionEquality().equals(other._summary, _summary) &&
            const DeepCollectionEquality()
                .equals(other._classification, _classification) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            const DeepCollectionEquality()
                .equals(other._currentState, _currentState) &&
            const DeepCollectionEquality()
                .equals(other._statusDate, _statusDate) &&
            const DeepCollectionEquality()
                .equals(other._relatesTo, _relatesTo) &&
            (identical(other.citedArtifact, citedArtifact) ||
                other.citedArtifact == citedArtifact));
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
        name,
        nameElement,
        title,
        titleElement,
        status,
        statusElement,
        experimental,
        experimentalElement,
        date,
        dateElement,
        publisher,
        publisherElement,
        const DeepCollectionEquality().hash(_contact),
        description,
        descriptionElement,
        const DeepCollectionEquality().hash(_useContext),
        const DeepCollectionEquality().hash(_jurisdiction),
        purpose,
        purposeElement,
        copyright,
        copyrightElement,
        approvalDate,
        approvalDateElement,
        lastReviewDate,
        lastReviewDateElement,
        effectivePeriod,
        const DeepCollectionEquality().hash(_author),
        const DeepCollectionEquality().hash(_editor),
        const DeepCollectionEquality().hash(_reviewer),
        const DeepCollectionEquality().hash(_endorser),
        const DeepCollectionEquality().hash(_summary),
        const DeepCollectionEquality().hash(_classification),
        const DeepCollectionEquality().hash(_note),
        const DeepCollectionEquality().hash(_currentState),
        const DeepCollectionEquality().hash(_statusDate),
        const DeepCollectionEquality().hash(_relatesTo),
        citedArtifact
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationImplCopyWith<_$CitationImpl> get copyWith =>
      __$$CitationImplCopyWithImpl<_$CitationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationImplToJson(
      this,
    );
  }
}

abstract class _Citation extends Citation {
  factory _Citation(
      {final R4ResourceType resourceType,
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
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final String? title,
      @JsonKey(name: '_title') final PrimitiveElement? titleElement,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final FhirBoolean? experimental,
      @JsonKey(name: '_experimental')
      final PrimitiveElement? experimentalElement,
      final FhirDateTime? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      final String? publisher,
      @JsonKey(name: '_publisher') final PrimitiveElement? publisherElement,
      final List<ContactDetail>? contact,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<UsageContext>? useContext,
      final List<CodeableConcept>? jurisdiction,
      final FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') final PrimitiveElement? purposeElement,
      final FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') final PrimitiveElement? copyrightElement,
      final FhirDate? approvalDate,
      @JsonKey(name: '_approvalDate')
      final PrimitiveElement? approvalDateElement,
      final FhirDate? lastReviewDate,
      @JsonKey(name: '_lastReviewDate')
      final PrimitiveElement? lastReviewDateElement,
      final Period? effectivePeriod,
      final List<ContactDetail>? author,
      final List<ContactDetail>? editor,
      final List<ContactDetail>? reviewer,
      final List<ContactDetail>? endorser,
      final List<CitationSummary>? summary,
      final List<CitationClassification>? classification,
      final List<Annotation>? note,
      final List<CodeableConcept>? currentState,
      final List<CitationStatusDate>? statusDate,
      final List<CitationRelatesTo>? relatesTo,
      final CitationCitedArtifact? citedArtifact}) = _$CitationImpl;
  _Citation._() : super._();

  factory _Citation.fromJson(Map<String, dynamic> json) =
      _$CitationImpl.fromJson;

  @override
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
  String? get name;
  @override
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override
  String? get title;
  @override
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override
  FhirCode? get status;
  @override
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override
  FhirBoolean? get experimental;
  @override
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement;
  @override
  FhirDateTime? get date;
  @override
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override
  String? get publisher;
  @override
  @JsonKey(name: '_publisher')
  PrimitiveElement? get publisherElement;
  @override
  List<ContactDetail>? get contact;
  @override
  FhirMarkdown? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  List<UsageContext>? get useContext;
  @override
  List<CodeableConcept>? get jurisdiction;
  @override
  FhirMarkdown? get purpose;
  @override
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement;
  @override
  FhirMarkdown? get copyright;
  @override
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;
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
  Period? get effectivePeriod;
  @override // List<CodeableConcept>? topic,
  List<ContactDetail>? get author;
  @override
  List<ContactDetail>? get editor;
  @override
  List<ContactDetail>? get reviewer;
  @override
  List<ContactDetail>? get endorser;
  @override // List<RelatedArtifact>? relatedArtifact,
  List<CitationSummary>? get summary;
  @override
  List<CitationClassification>? get classification;
  @override
  List<Annotation>? get note;
  @override
  List<CodeableConcept>? get currentState;
  @override
  List<CitationStatusDate>? get statusDate;
  @override
  List<CitationRelatesTo>? get relatesTo;
  @override
  CitationCitedArtifact? get citedArtifact;
  @override
  @JsonKey(ignore: true)
  _$$CitationImplCopyWith<_$CitationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationSummary _$CitationSummaryFromJson(Map<String, dynamic> json) {
  return _CitationSummary.fromJson(json);
}

/// @nodoc
mixin _$CitationSummary {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get style => throw _privateConstructorUsedError;
  FhirMarkdown? get text => throw _privateConstructorUsedError;
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationSummaryCopyWith<CitationSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationSummaryCopyWith<$Res> {
  factory $CitationSummaryCopyWith(
          CitationSummary value, $Res Function(CitationSummary) then) =
      _$CitationSummaryCopyWithImpl<$Res, CitationSummary>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? style,
      FhirMarkdown? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement});

  $CodeableConceptCopyWith<$Res>? get style;
}

/// @nodoc
class _$CitationSummaryCopyWithImpl<$Res, $Val extends CitationSummary>
    implements $CitationSummaryCopyWith<$Res> {
  _$CitationSummaryCopyWithImpl(this._value, this._then);

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
    Object? style = freezed,
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
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get style {
    if (_value.style == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.style!, (value) {
      return _then(_value.copyWith(style: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationSummaryImplCopyWith<$Res>
    implements $CitationSummaryCopyWith<$Res> {
  factory _$$CitationSummaryImplCopyWith(_$CitationSummaryImpl value,
          $Res Function(_$CitationSummaryImpl) then) =
      __$$CitationSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? style,
      FhirMarkdown? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement});

  @override
  $CodeableConceptCopyWith<$Res>? get style;
}

/// @nodoc
class __$$CitationSummaryImplCopyWithImpl<$Res>
    extends _$CitationSummaryCopyWithImpl<$Res, _$CitationSummaryImpl>
    implements _$$CitationSummaryImplCopyWith<$Res> {
  __$$CitationSummaryImplCopyWithImpl(
      _$CitationSummaryImpl _value, $Res Function(_$CitationSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? style = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
  }) {
    return _then(_$CitationSummaryImpl(
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
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationSummaryImpl extends _CitationSummary {
  _$CitationSummaryImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.style,
      this.text,
      @JsonKey(name: '_text') this.textElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CitationSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationSummaryImplFromJson(json);

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
  final CodeableConcept? style;
  @override
  final FhirMarkdown? text;
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationSummaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.style, style) || other.style == style) &&
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
      const DeepCollectionEquality().hash(_modifierExtension),
      style,
      text,
      textElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationSummaryImplCopyWith<_$CitationSummaryImpl> get copyWith =>
      __$$CitationSummaryImplCopyWithImpl<_$CitationSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationSummaryImplToJson(
      this,
    );
  }
}

abstract class _CitationSummary extends CitationSummary {
  factory _CitationSummary(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? style,
          final FhirMarkdown? text,
          @JsonKey(name: '_text') final PrimitiveElement? textElement}) =
      _$CitationSummaryImpl;
  _CitationSummary._() : super._();

  factory _CitationSummary.fromJson(Map<String, dynamic> json) =
      _$CitationSummaryImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get style;
  @override
  FhirMarkdown? get text;
  @override
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override
  @JsonKey(ignore: true)
  _$$CitationSummaryImplCopyWith<_$CitationSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationClassification _$CitationClassificationFromJson(
    Map<String, dynamic> json) {
  return _CitationClassification.fromJson(json);
}

/// @nodoc
mixin _$CitationClassification {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get type => throw _privateConstructorUsedError;
  List<CodeableConcept>? get classifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationClassificationCopyWith<CitationClassification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationClassificationCopyWith<$Res> {
  factory $CitationClassificationCopyWith(CitationClassification value,
          $Res Function(CitationClassification) then) =
      _$CitationClassificationCopyWithImpl<$Res, CitationClassification>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      List<CodeableConcept>? classifier});

  $CodeableConceptCopyWith<$Res>? get type;
}

/// @nodoc
class _$CitationClassificationCopyWithImpl<$Res,
        $Val extends CitationClassification>
    implements $CitationClassificationCopyWith<$Res> {
  _$CitationClassificationCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? classifier = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      classifier: freezed == classifier
          ? _value.classifier
          : classifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
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
}

/// @nodoc
abstract class _$$CitationClassificationImplCopyWith<$Res>
    implements $CitationClassificationCopyWith<$Res> {
  factory _$$CitationClassificationImplCopyWith(
          _$CitationClassificationImpl value,
          $Res Function(_$CitationClassificationImpl) then) =
      __$$CitationClassificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      List<CodeableConcept>? classifier});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
}

/// @nodoc
class __$$CitationClassificationImplCopyWithImpl<$Res>
    extends _$CitationClassificationCopyWithImpl<$Res,
        _$CitationClassificationImpl>
    implements _$$CitationClassificationImplCopyWith<$Res> {
  __$$CitationClassificationImplCopyWithImpl(
      _$CitationClassificationImpl _value,
      $Res Function(_$CitationClassificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? classifier = freezed,
  }) {
    return _then(_$CitationClassificationImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      classifier: freezed == classifier
          ? _value._classifier
          : classifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationClassificationImpl extends _CitationClassification {
  _$CitationClassificationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      final List<CodeableConcept>? classifier})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _classifier = classifier,
        super._();

  factory _$CitationClassificationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationClassificationImplFromJson(json);

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
  final CodeableConcept? type;
  final List<CodeableConcept>? _classifier;
  @override
  List<CodeableConcept>? get classifier {
    final value = _classifier;
    if (value == null) return null;
    if (_classifier is EqualUnmodifiableListView) return _classifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationClassificationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._classifier, _classifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      const DeepCollectionEquality().hash(_classifier));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationClassificationImplCopyWith<_$CitationClassificationImpl>
      get copyWith => __$$CitationClassificationImplCopyWithImpl<
          _$CitationClassificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationClassificationImplToJson(
      this,
    );
  }
}

abstract class _CitationClassification extends CitationClassification {
  factory _CitationClassification(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? type,
      final List<CodeableConcept>? classifier}) = _$CitationClassificationImpl;
  _CitationClassification._() : super._();

  factory _CitationClassification.fromJson(Map<String, dynamic> json) =
      _$CitationClassificationImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get type;
  @override
  List<CodeableConcept>? get classifier;
  @override
  @JsonKey(ignore: true)
  _$$CitationClassificationImplCopyWith<_$CitationClassificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CitationStatusDate _$CitationStatusDateFromJson(Map<String, dynamic> json) {
  return _CitationStatusDate.fromJson(json);
}

/// @nodoc
mixin _$CitationStatusDate {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept get activity => throw _privateConstructorUsedError;
  FhirBoolean? get actual => throw _privateConstructorUsedError;
  @JsonKey(name: '_actual')
  PrimitiveElement? get actualElement => throw _privateConstructorUsedError;
  Period get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationStatusDateCopyWith<CitationStatusDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationStatusDateCopyWith<$Res> {
  factory $CitationStatusDateCopyWith(
          CitationStatusDate value, $Res Function(CitationStatusDate) then) =
      _$CitationStatusDateCopyWithImpl<$Res, CitationStatusDate>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept activity,
      FhirBoolean? actual,
      @JsonKey(name: '_actual') PrimitiveElement? actualElement,
      Period period});

  $CodeableConceptCopyWith<$Res> get activity;
  $PeriodCopyWith<$Res> get period;
}

/// @nodoc
class _$CitationStatusDateCopyWithImpl<$Res, $Val extends CitationStatusDate>
    implements $CitationStatusDateCopyWith<$Res> {
  _$CitationStatusDateCopyWithImpl(this._value, this._then);

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
    Object? activity = null,
    Object? actual = freezed,
    Object? actualElement = freezed,
    Object? period = null,
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
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      actual: freezed == actual
          ? _value.actual
          : actual // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      actualElement: freezed == actualElement
          ? _value.actualElement
          : actualElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get activity {
    return $CodeableConceptCopyWith<$Res>(_value.activity, (value) {
      return _then(_value.copyWith(activity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res> get period {
    return $PeriodCopyWith<$Res>(_value.period, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationStatusDateImplCopyWith<$Res>
    implements $CitationStatusDateCopyWith<$Res> {
  factory _$$CitationStatusDateImplCopyWith(_$CitationStatusDateImpl value,
          $Res Function(_$CitationStatusDateImpl) then) =
      __$$CitationStatusDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept activity,
      FhirBoolean? actual,
      @JsonKey(name: '_actual') PrimitiveElement? actualElement,
      Period period});

  @override
  $CodeableConceptCopyWith<$Res> get activity;
  @override
  $PeriodCopyWith<$Res> get period;
}

/// @nodoc
class __$$CitationStatusDateImplCopyWithImpl<$Res>
    extends _$CitationStatusDateCopyWithImpl<$Res, _$CitationStatusDateImpl>
    implements _$$CitationStatusDateImplCopyWith<$Res> {
  __$$CitationStatusDateImplCopyWithImpl(_$CitationStatusDateImpl _value,
      $Res Function(_$CitationStatusDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? activity = null,
    Object? actual = freezed,
    Object? actualElement = freezed,
    Object? period = null,
  }) {
    return _then(_$CitationStatusDateImpl(
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
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      actual: freezed == actual
          ? _value.actual
          : actual // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      actualElement: freezed == actualElement
          ? _value.actualElement
          : actualElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationStatusDateImpl extends _CitationStatusDate {
  _$CitationStatusDateImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.activity,
      this.actual,
      @JsonKey(name: '_actual') this.actualElement,
      required this.period})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CitationStatusDateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationStatusDateImplFromJson(json);

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
  final CodeableConcept activity;
  @override
  final FhirBoolean? actual;
  @override
  @JsonKey(name: '_actual')
  final PrimitiveElement? actualElement;
  @override
  final Period period;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationStatusDateImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.actual, actual) || other.actual == actual) &&
            (identical(other.actualElement, actualElement) ||
                other.actualElement == actualElement) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      activity,
      actual,
      actualElement,
      period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationStatusDateImplCopyWith<_$CitationStatusDateImpl> get copyWith =>
      __$$CitationStatusDateImplCopyWithImpl<_$CitationStatusDateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationStatusDateImplToJson(
      this,
    );
  }
}

abstract class _CitationStatusDate extends CitationStatusDate {
  factory _CitationStatusDate(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept activity,
      final FhirBoolean? actual,
      @JsonKey(name: '_actual') final PrimitiveElement? actualElement,
      required final Period period}) = _$CitationStatusDateImpl;
  _CitationStatusDate._() : super._();

  factory _CitationStatusDate.fromJson(Map<String, dynamic> json) =
      _$CitationStatusDateImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept get activity;
  @override
  FhirBoolean? get actual;
  @override
  @JsonKey(name: '_actual')
  PrimitiveElement? get actualElement;
  @override
  Period get period;
  @override
  @JsonKey(ignore: true)
  _$$CitationStatusDateImplCopyWith<_$CitationStatusDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationRelatesTo _$CitationRelatesToFromJson(Map<String, dynamic> json) {
  return _CitationRelatesTo.fromJson(json);
}

/// @nodoc
mixin _$CitationRelatesTo {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept get relationshipType => throw _privateConstructorUsedError;
  List<CodeableConcept>? get targetClassifier =>
      throw _privateConstructorUsedError;
  FhirUri? get targetUri => throw _privateConstructorUsedError;
  @JsonKey(name: '_targetUri')
  PrimitiveElement? get targetUriElement => throw _privateConstructorUsedError;
  Identifier? get targetIdentifier => throw _privateConstructorUsedError;
  Reference? get targetReference => throw _privateConstructorUsedError;
  Attachment? get targetAttachment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationRelatesToCopyWith<CitationRelatesTo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationRelatesToCopyWith<$Res> {
  factory $CitationRelatesToCopyWith(
          CitationRelatesTo value, $Res Function(CitationRelatesTo) then) =
      _$CitationRelatesToCopyWithImpl<$Res, CitationRelatesTo>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept relationshipType,
      List<CodeableConcept>? targetClassifier,
      FhirUri? targetUri,
      @JsonKey(name: '_targetUri') PrimitiveElement? targetUriElement,
      Identifier? targetIdentifier,
      Reference? targetReference,
      Attachment? targetAttachment});

  $CodeableConceptCopyWith<$Res> get relationshipType;
  $IdentifierCopyWith<$Res>? get targetIdentifier;
  $ReferenceCopyWith<$Res>? get targetReference;
  $AttachmentCopyWith<$Res>? get targetAttachment;
}

/// @nodoc
class _$CitationRelatesToCopyWithImpl<$Res, $Val extends CitationRelatesTo>
    implements $CitationRelatesToCopyWith<$Res> {
  _$CitationRelatesToCopyWithImpl(this._value, this._then);

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
    Object? relationshipType = null,
    Object? targetClassifier = freezed,
    Object? targetUri = freezed,
    Object? targetUriElement = freezed,
    Object? targetIdentifier = freezed,
    Object? targetReference = freezed,
    Object? targetAttachment = freezed,
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
      relationshipType: null == relationshipType
          ? _value.relationshipType
          : relationshipType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      targetClassifier: freezed == targetClassifier
          ? _value.targetClassifier
          : targetClassifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      targetUri: freezed == targetUri
          ? _value.targetUri
          : targetUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      targetUriElement: freezed == targetUriElement
          ? _value.targetUriElement
          : targetUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      targetIdentifier: freezed == targetIdentifier
          ? _value.targetIdentifier
          : targetIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      targetReference: freezed == targetReference
          ? _value.targetReference
          : targetReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      targetAttachment: freezed == targetAttachment
          ? _value.targetAttachment
          : targetAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get relationshipType {
    return $CodeableConceptCopyWith<$Res>(_value.relationshipType, (value) {
      return _then(_value.copyWith(relationshipType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get targetIdentifier {
    if (_value.targetIdentifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.targetIdentifier!, (value) {
      return _then(_value.copyWith(targetIdentifier: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get targetReference {
    if (_value.targetReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.targetReference!, (value) {
      return _then(_value.copyWith(targetReference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get targetAttachment {
    if (_value.targetAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.targetAttachment!, (value) {
      return _then(_value.copyWith(targetAttachment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationRelatesToImplCopyWith<$Res>
    implements $CitationRelatesToCopyWith<$Res> {
  factory _$$CitationRelatesToImplCopyWith(_$CitationRelatesToImpl value,
          $Res Function(_$CitationRelatesToImpl) then) =
      __$$CitationRelatesToImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept relationshipType,
      List<CodeableConcept>? targetClassifier,
      FhirUri? targetUri,
      @JsonKey(name: '_targetUri') PrimitiveElement? targetUriElement,
      Identifier? targetIdentifier,
      Reference? targetReference,
      Attachment? targetAttachment});

  @override
  $CodeableConceptCopyWith<$Res> get relationshipType;
  @override
  $IdentifierCopyWith<$Res>? get targetIdentifier;
  @override
  $ReferenceCopyWith<$Res>? get targetReference;
  @override
  $AttachmentCopyWith<$Res>? get targetAttachment;
}

/// @nodoc
class __$$CitationRelatesToImplCopyWithImpl<$Res>
    extends _$CitationRelatesToCopyWithImpl<$Res, _$CitationRelatesToImpl>
    implements _$$CitationRelatesToImplCopyWith<$Res> {
  __$$CitationRelatesToImplCopyWithImpl(_$CitationRelatesToImpl _value,
      $Res Function(_$CitationRelatesToImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? relationshipType = null,
    Object? targetClassifier = freezed,
    Object? targetUri = freezed,
    Object? targetUriElement = freezed,
    Object? targetIdentifier = freezed,
    Object? targetReference = freezed,
    Object? targetAttachment = freezed,
  }) {
    return _then(_$CitationRelatesToImpl(
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
      relationshipType: null == relationshipType
          ? _value.relationshipType
          : relationshipType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      targetClassifier: freezed == targetClassifier
          ? _value._targetClassifier
          : targetClassifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      targetUri: freezed == targetUri
          ? _value.targetUri
          : targetUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      targetUriElement: freezed == targetUriElement
          ? _value.targetUriElement
          : targetUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      targetIdentifier: freezed == targetIdentifier
          ? _value.targetIdentifier
          : targetIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      targetReference: freezed == targetReference
          ? _value.targetReference
          : targetReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      targetAttachment: freezed == targetAttachment
          ? _value.targetAttachment
          : targetAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationRelatesToImpl extends _CitationRelatesTo {
  _$CitationRelatesToImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.relationshipType,
      final List<CodeableConcept>? targetClassifier,
      this.targetUri,
      @JsonKey(name: '_targetUri') this.targetUriElement,
      this.targetIdentifier,
      this.targetReference,
      this.targetAttachment})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _targetClassifier = targetClassifier,
        super._();

  factory _$CitationRelatesToImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationRelatesToImplFromJson(json);

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
  final CodeableConcept relationshipType;
  final List<CodeableConcept>? _targetClassifier;
  @override
  List<CodeableConcept>? get targetClassifier {
    final value = _targetClassifier;
    if (value == null) return null;
    if (_targetClassifier is EqualUnmodifiableListView)
      return _targetClassifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirUri? targetUri;
  @override
  @JsonKey(name: '_targetUri')
  final PrimitiveElement? targetUriElement;
  @override
  final Identifier? targetIdentifier;
  @override
  final Reference? targetReference;
  @override
  final Attachment? targetAttachment;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationRelatesToImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.relationshipType, relationshipType) ||
                other.relationshipType == relationshipType) &&
            const DeepCollectionEquality()
                .equals(other._targetClassifier, _targetClassifier) &&
            (identical(other.targetUri, targetUri) ||
                other.targetUri == targetUri) &&
            (identical(other.targetUriElement, targetUriElement) ||
                other.targetUriElement == targetUriElement) &&
            (identical(other.targetIdentifier, targetIdentifier) ||
                other.targetIdentifier == targetIdentifier) &&
            (identical(other.targetReference, targetReference) ||
                other.targetReference == targetReference) &&
            (identical(other.targetAttachment, targetAttachment) ||
                other.targetAttachment == targetAttachment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      relationshipType,
      const DeepCollectionEquality().hash(_targetClassifier),
      targetUri,
      targetUriElement,
      targetIdentifier,
      targetReference,
      targetAttachment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationRelatesToImplCopyWith<_$CitationRelatesToImpl> get copyWith =>
      __$$CitationRelatesToImplCopyWithImpl<_$CitationRelatesToImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationRelatesToImplToJson(
      this,
    );
  }
}

abstract class _CitationRelatesTo extends CitationRelatesTo {
  factory _CitationRelatesTo(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept relationshipType,
      final List<CodeableConcept>? targetClassifier,
      final FhirUri? targetUri,
      @JsonKey(name: '_targetUri') final PrimitiveElement? targetUriElement,
      final Identifier? targetIdentifier,
      final Reference? targetReference,
      final Attachment? targetAttachment}) = _$CitationRelatesToImpl;
  _CitationRelatesTo._() : super._();

  factory _CitationRelatesTo.fromJson(Map<String, dynamic> json) =
      _$CitationRelatesToImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept get relationshipType;
  @override
  List<CodeableConcept>? get targetClassifier;
  @override
  FhirUri? get targetUri;
  @override
  @JsonKey(name: '_targetUri')
  PrimitiveElement? get targetUriElement;
  @override
  Identifier? get targetIdentifier;
  @override
  Reference? get targetReference;
  @override
  Attachment? get targetAttachment;
  @override
  @JsonKey(ignore: true)
  _$$CitationRelatesToImplCopyWith<_$CitationRelatesToImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationCitedArtifact _$CitationCitedArtifactFromJson(
    Map<String, dynamic> json) {
  return _CitationCitedArtifact.fromJson(json);
}

/// @nodoc
mixin _$CitationCitedArtifact {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;
  List<Identifier>? get relatedIdentifier => throw _privateConstructorUsedError;
  FhirDateTime? get dateAccessed => throw _privateConstructorUsedError;
  @JsonKey(name: '_dateAccessed')
  PrimitiveElement? get dateAccessedElement =>
      throw _privateConstructorUsedError;
  CitationVersion? get version => throw _privateConstructorUsedError;
  List<CodeableConcept>? get currentState => throw _privateConstructorUsedError;
  List<CitationStatusDate1>? get statusDate =>
      throw _privateConstructorUsedError;
  List<CitationTitle>? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'abstract')
  List<CitationAbstract>? get abstract_ => throw _privateConstructorUsedError;
  @JsonKey(name: 'part')
  CitationPart? get part_ => throw _privateConstructorUsedError;
  List<CitationRelatesTo1>? get relatesTo => throw _privateConstructorUsedError;
  List<CitationPublicationForm>? get publicationForm =>
      throw _privateConstructorUsedError;
  List<CitationWebLocation>? get webLocation =>
      throw _privateConstructorUsedError;
  List<CitationClassification1>? get classification =>
      throw _privateConstructorUsedError;
  CitationContributorship? get contributorship =>
      throw _privateConstructorUsedError;
  List<Annotation>? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationCitedArtifactCopyWith<CitationCitedArtifact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationCitedArtifactCopyWith<$Res> {
  factory $CitationCitedArtifactCopyWith(CitationCitedArtifact value,
          $Res Function(CitationCitedArtifact) then) =
      _$CitationCitedArtifactCopyWithImpl<$Res, CitationCitedArtifact>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      List<Identifier>? relatedIdentifier,
      FhirDateTime? dateAccessed,
      @JsonKey(name: '_dateAccessed') PrimitiveElement? dateAccessedElement,
      CitationVersion? version,
      List<CodeableConcept>? currentState,
      List<CitationStatusDate1>? statusDate,
      List<CitationTitle>? title,
      @JsonKey(name: 'abstract') List<CitationAbstract>? abstract_,
      @JsonKey(name: 'part') CitationPart? part_,
      List<CitationRelatesTo1>? relatesTo,
      List<CitationPublicationForm>? publicationForm,
      List<CitationWebLocation>? webLocation,
      List<CitationClassification1>? classification,
      CitationContributorship? contributorship,
      List<Annotation>? note});

  $CitationVersionCopyWith<$Res>? get version;
  $CitationPartCopyWith<$Res>? get part_;
  $CitationContributorshipCopyWith<$Res>? get contributorship;
}

/// @nodoc
class _$CitationCitedArtifactCopyWithImpl<$Res,
        $Val extends CitationCitedArtifact>
    implements $CitationCitedArtifactCopyWith<$Res> {
  _$CitationCitedArtifactCopyWithImpl(this._value, this._then);

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
    Object? identifier = freezed,
    Object? relatedIdentifier = freezed,
    Object? dateAccessed = freezed,
    Object? dateAccessedElement = freezed,
    Object? version = freezed,
    Object? currentState = freezed,
    Object? statusDate = freezed,
    Object? title = freezed,
    Object? abstract_ = freezed,
    Object? part_ = freezed,
    Object? relatesTo = freezed,
    Object? publicationForm = freezed,
    Object? webLocation = freezed,
    Object? classification = freezed,
    Object? contributorship = freezed,
    Object? note = freezed,
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
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      relatedIdentifier: freezed == relatedIdentifier
          ? _value.relatedIdentifier
          : relatedIdentifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      dateAccessed: freezed == dateAccessed
          ? _value.dateAccessed
          : dateAccessed // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateAccessedElement: freezed == dateAccessedElement
          ? _value.dateAccessedElement
          : dateAccessedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as CitationVersion?,
      currentState: freezed == currentState
          ? _value.currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as List<CitationStatusDate1>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as List<CitationTitle>?,
      abstract_: freezed == abstract_
          ? _value.abstract_
          : abstract_ // ignore: cast_nullable_to_non_nullable
              as List<CitationAbstract>?,
      part_: freezed == part_
          ? _value.part_
          : part_ // ignore: cast_nullable_to_non_nullable
              as CitationPart?,
      relatesTo: freezed == relatesTo
          ? _value.relatesTo
          : relatesTo // ignore: cast_nullable_to_non_nullable
              as List<CitationRelatesTo1>?,
      publicationForm: freezed == publicationForm
          ? _value.publicationForm
          : publicationForm // ignore: cast_nullable_to_non_nullable
              as List<CitationPublicationForm>?,
      webLocation: freezed == webLocation
          ? _value.webLocation
          : webLocation // ignore: cast_nullable_to_non_nullable
              as List<CitationWebLocation>?,
      classification: freezed == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as List<CitationClassification1>?,
      contributorship: freezed == contributorship
          ? _value.contributorship
          : contributorship // ignore: cast_nullable_to_non_nullable
              as CitationContributorship?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CitationVersionCopyWith<$Res>? get version {
    if (_value.version == null) {
      return null;
    }

    return $CitationVersionCopyWith<$Res>(_value.version!, (value) {
      return _then(_value.copyWith(version: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CitationPartCopyWith<$Res>? get part_ {
    if (_value.part_ == null) {
      return null;
    }

    return $CitationPartCopyWith<$Res>(_value.part_!, (value) {
      return _then(_value.copyWith(part_: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CitationContributorshipCopyWith<$Res>? get contributorship {
    if (_value.contributorship == null) {
      return null;
    }

    return $CitationContributorshipCopyWith<$Res>(_value.contributorship!,
        (value) {
      return _then(_value.copyWith(contributorship: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationCitedArtifactImplCopyWith<$Res>
    implements $CitationCitedArtifactCopyWith<$Res> {
  factory _$$CitationCitedArtifactImplCopyWith(
          _$CitationCitedArtifactImpl value,
          $Res Function(_$CitationCitedArtifactImpl) then) =
      __$$CitationCitedArtifactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      List<Identifier>? relatedIdentifier,
      FhirDateTime? dateAccessed,
      @JsonKey(name: '_dateAccessed') PrimitiveElement? dateAccessedElement,
      CitationVersion? version,
      List<CodeableConcept>? currentState,
      List<CitationStatusDate1>? statusDate,
      List<CitationTitle>? title,
      @JsonKey(name: 'abstract') List<CitationAbstract>? abstract_,
      @JsonKey(name: 'part') CitationPart? part_,
      List<CitationRelatesTo1>? relatesTo,
      List<CitationPublicationForm>? publicationForm,
      List<CitationWebLocation>? webLocation,
      List<CitationClassification1>? classification,
      CitationContributorship? contributorship,
      List<Annotation>? note});

  @override
  $CitationVersionCopyWith<$Res>? get version;
  @override
  $CitationPartCopyWith<$Res>? get part_;
  @override
  $CitationContributorshipCopyWith<$Res>? get contributorship;
}

/// @nodoc
class __$$CitationCitedArtifactImplCopyWithImpl<$Res>
    extends _$CitationCitedArtifactCopyWithImpl<$Res,
        _$CitationCitedArtifactImpl>
    implements _$$CitationCitedArtifactImplCopyWith<$Res> {
  __$$CitationCitedArtifactImplCopyWithImpl(_$CitationCitedArtifactImpl _value,
      $Res Function(_$CitationCitedArtifactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? relatedIdentifier = freezed,
    Object? dateAccessed = freezed,
    Object? dateAccessedElement = freezed,
    Object? version = freezed,
    Object? currentState = freezed,
    Object? statusDate = freezed,
    Object? title = freezed,
    Object? abstract_ = freezed,
    Object? part_ = freezed,
    Object? relatesTo = freezed,
    Object? publicationForm = freezed,
    Object? webLocation = freezed,
    Object? classification = freezed,
    Object? contributorship = freezed,
    Object? note = freezed,
  }) {
    return _then(_$CitationCitedArtifactImpl(
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
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      relatedIdentifier: freezed == relatedIdentifier
          ? _value._relatedIdentifier
          : relatedIdentifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      dateAccessed: freezed == dateAccessed
          ? _value.dateAccessed
          : dateAccessed // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateAccessedElement: freezed == dateAccessedElement
          ? _value.dateAccessedElement
          : dateAccessedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as CitationVersion?,
      currentState: freezed == currentState
          ? _value._currentState
          : currentState // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      statusDate: freezed == statusDate
          ? _value._statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as List<CitationStatusDate1>?,
      title: freezed == title
          ? _value._title
          : title // ignore: cast_nullable_to_non_nullable
              as List<CitationTitle>?,
      abstract_: freezed == abstract_
          ? _value._abstract_
          : abstract_ // ignore: cast_nullable_to_non_nullable
              as List<CitationAbstract>?,
      part_: freezed == part_
          ? _value.part_
          : part_ // ignore: cast_nullable_to_non_nullable
              as CitationPart?,
      relatesTo: freezed == relatesTo
          ? _value._relatesTo
          : relatesTo // ignore: cast_nullable_to_non_nullable
              as List<CitationRelatesTo1>?,
      publicationForm: freezed == publicationForm
          ? _value._publicationForm
          : publicationForm // ignore: cast_nullable_to_non_nullable
              as List<CitationPublicationForm>?,
      webLocation: freezed == webLocation
          ? _value._webLocation
          : webLocation // ignore: cast_nullable_to_non_nullable
              as List<CitationWebLocation>?,
      classification: freezed == classification
          ? _value._classification
          : classification // ignore: cast_nullable_to_non_nullable
              as List<CitationClassification1>?,
      contributorship: freezed == contributorship
          ? _value.contributorship
          : contributorship // ignore: cast_nullable_to_non_nullable
              as CitationContributorship?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationCitedArtifactImpl extends _CitationCitedArtifact {
  _$CitationCitedArtifactImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final List<Identifier>? relatedIdentifier,
      this.dateAccessed,
      @JsonKey(name: '_dateAccessed') this.dateAccessedElement,
      this.version,
      final List<CodeableConcept>? currentState,
      final List<CitationStatusDate1>? statusDate,
      final List<CitationTitle>? title,
      @JsonKey(name: 'abstract') final List<CitationAbstract>? abstract_,
      @JsonKey(name: 'part') this.part_,
      final List<CitationRelatesTo1>? relatesTo,
      final List<CitationPublicationForm>? publicationForm,
      final List<CitationWebLocation>? webLocation,
      final List<CitationClassification1>? classification,
      this.contributorship,
      final List<Annotation>? note})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _relatedIdentifier = relatedIdentifier,
        _currentState = currentState,
        _statusDate = statusDate,
        _title = title,
        _abstract_ = abstract_,
        _relatesTo = relatesTo,
        _publicationForm = publicationForm,
        _webLocation = webLocation,
        _classification = classification,
        _note = note,
        super._();

  factory _$CitationCitedArtifactImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationCitedArtifactImplFromJson(json);

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

  final List<Identifier>? _identifier;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Identifier>? _relatedIdentifier;
  @override
  List<Identifier>? get relatedIdentifier {
    final value = _relatedIdentifier;
    if (value == null) return null;
    if (_relatedIdentifier is EqualUnmodifiableListView)
      return _relatedIdentifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirDateTime? dateAccessed;
  @override
  @JsonKey(name: '_dateAccessed')
  final PrimitiveElement? dateAccessedElement;
  @override
  final CitationVersion? version;
  final List<CodeableConcept>? _currentState;
  @override
  List<CodeableConcept>? get currentState {
    final value = _currentState;
    if (value == null) return null;
    if (_currentState is EqualUnmodifiableListView) return _currentState;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CitationStatusDate1>? _statusDate;
  @override
  List<CitationStatusDate1>? get statusDate {
    final value = _statusDate;
    if (value == null) return null;
    if (_statusDate is EqualUnmodifiableListView) return _statusDate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CitationTitle>? _title;
  @override
  List<CitationTitle>? get title {
    final value = _title;
    if (value == null) return null;
    if (_title is EqualUnmodifiableListView) return _title;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CitationAbstract>? _abstract_;
  @override
  @JsonKey(name: 'abstract')
  List<CitationAbstract>? get abstract_ {
    final value = _abstract_;
    if (value == null) return null;
    if (_abstract_ is EqualUnmodifiableListView) return _abstract_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'part')
  final CitationPart? part_;
  final List<CitationRelatesTo1>? _relatesTo;
  @override
  List<CitationRelatesTo1>? get relatesTo {
    final value = _relatesTo;
    if (value == null) return null;
    if (_relatesTo is EqualUnmodifiableListView) return _relatesTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CitationPublicationForm>? _publicationForm;
  @override
  List<CitationPublicationForm>? get publicationForm {
    final value = _publicationForm;
    if (value == null) return null;
    if (_publicationForm is EqualUnmodifiableListView) return _publicationForm;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CitationWebLocation>? _webLocation;
  @override
  List<CitationWebLocation>? get webLocation {
    final value = _webLocation;
    if (value == null) return null;
    if (_webLocation is EqualUnmodifiableListView) return _webLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CitationClassification1>? _classification;
  @override
  List<CitationClassification1>? get classification {
    final value = _classification;
    if (value == null) return null;
    if (_classification is EqualUnmodifiableListView) return _classification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CitationContributorship? contributorship;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationCitedArtifactImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            const DeepCollectionEquality()
                .equals(other._relatedIdentifier, _relatedIdentifier) &&
            (identical(other.dateAccessed, dateAccessed) ||
                other.dateAccessed == dateAccessed) &&
            (identical(other.dateAccessedElement, dateAccessedElement) ||
                other.dateAccessedElement == dateAccessedElement) &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality()
                .equals(other._currentState, _currentState) &&
            const DeepCollectionEquality()
                .equals(other._statusDate, _statusDate) &&
            const DeepCollectionEquality().equals(other._title, _title) &&
            const DeepCollectionEquality()
                .equals(other._abstract_, _abstract_) &&
            (identical(other.part_, part_) || other.part_ == part_) &&
            const DeepCollectionEquality()
                .equals(other._relatesTo, _relatesTo) &&
            const DeepCollectionEquality()
                .equals(other._publicationForm, _publicationForm) &&
            const DeepCollectionEquality()
                .equals(other._webLocation, _webLocation) &&
            const DeepCollectionEquality()
                .equals(other._classification, _classification) &&
            (identical(other.contributorship, contributorship) ||
                other.contributorship == contributorship) &&
            const DeepCollectionEquality().equals(other._note, _note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        const DeepCollectionEquality().hash(_relatedIdentifier),
        dateAccessed,
        dateAccessedElement,
        version,
        const DeepCollectionEquality().hash(_currentState),
        const DeepCollectionEquality().hash(_statusDate),
        const DeepCollectionEquality().hash(_title),
        const DeepCollectionEquality().hash(_abstract_),
        part_,
        const DeepCollectionEquality().hash(_relatesTo),
        const DeepCollectionEquality().hash(_publicationForm),
        const DeepCollectionEquality().hash(_webLocation),
        const DeepCollectionEquality().hash(_classification),
        contributorship,
        const DeepCollectionEquality().hash(_note)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationCitedArtifactImplCopyWith<_$CitationCitedArtifactImpl>
      get copyWith => __$$CitationCitedArtifactImplCopyWithImpl<
          _$CitationCitedArtifactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationCitedArtifactImplToJson(
      this,
    );
  }
}

abstract class _CitationCitedArtifact extends CitationCitedArtifact {
  factory _CitationCitedArtifact(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final List<Identifier>? relatedIdentifier,
      final FhirDateTime? dateAccessed,
      @JsonKey(name: '_dateAccessed')
      final PrimitiveElement? dateAccessedElement,
      final CitationVersion? version,
      final List<CodeableConcept>? currentState,
      final List<CitationStatusDate1>? statusDate,
      final List<CitationTitle>? title,
      @JsonKey(name: 'abstract') final List<CitationAbstract>? abstract_,
      @JsonKey(name: 'part') final CitationPart? part_,
      final List<CitationRelatesTo1>? relatesTo,
      final List<CitationPublicationForm>? publicationForm,
      final List<CitationWebLocation>? webLocation,
      final List<CitationClassification1>? classification,
      final CitationContributorship? contributorship,
      final List<Annotation>? note}) = _$CitationCitedArtifactImpl;
  _CitationCitedArtifact._() : super._();

  factory _CitationCitedArtifact.fromJson(Map<String, dynamic> json) =
      _$CitationCitedArtifactImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  List<Identifier>? get identifier;
  @override
  List<Identifier>? get relatedIdentifier;
  @override
  FhirDateTime? get dateAccessed;
  @override
  @JsonKey(name: '_dateAccessed')
  PrimitiveElement? get dateAccessedElement;
  @override
  CitationVersion? get version;
  @override
  List<CodeableConcept>? get currentState;
  @override
  List<CitationStatusDate1>? get statusDate;
  @override
  List<CitationTitle>? get title;
  @override
  @JsonKey(name: 'abstract')
  List<CitationAbstract>? get abstract_;
  @override
  @JsonKey(name: 'part')
  CitationPart? get part_;
  @override
  List<CitationRelatesTo1>? get relatesTo;
  @override
  List<CitationPublicationForm>? get publicationForm;
  @override
  List<CitationWebLocation>? get webLocation;
  @override
  List<CitationClassification1>? get classification;
  @override
  CitationContributorship? get contributorship;
  @override
  List<Annotation>? get note;
  @override
  @JsonKey(ignore: true)
  _$$CitationCitedArtifactImplCopyWith<_$CitationCitedArtifactImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CitationVersion _$CitationVersionFromJson(Map<String, dynamic> json) {
  return _CitationVersion.fromJson(json);
}

/// @nodoc
mixin _$CitationVersion {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement => throw _privateConstructorUsedError;
  Reference? get baseCitation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationVersionCopyWith<CitationVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationVersionCopyWith<$Res> {
  factory $CitationVersionCopyWith(
          CitationVersion value, $Res Function(CitationVersion) then) =
      _$CitationVersionCopyWithImpl<$Res, CitationVersion>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement,
      Reference? baseCitation});

  $ReferenceCopyWith<$Res>? get baseCitation;
}

/// @nodoc
class _$CitationVersionCopyWithImpl<$Res, $Val extends CitationVersion>
    implements $CitationVersionCopyWith<$Res> {
  _$CitationVersionCopyWithImpl(this._value, this._then);

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
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? baseCitation = freezed,
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      baseCitation: freezed == baseCitation
          ? _value.baseCitation
          : baseCitation // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get baseCitation {
    if (_value.baseCitation == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.baseCitation!, (value) {
      return _then(_value.copyWith(baseCitation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationVersionImplCopyWith<$Res>
    implements $CitationVersionCopyWith<$Res> {
  factory _$$CitationVersionImplCopyWith(_$CitationVersionImpl value,
          $Res Function(_$CitationVersionImpl) then) =
      __$$CitationVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement,
      Reference? baseCitation});

  @override
  $ReferenceCopyWith<$Res>? get baseCitation;
}

/// @nodoc
class __$$CitationVersionImplCopyWithImpl<$Res>
    extends _$CitationVersionCopyWithImpl<$Res, _$CitationVersionImpl>
    implements _$$CitationVersionImplCopyWith<$Res> {
  __$$CitationVersionImplCopyWithImpl(
      _$CitationVersionImpl _value, $Res Function(_$CitationVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? baseCitation = freezed,
  }) {
    return _then(_$CitationVersionImpl(
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
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      baseCitation: freezed == baseCitation
          ? _value.baseCitation
          : baseCitation // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationVersionImpl extends _CitationVersion {
  _$CitationVersionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.value,
      @JsonKey(name: '_value') this.valueElement,
      this.baseCitation})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CitationVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationVersionImplFromJson(json);

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
  final String? value;
  @override
  @JsonKey(name: '_value')
  final PrimitiveElement? valueElement;
  @override
  final Reference? baseCitation;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationVersionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement) &&
            (identical(other.baseCitation, baseCitation) ||
                other.baseCitation == baseCitation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      value,
      valueElement,
      baseCitation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationVersionImplCopyWith<_$CitationVersionImpl> get copyWith =>
      __$$CitationVersionImplCopyWithImpl<_$CitationVersionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationVersionImplToJson(
      this,
    );
  }
}

abstract class _CitationVersion extends CitationVersion {
  factory _CitationVersion(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? value,
      @JsonKey(name: '_value') final PrimitiveElement? valueElement,
      final Reference? baseCitation}) = _$CitationVersionImpl;
  _CitationVersion._() : super._();

  factory _CitationVersion.fromJson(Map<String, dynamic> json) =
      _$CitationVersionImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  String? get value;
  @override
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement;
  @override
  Reference? get baseCitation;
  @override
  @JsonKey(ignore: true)
  _$$CitationVersionImplCopyWith<_$CitationVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationStatusDate1 _$CitationStatusDate1FromJson(Map<String, dynamic> json) {
  return _CitationStatusDate1.fromJson(json);
}

/// @nodoc
mixin _$CitationStatusDate1 {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept get activity => throw _privateConstructorUsedError;
  FhirBoolean? get actual => throw _privateConstructorUsedError;
  @JsonKey(name: '_actual')
  PrimitiveElement? get actualElement => throw _privateConstructorUsedError;
  Period get period => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationStatusDate1CopyWith<CitationStatusDate1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationStatusDate1CopyWith<$Res> {
  factory $CitationStatusDate1CopyWith(
          CitationStatusDate1 value, $Res Function(CitationStatusDate1) then) =
      _$CitationStatusDate1CopyWithImpl<$Res, CitationStatusDate1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept activity,
      FhirBoolean? actual,
      @JsonKey(name: '_actual') PrimitiveElement? actualElement,
      Period period});

  $CodeableConceptCopyWith<$Res> get activity;
  $PeriodCopyWith<$Res> get period;
}

/// @nodoc
class _$CitationStatusDate1CopyWithImpl<$Res, $Val extends CitationStatusDate1>
    implements $CitationStatusDate1CopyWith<$Res> {
  _$CitationStatusDate1CopyWithImpl(this._value, this._then);

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
    Object? activity = null,
    Object? actual = freezed,
    Object? actualElement = freezed,
    Object? period = null,
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
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      actual: freezed == actual
          ? _value.actual
          : actual // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      actualElement: freezed == actualElement
          ? _value.actualElement
          : actualElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get activity {
    return $CodeableConceptCopyWith<$Res>(_value.activity, (value) {
      return _then(_value.copyWith(activity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res> get period {
    return $PeriodCopyWith<$Res>(_value.period, (value) {
      return _then(_value.copyWith(period: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationStatusDate1ImplCopyWith<$Res>
    implements $CitationStatusDate1CopyWith<$Res> {
  factory _$$CitationStatusDate1ImplCopyWith(_$CitationStatusDate1Impl value,
          $Res Function(_$CitationStatusDate1Impl) then) =
      __$$CitationStatusDate1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept activity,
      FhirBoolean? actual,
      @JsonKey(name: '_actual') PrimitiveElement? actualElement,
      Period period});

  @override
  $CodeableConceptCopyWith<$Res> get activity;
  @override
  $PeriodCopyWith<$Res> get period;
}

/// @nodoc
class __$$CitationStatusDate1ImplCopyWithImpl<$Res>
    extends _$CitationStatusDate1CopyWithImpl<$Res, _$CitationStatusDate1Impl>
    implements _$$CitationStatusDate1ImplCopyWith<$Res> {
  __$$CitationStatusDate1ImplCopyWithImpl(_$CitationStatusDate1Impl _value,
      $Res Function(_$CitationStatusDate1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? activity = null,
    Object? actual = freezed,
    Object? actualElement = freezed,
    Object? period = null,
  }) {
    return _then(_$CitationStatusDate1Impl(
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
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      actual: freezed == actual
          ? _value.actual
          : actual // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      actualElement: freezed == actualElement
          ? _value.actualElement
          : actualElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as Period,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationStatusDate1Impl extends _CitationStatusDate1 {
  _$CitationStatusDate1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.activity,
      this.actual,
      @JsonKey(name: '_actual') this.actualElement,
      required this.period})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CitationStatusDate1Impl.fromJson(Map<String, dynamic> json) =>
      _$$CitationStatusDate1ImplFromJson(json);

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
  final CodeableConcept activity;
  @override
  final FhirBoolean? actual;
  @override
  @JsonKey(name: '_actual')
  final PrimitiveElement? actualElement;
  @override
  final Period period;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationStatusDate1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            (identical(other.actual, actual) || other.actual == actual) &&
            (identical(other.actualElement, actualElement) ||
                other.actualElement == actualElement) &&
            (identical(other.period, period) || other.period == period));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      activity,
      actual,
      actualElement,
      period);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationStatusDate1ImplCopyWith<_$CitationStatusDate1Impl> get copyWith =>
      __$$CitationStatusDate1ImplCopyWithImpl<_$CitationStatusDate1Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationStatusDate1ImplToJson(
      this,
    );
  }
}

abstract class _CitationStatusDate1 extends CitationStatusDate1 {
  factory _CitationStatusDate1(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept activity,
      final FhirBoolean? actual,
      @JsonKey(name: '_actual') final PrimitiveElement? actualElement,
      required final Period period}) = _$CitationStatusDate1Impl;
  _CitationStatusDate1._() : super._();

  factory _CitationStatusDate1.fromJson(Map<String, dynamic> json) =
      _$CitationStatusDate1Impl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept get activity;
  @override
  FhirBoolean? get actual;
  @override
  @JsonKey(name: '_actual')
  PrimitiveElement? get actualElement;
  @override
  Period get period;
  @override
  @JsonKey(ignore: true)
  _$$CitationStatusDate1ImplCopyWith<_$CitationStatusDate1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationTitle _$CitationTitleFromJson(Map<String, dynamic> json) {
  return _CitationTitle.fromJson(json);
}

/// @nodoc
mixin _$CitationTitle {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  List<CodeableConcept>? get type => throw _privateConstructorUsedError;
  CodeableConcept? get language => throw _privateConstructorUsedError;
  FhirMarkdown? get text => throw _privateConstructorUsedError;
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationTitleCopyWith<CitationTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationTitleCopyWith<$Res> {
  factory $CitationTitleCopyWith(
          CitationTitle value, $Res Function(CitationTitle) then) =
      _$CitationTitleCopyWithImpl<$Res, CitationTitle>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<CodeableConcept>? type,
      CodeableConcept? language,
      FhirMarkdown? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement});

  $CodeableConceptCopyWith<$Res>? get language;
}

/// @nodoc
class _$CitationTitleCopyWithImpl<$Res, $Val extends CitationTitle>
    implements $CitationTitleCopyWith<$Res> {
  _$CitationTitleCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? language = freezed,
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
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationTitleImplCopyWith<$Res>
    implements $CitationTitleCopyWith<$Res> {
  factory _$$CitationTitleImplCopyWith(
          _$CitationTitleImpl value, $Res Function(_$CitationTitleImpl) then) =
      __$$CitationTitleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<CodeableConcept>? type,
      CodeableConcept? language,
      FhirMarkdown? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement});

  @override
  $CodeableConceptCopyWith<$Res>? get language;
}

/// @nodoc
class __$$CitationTitleImplCopyWithImpl<$Res>
    extends _$CitationTitleCopyWithImpl<$Res, _$CitationTitleImpl>
    implements _$$CitationTitleImplCopyWith<$Res> {
  __$$CitationTitleImplCopyWithImpl(
      _$CitationTitleImpl _value, $Res Function(_$CitationTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? language = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
  }) {
    return _then(_$CitationTitleImpl(
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
      type: freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationTitleImpl extends _CitationTitle {
  _$CitationTitleImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<CodeableConcept>? type,
      this.language,
      this.text,
      @JsonKey(name: '_text') this.textElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _type = type,
        super._();

  factory _$CitationTitleImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationTitleImplFromJson(json);

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

  final List<CodeableConcept>? _type;
  @override
  List<CodeableConcept>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CodeableConcept? language;
  @override
  final FhirMarkdown? text;
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationTitleImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            (identical(other.language, language) ||
                other.language == language) &&
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
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_type),
      language,
      text,
      textElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationTitleImplCopyWith<_$CitationTitleImpl> get copyWith =>
      __$$CitationTitleImplCopyWithImpl<_$CitationTitleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationTitleImplToJson(
      this,
    );
  }
}

abstract class _CitationTitle extends CitationTitle {
  factory _CitationTitle(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final List<CodeableConcept>? type,
          final CodeableConcept? language,
          final FhirMarkdown? text,
          @JsonKey(name: '_text') final PrimitiveElement? textElement}) =
      _$CitationTitleImpl;
  _CitationTitle._() : super._();

  factory _CitationTitle.fromJson(Map<String, dynamic> json) =
      _$CitationTitleImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  List<CodeableConcept>? get type;
  @override
  CodeableConcept? get language;
  @override
  FhirMarkdown? get text;
  @override
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override
  @JsonKey(ignore: true)
  _$$CitationTitleImplCopyWith<_$CitationTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationAbstract _$CitationAbstractFromJson(Map<String, dynamic> json) {
  return _CitationAbstract.fromJson(json);
}

/// @nodoc
mixin _$CitationAbstract {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get type => throw _privateConstructorUsedError;
  CodeableConcept? get language => throw _privateConstructorUsedError;
  FhirMarkdown? get text => throw _privateConstructorUsedError;
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationAbstractCopyWith<CitationAbstract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationAbstractCopyWith<$Res> {
  factory $CitationAbstractCopyWith(
          CitationAbstract value, $Res Function(CitationAbstract) then) =
      _$CitationAbstractCopyWithImpl<$Res, CitationAbstract>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      CodeableConcept? language,
      FhirMarkdown? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement});

  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get language;
}

/// @nodoc
class _$CitationAbstractCopyWithImpl<$Res, $Val extends CitationAbstract>
    implements $CitationAbstractCopyWith<$Res> {
  _$CitationAbstractCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? language = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      copyrightElement: freezed == copyrightElement
          ? _value.copyrightElement
          : copyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
  $CodeableConceptCopyWith<$Res>? get language {
    if (_value.language == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.language!, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationAbstractImplCopyWith<$Res>
    implements $CitationAbstractCopyWith<$Res> {
  factory _$$CitationAbstractImplCopyWith(_$CitationAbstractImpl value,
          $Res Function(_$CitationAbstractImpl) then) =
      __$$CitationAbstractImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      CodeableConcept? language,
      FhirMarkdown? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get language;
}

/// @nodoc
class __$$CitationAbstractImplCopyWithImpl<$Res>
    extends _$CitationAbstractCopyWithImpl<$Res, _$CitationAbstractImpl>
    implements _$$CitationAbstractImplCopyWith<$Res> {
  __$$CitationAbstractImplCopyWithImpl(_$CitationAbstractImpl _value,
      $Res Function(_$CitationAbstractImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? language = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
  }) {
    return _then(_$CitationAbstractImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      copyrightElement: freezed == copyrightElement
          ? _value.copyrightElement
          : copyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationAbstractImpl extends _CitationAbstract {
  _$CitationAbstractImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.language,
      this.text,
      @JsonKey(name: '_text') this.textElement,
      this.copyright,
      @JsonKey(name: '_copyright') this.copyrightElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CitationAbstractImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationAbstractImplFromJson(json);

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
  final CodeableConcept? type;
  @override
  final CodeableConcept? language;
  @override
  final FhirMarkdown? text;
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;
  @override
  final FhirMarkdown? copyright;
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationAbstractImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.copyrightElement, copyrightElement) ||
                other.copyrightElement == copyrightElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      language,
      text,
      textElement,
      copyright,
      copyrightElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationAbstractImplCopyWith<_$CitationAbstractImpl> get copyWith =>
      __$$CitationAbstractImplCopyWithImpl<_$CitationAbstractImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationAbstractImplToJson(
      this,
    );
  }
}

abstract class _CitationAbstract extends CitationAbstract {
  factory _CitationAbstract(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? type,
      final CodeableConcept? language,
      final FhirMarkdown? text,
      @JsonKey(name: '_text') final PrimitiveElement? textElement,
      final FhirMarkdown? copyright,
      @JsonKey(name: '_copyright')
      final PrimitiveElement? copyrightElement}) = _$CitationAbstractImpl;
  _CitationAbstract._() : super._();

  factory _CitationAbstract.fromJson(Map<String, dynamic> json) =
      _$CitationAbstractImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get type;
  @override
  CodeableConcept? get language;
  @override
  FhirMarkdown? get text;
  @override
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override
  FhirMarkdown? get copyright;
  @override
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;
  @override
  @JsonKey(ignore: true)
  _$$CitationAbstractImplCopyWith<_$CitationAbstractImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationPart _$CitationPartFromJson(Map<String, dynamic> json) {
  return _CitationPart.fromJson(json);
}

/// @nodoc
mixin _$CitationPart {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get type => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement => throw _privateConstructorUsedError;
  Reference? get baseCitation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationPartCopyWith<CitationPart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationPartCopyWith<$Res> {
  factory $CitationPartCopyWith(
          CitationPart value, $Res Function(CitationPart) then) =
      _$CitationPartCopyWithImpl<$Res, CitationPart>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement,
      Reference? baseCitation});

  $CodeableConceptCopyWith<$Res>? get type;
  $ReferenceCopyWith<$Res>? get baseCitation;
}

/// @nodoc
class _$CitationPartCopyWithImpl<$Res, $Val extends CitationPart>
    implements $CitationPartCopyWith<$Res> {
  _$CitationPartCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? baseCitation = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      baseCitation: freezed == baseCitation
          ? _value.baseCitation
          : baseCitation // ignore: cast_nullable_to_non_nullable
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
  $ReferenceCopyWith<$Res>? get baseCitation {
    if (_value.baseCitation == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.baseCitation!, (value) {
      return _then(_value.copyWith(baseCitation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationPartImplCopyWith<$Res>
    implements $CitationPartCopyWith<$Res> {
  factory _$$CitationPartImplCopyWith(
          _$CitationPartImpl value, $Res Function(_$CitationPartImpl) then) =
      __$$CitationPartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      String? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement,
      Reference? baseCitation});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $ReferenceCopyWith<$Res>? get baseCitation;
}

/// @nodoc
class __$$CitationPartImplCopyWithImpl<$Res>
    extends _$CitationPartCopyWithImpl<$Res, _$CitationPartImpl>
    implements _$$CitationPartImplCopyWith<$Res> {
  __$$CitationPartImplCopyWithImpl(
      _$CitationPartImpl _value, $Res Function(_$CitationPartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
    Object? baseCitation = freezed,
  }) {
    return _then(_$CitationPartImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      baseCitation: freezed == baseCitation
          ? _value.baseCitation
          : baseCitation // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationPartImpl extends _CitationPart {
  _$CitationPartImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.value,
      @JsonKey(name: '_value') this.valueElement,
      this.baseCitation})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CitationPartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationPartImplFromJson(json);

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
  final CodeableConcept? type;
  @override
  final String? value;
  @override
  @JsonKey(name: '_value')
  final PrimitiveElement? valueElement;
  @override
  final Reference? baseCitation;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationPartImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement) &&
            (identical(other.baseCitation, baseCitation) ||
                other.baseCitation == baseCitation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      value,
      valueElement,
      baseCitation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationPartImplCopyWith<_$CitationPartImpl> get copyWith =>
      __$$CitationPartImplCopyWithImpl<_$CitationPartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationPartImplToJson(
      this,
    );
  }
}

abstract class _CitationPart extends CitationPart {
  factory _CitationPart(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? type,
      final String? value,
      @JsonKey(name: '_value') final PrimitiveElement? valueElement,
      final Reference? baseCitation}) = _$CitationPartImpl;
  _CitationPart._() : super._();

  factory _CitationPart.fromJson(Map<String, dynamic> json) =
      _$CitationPartImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get type;
  @override
  String? get value;
  @override
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement;
  @override
  Reference? get baseCitation;
  @override
  @JsonKey(ignore: true)
  _$$CitationPartImplCopyWith<_$CitationPartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationRelatesTo1 _$CitationRelatesTo1FromJson(Map<String, dynamic> json) {
  return _CitationRelatesTo1.fromJson(json);
}

/// @nodoc
mixin _$CitationRelatesTo1 {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept get relationshipType => throw _privateConstructorUsedError;
  List<CodeableConcept>? get targetClassifier =>
      throw _privateConstructorUsedError;
  FhirUri? get targetUri => throw _privateConstructorUsedError;
  @JsonKey(name: '_targetUri')
  PrimitiveElement? get targetUriElement => throw _privateConstructorUsedError;
  Identifier? get targetIdentifier => throw _privateConstructorUsedError;
  Reference? get targetReference => throw _privateConstructorUsedError;
  Attachment? get targetAttachment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationRelatesTo1CopyWith<CitationRelatesTo1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationRelatesTo1CopyWith<$Res> {
  factory $CitationRelatesTo1CopyWith(
          CitationRelatesTo1 value, $Res Function(CitationRelatesTo1) then) =
      _$CitationRelatesTo1CopyWithImpl<$Res, CitationRelatesTo1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept relationshipType,
      List<CodeableConcept>? targetClassifier,
      FhirUri? targetUri,
      @JsonKey(name: '_targetUri') PrimitiveElement? targetUriElement,
      Identifier? targetIdentifier,
      Reference? targetReference,
      Attachment? targetAttachment});

  $CodeableConceptCopyWith<$Res> get relationshipType;
  $IdentifierCopyWith<$Res>? get targetIdentifier;
  $ReferenceCopyWith<$Res>? get targetReference;
  $AttachmentCopyWith<$Res>? get targetAttachment;
}

/// @nodoc
class _$CitationRelatesTo1CopyWithImpl<$Res, $Val extends CitationRelatesTo1>
    implements $CitationRelatesTo1CopyWith<$Res> {
  _$CitationRelatesTo1CopyWithImpl(this._value, this._then);

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
    Object? relationshipType = null,
    Object? targetClassifier = freezed,
    Object? targetUri = freezed,
    Object? targetUriElement = freezed,
    Object? targetIdentifier = freezed,
    Object? targetReference = freezed,
    Object? targetAttachment = freezed,
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
      relationshipType: null == relationshipType
          ? _value.relationshipType
          : relationshipType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      targetClassifier: freezed == targetClassifier
          ? _value.targetClassifier
          : targetClassifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      targetUri: freezed == targetUri
          ? _value.targetUri
          : targetUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      targetUriElement: freezed == targetUriElement
          ? _value.targetUriElement
          : targetUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      targetIdentifier: freezed == targetIdentifier
          ? _value.targetIdentifier
          : targetIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      targetReference: freezed == targetReference
          ? _value.targetReference
          : targetReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      targetAttachment: freezed == targetAttachment
          ? _value.targetAttachment
          : targetAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get relationshipType {
    return $CodeableConceptCopyWith<$Res>(_value.relationshipType, (value) {
      return _then(_value.copyWith(relationshipType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get targetIdentifier {
    if (_value.targetIdentifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.targetIdentifier!, (value) {
      return _then(_value.copyWith(targetIdentifier: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get targetReference {
    if (_value.targetReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.targetReference!, (value) {
      return _then(_value.copyWith(targetReference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get targetAttachment {
    if (_value.targetAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.targetAttachment!, (value) {
      return _then(_value.copyWith(targetAttachment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationRelatesTo1ImplCopyWith<$Res>
    implements $CitationRelatesTo1CopyWith<$Res> {
  factory _$$CitationRelatesTo1ImplCopyWith(_$CitationRelatesTo1Impl value,
          $Res Function(_$CitationRelatesTo1Impl) then) =
      __$$CitationRelatesTo1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept relationshipType,
      List<CodeableConcept>? targetClassifier,
      FhirUri? targetUri,
      @JsonKey(name: '_targetUri') PrimitiveElement? targetUriElement,
      Identifier? targetIdentifier,
      Reference? targetReference,
      Attachment? targetAttachment});

  @override
  $CodeableConceptCopyWith<$Res> get relationshipType;
  @override
  $IdentifierCopyWith<$Res>? get targetIdentifier;
  @override
  $ReferenceCopyWith<$Res>? get targetReference;
  @override
  $AttachmentCopyWith<$Res>? get targetAttachment;
}

/// @nodoc
class __$$CitationRelatesTo1ImplCopyWithImpl<$Res>
    extends _$CitationRelatesTo1CopyWithImpl<$Res, _$CitationRelatesTo1Impl>
    implements _$$CitationRelatesTo1ImplCopyWith<$Res> {
  __$$CitationRelatesTo1ImplCopyWithImpl(_$CitationRelatesTo1Impl _value,
      $Res Function(_$CitationRelatesTo1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? relationshipType = null,
    Object? targetClassifier = freezed,
    Object? targetUri = freezed,
    Object? targetUriElement = freezed,
    Object? targetIdentifier = freezed,
    Object? targetReference = freezed,
    Object? targetAttachment = freezed,
  }) {
    return _then(_$CitationRelatesTo1Impl(
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
      relationshipType: null == relationshipType
          ? _value.relationshipType
          : relationshipType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      targetClassifier: freezed == targetClassifier
          ? _value._targetClassifier
          : targetClassifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      targetUri: freezed == targetUri
          ? _value.targetUri
          : targetUri // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      targetUriElement: freezed == targetUriElement
          ? _value.targetUriElement
          : targetUriElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      targetIdentifier: freezed == targetIdentifier
          ? _value.targetIdentifier
          : targetIdentifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      targetReference: freezed == targetReference
          ? _value.targetReference
          : targetReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      targetAttachment: freezed == targetAttachment
          ? _value.targetAttachment
          : targetAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationRelatesTo1Impl extends _CitationRelatesTo1 {
  _$CitationRelatesTo1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.relationshipType,
      final List<CodeableConcept>? targetClassifier,
      this.targetUri,
      @JsonKey(name: '_targetUri') this.targetUriElement,
      this.targetIdentifier,
      this.targetReference,
      this.targetAttachment})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _targetClassifier = targetClassifier,
        super._();

  factory _$CitationRelatesTo1Impl.fromJson(Map<String, dynamic> json) =>
      _$$CitationRelatesTo1ImplFromJson(json);

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
  final CodeableConcept relationshipType;
  final List<CodeableConcept>? _targetClassifier;
  @override
  List<CodeableConcept>? get targetClassifier {
    final value = _targetClassifier;
    if (value == null) return null;
    if (_targetClassifier is EqualUnmodifiableListView)
      return _targetClassifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirUri? targetUri;
  @override
  @JsonKey(name: '_targetUri')
  final PrimitiveElement? targetUriElement;
  @override
  final Identifier? targetIdentifier;
  @override
  final Reference? targetReference;
  @override
  final Attachment? targetAttachment;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationRelatesTo1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.relationshipType, relationshipType) ||
                other.relationshipType == relationshipType) &&
            const DeepCollectionEquality()
                .equals(other._targetClassifier, _targetClassifier) &&
            (identical(other.targetUri, targetUri) ||
                other.targetUri == targetUri) &&
            (identical(other.targetUriElement, targetUriElement) ||
                other.targetUriElement == targetUriElement) &&
            (identical(other.targetIdentifier, targetIdentifier) ||
                other.targetIdentifier == targetIdentifier) &&
            (identical(other.targetReference, targetReference) ||
                other.targetReference == targetReference) &&
            (identical(other.targetAttachment, targetAttachment) ||
                other.targetAttachment == targetAttachment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      relationshipType,
      const DeepCollectionEquality().hash(_targetClassifier),
      targetUri,
      targetUriElement,
      targetIdentifier,
      targetReference,
      targetAttachment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationRelatesTo1ImplCopyWith<_$CitationRelatesTo1Impl> get copyWith =>
      __$$CitationRelatesTo1ImplCopyWithImpl<_$CitationRelatesTo1Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationRelatesTo1ImplToJson(
      this,
    );
  }
}

abstract class _CitationRelatesTo1 extends CitationRelatesTo1 {
  factory _CitationRelatesTo1(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept relationshipType,
      final List<CodeableConcept>? targetClassifier,
      final FhirUri? targetUri,
      @JsonKey(name: '_targetUri') final PrimitiveElement? targetUriElement,
      final Identifier? targetIdentifier,
      final Reference? targetReference,
      final Attachment? targetAttachment}) = _$CitationRelatesTo1Impl;
  _CitationRelatesTo1._() : super._();

  factory _CitationRelatesTo1.fromJson(Map<String, dynamic> json) =
      _$CitationRelatesTo1Impl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept get relationshipType;
  @override
  List<CodeableConcept>? get targetClassifier;
  @override
  FhirUri? get targetUri;
  @override
  @JsonKey(name: '_targetUri')
  PrimitiveElement? get targetUriElement;
  @override
  Identifier? get targetIdentifier;
  @override
  Reference? get targetReference;
  @override
  Attachment? get targetAttachment;
  @override
  @JsonKey(ignore: true)
  _$$CitationRelatesTo1ImplCopyWith<_$CitationRelatesTo1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationPublicationForm _$CitationPublicationFormFromJson(
    Map<String, dynamic> json) {
  return _CitationPublicationForm.fromJson(json);
}

/// @nodoc
mixin _$CitationPublicationForm {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CitationPublishedIn? get publishedIn => throw _privateConstructorUsedError;
  CitationPeriodicRelease? get periodicRelease =>
      throw _privateConstructorUsedError;
  FhirDateTime? get articleDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_articleDate')
  PrimitiveElement? get articleDateElement =>
      throw _privateConstructorUsedError;
  FhirDateTime? get lastRevisionDate => throw _privateConstructorUsedError;
  @JsonKey(name: '_lastRevisionDate')
  PrimitiveElement? get lastRevisionDateElement =>
      throw _privateConstructorUsedError;
  List<CodeableConcept>? get language => throw _privateConstructorUsedError;
  String? get accessionNumber => throw _privateConstructorUsedError;
  @JsonKey(name: '_accessionNumber')
  PrimitiveElement? get accessionNumberElement =>
      throw _privateConstructorUsedError;
  String? get pageString => throw _privateConstructorUsedError;
  @JsonKey(name: '_pageString')
  PrimitiveElement? get pageStringElement => throw _privateConstructorUsedError;
  String? get firstPage => throw _privateConstructorUsedError;
  @JsonKey(name: '_firstPage')
  PrimitiveElement? get firstPageElement => throw _privateConstructorUsedError;
  String? get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: '_lastPage')
  PrimitiveElement? get lastPageElement => throw _privateConstructorUsedError;
  String? get pageCount => throw _privateConstructorUsedError;
  @JsonKey(name: '_pageCount')
  PrimitiveElement? get pageCountElement => throw _privateConstructorUsedError;
  FhirMarkdown? get copyright => throw _privateConstructorUsedError;
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationPublicationFormCopyWith<CitationPublicationForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationPublicationFormCopyWith<$Res> {
  factory $CitationPublicationFormCopyWith(CitationPublicationForm value,
          $Res Function(CitationPublicationForm) then) =
      _$CitationPublicationFormCopyWithImpl<$Res, CitationPublicationForm>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CitationPublishedIn? publishedIn,
      CitationPeriodicRelease? periodicRelease,
      FhirDateTime? articleDate,
      @JsonKey(name: '_articleDate') PrimitiveElement? articleDateElement,
      FhirDateTime? lastRevisionDate,
      @JsonKey(name: '_lastRevisionDate')
      PrimitiveElement? lastRevisionDateElement,
      List<CodeableConcept>? language,
      String? accessionNumber,
      @JsonKey(name: '_accessionNumber')
      PrimitiveElement? accessionNumberElement,
      String? pageString,
      @JsonKey(name: '_pageString') PrimitiveElement? pageStringElement,
      String? firstPage,
      @JsonKey(name: '_firstPage') PrimitiveElement? firstPageElement,
      String? lastPage,
      @JsonKey(name: '_lastPage') PrimitiveElement? lastPageElement,
      String? pageCount,
      @JsonKey(name: '_pageCount') PrimitiveElement? pageCountElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement});

  $CitationPublishedInCopyWith<$Res>? get publishedIn;
  $CitationPeriodicReleaseCopyWith<$Res>? get periodicRelease;
}

/// @nodoc
class _$CitationPublicationFormCopyWithImpl<$Res,
        $Val extends CitationPublicationForm>
    implements $CitationPublicationFormCopyWith<$Res> {
  _$CitationPublicationFormCopyWithImpl(this._value, this._then);

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
    Object? publishedIn = freezed,
    Object? periodicRelease = freezed,
    Object? articleDate = freezed,
    Object? articleDateElement = freezed,
    Object? lastRevisionDate = freezed,
    Object? lastRevisionDateElement = freezed,
    Object? language = freezed,
    Object? accessionNumber = freezed,
    Object? accessionNumberElement = freezed,
    Object? pageString = freezed,
    Object? pageStringElement = freezed,
    Object? firstPage = freezed,
    Object? firstPageElement = freezed,
    Object? lastPage = freezed,
    Object? lastPageElement = freezed,
    Object? pageCount = freezed,
    Object? pageCountElement = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
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
      publishedIn: freezed == publishedIn
          ? _value.publishedIn
          : publishedIn // ignore: cast_nullable_to_non_nullable
              as CitationPublishedIn?,
      periodicRelease: freezed == periodicRelease
          ? _value.periodicRelease
          : periodicRelease // ignore: cast_nullable_to_non_nullable
              as CitationPeriodicRelease?,
      articleDate: freezed == articleDate
          ? _value.articleDate
          : articleDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      articleDateElement: freezed == articleDateElement
          ? _value.articleDateElement
          : articleDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lastRevisionDate: freezed == lastRevisionDate
          ? _value.lastRevisionDate
          : lastRevisionDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      lastRevisionDateElement: freezed == lastRevisionDateElement
          ? _value.lastRevisionDateElement
          : lastRevisionDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      accessionNumber: freezed == accessionNumber
          ? _value.accessionNumber
          : accessionNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accessionNumberElement: freezed == accessionNumberElement
          ? _value.accessionNumberElement
          : accessionNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      pageString: freezed == pageString
          ? _value.pageString
          : pageString // ignore: cast_nullable_to_non_nullable
              as String?,
      pageStringElement: freezed == pageStringElement
          ? _value.pageStringElement
          : pageStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      firstPage: freezed == firstPage
          ? _value.firstPage
          : firstPage // ignore: cast_nullable_to_non_nullable
              as String?,
      firstPageElement: freezed == firstPageElement
          ? _value.firstPageElement
          : firstPageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPageElement: freezed == lastPageElement
          ? _value.lastPageElement
          : lastPageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCountElement: freezed == pageCountElement
          ? _value.pageCountElement
          : pageCountElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      copyrightElement: freezed == copyrightElement
          ? _value.copyrightElement
          : copyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CitationPublishedInCopyWith<$Res>? get publishedIn {
    if (_value.publishedIn == null) {
      return null;
    }

    return $CitationPublishedInCopyWith<$Res>(_value.publishedIn!, (value) {
      return _then(_value.copyWith(publishedIn: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CitationPeriodicReleaseCopyWith<$Res>? get periodicRelease {
    if (_value.periodicRelease == null) {
      return null;
    }

    return $CitationPeriodicReleaseCopyWith<$Res>(_value.periodicRelease!,
        (value) {
      return _then(_value.copyWith(periodicRelease: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationPublicationFormImplCopyWith<$Res>
    implements $CitationPublicationFormCopyWith<$Res> {
  factory _$$CitationPublicationFormImplCopyWith(
          _$CitationPublicationFormImpl value,
          $Res Function(_$CitationPublicationFormImpl) then) =
      __$$CitationPublicationFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CitationPublishedIn? publishedIn,
      CitationPeriodicRelease? periodicRelease,
      FhirDateTime? articleDate,
      @JsonKey(name: '_articleDate') PrimitiveElement? articleDateElement,
      FhirDateTime? lastRevisionDate,
      @JsonKey(name: '_lastRevisionDate')
      PrimitiveElement? lastRevisionDateElement,
      List<CodeableConcept>? language,
      String? accessionNumber,
      @JsonKey(name: '_accessionNumber')
      PrimitiveElement? accessionNumberElement,
      String? pageString,
      @JsonKey(name: '_pageString') PrimitiveElement? pageStringElement,
      String? firstPage,
      @JsonKey(name: '_firstPage') PrimitiveElement? firstPageElement,
      String? lastPage,
      @JsonKey(name: '_lastPage') PrimitiveElement? lastPageElement,
      String? pageCount,
      @JsonKey(name: '_pageCount') PrimitiveElement? pageCountElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement});

  @override
  $CitationPublishedInCopyWith<$Res>? get publishedIn;
  @override
  $CitationPeriodicReleaseCopyWith<$Res>? get periodicRelease;
}

/// @nodoc
class __$$CitationPublicationFormImplCopyWithImpl<$Res>
    extends _$CitationPublicationFormCopyWithImpl<$Res,
        _$CitationPublicationFormImpl>
    implements _$$CitationPublicationFormImplCopyWith<$Res> {
  __$$CitationPublicationFormImplCopyWithImpl(
      _$CitationPublicationFormImpl _value,
      $Res Function(_$CitationPublicationFormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? publishedIn = freezed,
    Object? periodicRelease = freezed,
    Object? articleDate = freezed,
    Object? articleDateElement = freezed,
    Object? lastRevisionDate = freezed,
    Object? lastRevisionDateElement = freezed,
    Object? language = freezed,
    Object? accessionNumber = freezed,
    Object? accessionNumberElement = freezed,
    Object? pageString = freezed,
    Object? pageStringElement = freezed,
    Object? firstPage = freezed,
    Object? firstPageElement = freezed,
    Object? lastPage = freezed,
    Object? lastPageElement = freezed,
    Object? pageCount = freezed,
    Object? pageCountElement = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
  }) {
    return _then(_$CitationPublicationFormImpl(
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
      publishedIn: freezed == publishedIn
          ? _value.publishedIn
          : publishedIn // ignore: cast_nullable_to_non_nullable
              as CitationPublishedIn?,
      periodicRelease: freezed == periodicRelease
          ? _value.periodicRelease
          : periodicRelease // ignore: cast_nullable_to_non_nullable
              as CitationPeriodicRelease?,
      articleDate: freezed == articleDate
          ? _value.articleDate
          : articleDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      articleDateElement: freezed == articleDateElement
          ? _value.articleDateElement
          : articleDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lastRevisionDate: freezed == lastRevisionDate
          ? _value.lastRevisionDate
          : lastRevisionDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      lastRevisionDateElement: freezed == lastRevisionDateElement
          ? _value.lastRevisionDateElement
          : lastRevisionDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value._language
          : language // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      accessionNumber: freezed == accessionNumber
          ? _value.accessionNumber
          : accessionNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accessionNumberElement: freezed == accessionNumberElement
          ? _value.accessionNumberElement
          : accessionNumberElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      pageString: freezed == pageString
          ? _value.pageString
          : pageString // ignore: cast_nullable_to_non_nullable
              as String?,
      pageStringElement: freezed == pageStringElement
          ? _value.pageStringElement
          : pageStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      firstPage: freezed == firstPage
          ? _value.firstPage
          : firstPage // ignore: cast_nullable_to_non_nullable
              as String?,
      firstPageElement: freezed == firstPageElement
          ? _value.firstPageElement
          : firstPageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lastPage: freezed == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastPageElement: freezed == lastPageElement
          ? _value.lastPageElement
          : lastPageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCountElement: freezed == pageCountElement
          ? _value.pageCountElement
          : pageCountElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      copyright: freezed == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      copyrightElement: freezed == copyrightElement
          ? _value.copyrightElement
          : copyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationPublicationFormImpl extends _CitationPublicationForm {
  _$CitationPublicationFormImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.publishedIn,
      this.periodicRelease,
      this.articleDate,
      @JsonKey(name: '_articleDate') this.articleDateElement,
      this.lastRevisionDate,
      @JsonKey(name: '_lastRevisionDate') this.lastRevisionDateElement,
      final List<CodeableConcept>? language,
      this.accessionNumber,
      @JsonKey(name: '_accessionNumber') this.accessionNumberElement,
      this.pageString,
      @JsonKey(name: '_pageString') this.pageStringElement,
      this.firstPage,
      @JsonKey(name: '_firstPage') this.firstPageElement,
      this.lastPage,
      @JsonKey(name: '_lastPage') this.lastPageElement,
      this.pageCount,
      @JsonKey(name: '_pageCount') this.pageCountElement,
      this.copyright,
      @JsonKey(name: '_copyright') this.copyrightElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _language = language,
        super._();

  factory _$CitationPublicationFormImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationPublicationFormImplFromJson(json);

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
  final CitationPublishedIn? publishedIn;
  @override
  final CitationPeriodicRelease? periodicRelease;
  @override
  final FhirDateTime? articleDate;
  @override
  @JsonKey(name: '_articleDate')
  final PrimitiveElement? articleDateElement;
  @override
  final FhirDateTime? lastRevisionDate;
  @override
  @JsonKey(name: '_lastRevisionDate')
  final PrimitiveElement? lastRevisionDateElement;
  final List<CodeableConcept>? _language;
  @override
  List<CodeableConcept>? get language {
    final value = _language;
    if (value == null) return null;
    if (_language is EqualUnmodifiableListView) return _language;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? accessionNumber;
  @override
  @JsonKey(name: '_accessionNumber')
  final PrimitiveElement? accessionNumberElement;
  @override
  final String? pageString;
  @override
  @JsonKey(name: '_pageString')
  final PrimitiveElement? pageStringElement;
  @override
  final String? firstPage;
  @override
  @JsonKey(name: '_firstPage')
  final PrimitiveElement? firstPageElement;
  @override
  final String? lastPage;
  @override
  @JsonKey(name: '_lastPage')
  final PrimitiveElement? lastPageElement;
  @override
  final String? pageCount;
  @override
  @JsonKey(name: '_pageCount')
  final PrimitiveElement? pageCountElement;
  @override
  final FhirMarkdown? copyright;
  @override
  @JsonKey(name: '_copyright')
  final PrimitiveElement? copyrightElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationPublicationFormImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.publishedIn, publishedIn) ||
                other.publishedIn == publishedIn) &&
            (identical(other.periodicRelease, periodicRelease) ||
                other.periodicRelease == periodicRelease) &&
            (identical(other.articleDate, articleDate) ||
                other.articleDate == articleDate) &&
            (identical(other.articleDateElement, articleDateElement) ||
                other.articleDateElement == articleDateElement) &&
            (identical(other.lastRevisionDate, lastRevisionDate) ||
                other.lastRevisionDate == lastRevisionDate) &&
            (identical(
                    other.lastRevisionDateElement, lastRevisionDateElement) ||
                other.lastRevisionDateElement == lastRevisionDateElement) &&
            const DeepCollectionEquality().equals(other._language, _language) &&
            (identical(other.accessionNumber, accessionNumber) ||
                other.accessionNumber == accessionNumber) &&
            (identical(other.accessionNumberElement, accessionNumberElement) ||
                other.accessionNumberElement == accessionNumberElement) &&
            (identical(other.pageString, pageString) ||
                other.pageString == pageString) &&
            (identical(other.pageStringElement, pageStringElement) ||
                other.pageStringElement == pageStringElement) &&
            (identical(other.firstPage, firstPage) ||
                other.firstPage == firstPage) &&
            (identical(other.firstPageElement, firstPageElement) ||
                other.firstPageElement == firstPageElement) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.lastPageElement, lastPageElement) ||
                other.lastPageElement == lastPageElement) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.pageCountElement, pageCountElement) ||
                other.pageCountElement == pageCountElement) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright) &&
            (identical(other.copyrightElement, copyrightElement) ||
                other.copyrightElement == copyrightElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        publishedIn,
        periodicRelease,
        articleDate,
        articleDateElement,
        lastRevisionDate,
        lastRevisionDateElement,
        const DeepCollectionEquality().hash(_language),
        accessionNumber,
        accessionNumberElement,
        pageString,
        pageStringElement,
        firstPage,
        firstPageElement,
        lastPage,
        lastPageElement,
        pageCount,
        pageCountElement,
        copyright,
        copyrightElement
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationPublicationFormImplCopyWith<_$CitationPublicationFormImpl>
      get copyWith => __$$CitationPublicationFormImplCopyWithImpl<
          _$CitationPublicationFormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationPublicationFormImplToJson(
      this,
    );
  }
}

abstract class _CitationPublicationForm extends CitationPublicationForm {
  factory _CitationPublicationForm(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CitationPublishedIn? publishedIn,
      final CitationPeriodicRelease? periodicRelease,
      final FhirDateTime? articleDate,
      @JsonKey(name: '_articleDate') final PrimitiveElement? articleDateElement,
      final FhirDateTime? lastRevisionDate,
      @JsonKey(name: '_lastRevisionDate')
      final PrimitiveElement? lastRevisionDateElement,
      final List<CodeableConcept>? language,
      final String? accessionNumber,
      @JsonKey(name: '_accessionNumber')
      final PrimitiveElement? accessionNumberElement,
      final String? pageString,
      @JsonKey(name: '_pageString') final PrimitiveElement? pageStringElement,
      final String? firstPage,
      @JsonKey(name: '_firstPage') final PrimitiveElement? firstPageElement,
      final String? lastPage,
      @JsonKey(name: '_lastPage') final PrimitiveElement? lastPageElement,
      final String? pageCount,
      @JsonKey(name: '_pageCount') final PrimitiveElement? pageCountElement,
      final FhirMarkdown? copyright,
      @JsonKey(name: '_copyright')
      final PrimitiveElement?
          copyrightElement}) = _$CitationPublicationFormImpl;
  _CitationPublicationForm._() : super._();

  factory _CitationPublicationForm.fromJson(Map<String, dynamic> json) =
      _$CitationPublicationFormImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CitationPublishedIn? get publishedIn;
  @override
  CitationPeriodicRelease? get periodicRelease;
  @override
  FhirDateTime? get articleDate;
  @override
  @JsonKey(name: '_articleDate')
  PrimitiveElement? get articleDateElement;
  @override
  FhirDateTime? get lastRevisionDate;
  @override
  @JsonKey(name: '_lastRevisionDate')
  PrimitiveElement? get lastRevisionDateElement;
  @override
  List<CodeableConcept>? get language;
  @override
  String? get accessionNumber;
  @override
  @JsonKey(name: '_accessionNumber')
  PrimitiveElement? get accessionNumberElement;
  @override
  String? get pageString;
  @override
  @JsonKey(name: '_pageString')
  PrimitiveElement? get pageStringElement;
  @override
  String? get firstPage;
  @override
  @JsonKey(name: '_firstPage')
  PrimitiveElement? get firstPageElement;
  @override
  String? get lastPage;
  @override
  @JsonKey(name: '_lastPage')
  PrimitiveElement? get lastPageElement;
  @override
  String? get pageCount;
  @override
  @JsonKey(name: '_pageCount')
  PrimitiveElement? get pageCountElement;
  @override
  FhirMarkdown? get copyright;
  @override
  @JsonKey(name: '_copyright')
  PrimitiveElement? get copyrightElement;
  @override
  @JsonKey(ignore: true)
  _$$CitationPublicationFormImplCopyWith<_$CitationPublicationFormImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CitationPublishedIn _$CitationPublishedInFromJson(Map<String, dynamic> json) {
  return _CitationPublishedIn.fromJson(json);
}

/// @nodoc
mixin _$CitationPublishedIn {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get type => throw _privateConstructorUsedError;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement => throw _privateConstructorUsedError;
  Reference? get publisher => throw _privateConstructorUsedError;
  String? get publisherLocation => throw _privateConstructorUsedError;
  @JsonKey(name: '_publisherLocation')
  PrimitiveElement? get publisherLocationElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationPublishedInCopyWith<CitationPublishedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationPublishedInCopyWith<$Res> {
  factory $CitationPublishedInCopyWith(
          CitationPublishedIn value, $Res Function(CitationPublishedIn) then) =
      _$CitationPublishedInCopyWithImpl<$Res, CitationPublishedIn>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      List<Identifier>? identifier,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      Reference? publisher,
      String? publisherLocation,
      @JsonKey(name: '_publisherLocation')
      PrimitiveElement? publisherLocationElement});

  $CodeableConceptCopyWith<$Res>? get type;
  $ReferenceCopyWith<$Res>? get publisher;
}

/// @nodoc
class _$CitationPublishedInCopyWithImpl<$Res, $Val extends CitationPublishedIn>
    implements $CitationPublishedInCopyWith<$Res> {
  _$CitationPublishedInCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? identifier = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? publisher = freezed,
    Object? publisherLocation = freezed,
    Object? publisherLocationElement = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Reference?,
      publisherLocation: freezed == publisherLocation
          ? _value.publisherLocation
          : publisherLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      publisherLocationElement: freezed == publisherLocationElement
          ? _value.publisherLocationElement
          : publisherLocationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
  $ReferenceCopyWith<$Res>? get publisher {
    if (_value.publisher == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.publisher!, (value) {
      return _then(_value.copyWith(publisher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationPublishedInImplCopyWith<$Res>
    implements $CitationPublishedInCopyWith<$Res> {
  factory _$$CitationPublishedInImplCopyWith(_$CitationPublishedInImpl value,
          $Res Function(_$CitationPublishedInImpl) then) =
      __$$CitationPublishedInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      List<Identifier>? identifier,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      Reference? publisher,
      String? publisherLocation,
      @JsonKey(name: '_publisherLocation')
      PrimitiveElement? publisherLocationElement});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $ReferenceCopyWith<$Res>? get publisher;
}

/// @nodoc
class __$$CitationPublishedInImplCopyWithImpl<$Res>
    extends _$CitationPublishedInCopyWithImpl<$Res, _$CitationPublishedInImpl>
    implements _$$CitationPublishedInImplCopyWith<$Res> {
  __$$CitationPublishedInImplCopyWithImpl(_$CitationPublishedInImpl _value,
      $Res Function(_$CitationPublishedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? identifier = freezed,
    Object? title = freezed,
    Object? titleElement = freezed,
    Object? publisher = freezed,
    Object? publisherLocation = freezed,
    Object? publisherLocationElement = freezed,
  }) {
    return _then(_$CitationPublishedInImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      titleElement: freezed == titleElement
          ? _value.titleElement
          : titleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Reference?,
      publisherLocation: freezed == publisherLocation
          ? _value.publisherLocation
          : publisherLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      publisherLocationElement: freezed == publisherLocationElement
          ? _value.publisherLocationElement
          : publisherLocationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationPublishedInImpl extends _CitationPublishedIn {
  _$CitationPublishedInImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      final List<Identifier>? identifier,
      this.title,
      @JsonKey(name: '_title') this.titleElement,
      this.publisher,
      this.publisherLocation,
      @JsonKey(name: '_publisherLocation') this.publisherLocationElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        super._();

  factory _$CitationPublishedInImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationPublishedInImplFromJson(json);

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
  final CodeableConcept? type;
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
  final String? title;
  @override
  @JsonKey(name: '_title')
  final PrimitiveElement? titleElement;
  @override
  final Reference? publisher;
  @override
  final String? publisherLocation;
  @override
  @JsonKey(name: '_publisherLocation')
  final PrimitiveElement? publisherLocationElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationPublishedInImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleElement, titleElement) ||
                other.titleElement == titleElement) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publisherLocation, publisherLocation) ||
                other.publisherLocation == publisherLocation) &&
            (identical(
                    other.publisherLocationElement, publisherLocationElement) ||
                other.publisherLocationElement == publisherLocationElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      const DeepCollectionEquality().hash(_identifier),
      title,
      titleElement,
      publisher,
      publisherLocation,
      publisherLocationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationPublishedInImplCopyWith<_$CitationPublishedInImpl> get copyWith =>
      __$$CitationPublishedInImplCopyWithImpl<_$CitationPublishedInImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationPublishedInImplToJson(
      this,
    );
  }
}

abstract class _CitationPublishedIn extends CitationPublishedIn {
  factory _CitationPublishedIn(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? type,
          final List<Identifier>? identifier,
          final String? title,
          @JsonKey(name: '_title') final PrimitiveElement? titleElement,
          final Reference? publisher,
          final String? publisherLocation,
          @JsonKey(name: '_publisherLocation')
          final PrimitiveElement? publisherLocationElement}) =
      _$CitationPublishedInImpl;
  _CitationPublishedIn._() : super._();

  factory _CitationPublishedIn.fromJson(Map<String, dynamic> json) =
      _$CitationPublishedInImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get type;
  @override
  List<Identifier>? get identifier;
  @override
  String? get title;
  @override
  @JsonKey(name: '_title')
  PrimitiveElement? get titleElement;
  @override
  Reference? get publisher;
  @override
  String? get publisherLocation;
  @override
  @JsonKey(name: '_publisherLocation')
  PrimitiveElement? get publisherLocationElement;
  @override
  @JsonKey(ignore: true)
  _$$CitationPublishedInImplCopyWith<_$CitationPublishedInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationPeriodicRelease _$CitationPeriodicReleaseFromJson(
    Map<String, dynamic> json) {
  return _CitationPeriodicRelease.fromJson(json);
}

/// @nodoc
mixin _$CitationPeriodicRelease {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get citedMedium => throw _privateConstructorUsedError;
  String? get volume => throw _privateConstructorUsedError;
  @JsonKey(name: '_volume')
  PrimitiveElement? get volumeElement => throw _privateConstructorUsedError;
  String? get issue => throw _privateConstructorUsedError;
  @JsonKey(name: '_issue')
  PrimitiveElement? get issueElement => throw _privateConstructorUsedError;
  CitationDateOfPublication? get dateOfPublication =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationPeriodicReleaseCopyWith<CitationPeriodicRelease> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationPeriodicReleaseCopyWith<$Res> {
  factory $CitationPeriodicReleaseCopyWith(CitationPeriodicRelease value,
          $Res Function(CitationPeriodicRelease) then) =
      _$CitationPeriodicReleaseCopyWithImpl<$Res, CitationPeriodicRelease>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? citedMedium,
      String? volume,
      @JsonKey(name: '_volume') PrimitiveElement? volumeElement,
      String? issue,
      @JsonKey(name: '_issue') PrimitiveElement? issueElement,
      CitationDateOfPublication? dateOfPublication});

  $CodeableConceptCopyWith<$Res>? get citedMedium;
  $CitationDateOfPublicationCopyWith<$Res>? get dateOfPublication;
}

/// @nodoc
class _$CitationPeriodicReleaseCopyWithImpl<$Res,
        $Val extends CitationPeriodicRelease>
    implements $CitationPeriodicReleaseCopyWith<$Res> {
  _$CitationPeriodicReleaseCopyWithImpl(this._value, this._then);

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
    Object? citedMedium = freezed,
    Object? volume = freezed,
    Object? volumeElement = freezed,
    Object? issue = freezed,
    Object? issueElement = freezed,
    Object? dateOfPublication = freezed,
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
      citedMedium: freezed == citedMedium
          ? _value.citedMedium
          : citedMedium // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String?,
      volumeElement: freezed == volumeElement
          ? _value.volumeElement
          : volumeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      issue: freezed == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String?,
      issueElement: freezed == issueElement
          ? _value.issueElement
          : issueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      dateOfPublication: freezed == dateOfPublication
          ? _value.dateOfPublication
          : dateOfPublication // ignore: cast_nullable_to_non_nullable
              as CitationDateOfPublication?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get citedMedium {
    if (_value.citedMedium == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.citedMedium!, (value) {
      return _then(_value.copyWith(citedMedium: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CitationDateOfPublicationCopyWith<$Res>? get dateOfPublication {
    if (_value.dateOfPublication == null) {
      return null;
    }

    return $CitationDateOfPublicationCopyWith<$Res>(_value.dateOfPublication!,
        (value) {
      return _then(_value.copyWith(dateOfPublication: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationPeriodicReleaseImplCopyWith<$Res>
    implements $CitationPeriodicReleaseCopyWith<$Res> {
  factory _$$CitationPeriodicReleaseImplCopyWith(
          _$CitationPeriodicReleaseImpl value,
          $Res Function(_$CitationPeriodicReleaseImpl) then) =
      __$$CitationPeriodicReleaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? citedMedium,
      String? volume,
      @JsonKey(name: '_volume') PrimitiveElement? volumeElement,
      String? issue,
      @JsonKey(name: '_issue') PrimitiveElement? issueElement,
      CitationDateOfPublication? dateOfPublication});

  @override
  $CodeableConceptCopyWith<$Res>? get citedMedium;
  @override
  $CitationDateOfPublicationCopyWith<$Res>? get dateOfPublication;
}

/// @nodoc
class __$$CitationPeriodicReleaseImplCopyWithImpl<$Res>
    extends _$CitationPeriodicReleaseCopyWithImpl<$Res,
        _$CitationPeriodicReleaseImpl>
    implements _$$CitationPeriodicReleaseImplCopyWith<$Res> {
  __$$CitationPeriodicReleaseImplCopyWithImpl(
      _$CitationPeriodicReleaseImpl _value,
      $Res Function(_$CitationPeriodicReleaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? citedMedium = freezed,
    Object? volume = freezed,
    Object? volumeElement = freezed,
    Object? issue = freezed,
    Object? issueElement = freezed,
    Object? dateOfPublication = freezed,
  }) {
    return _then(_$CitationPeriodicReleaseImpl(
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
      citedMedium: freezed == citedMedium
          ? _value.citedMedium
          : citedMedium // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      volume: freezed == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as String?,
      volumeElement: freezed == volumeElement
          ? _value.volumeElement
          : volumeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      issue: freezed == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as String?,
      issueElement: freezed == issueElement
          ? _value.issueElement
          : issueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      dateOfPublication: freezed == dateOfPublication
          ? _value.dateOfPublication
          : dateOfPublication // ignore: cast_nullable_to_non_nullable
              as CitationDateOfPublication?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationPeriodicReleaseImpl extends _CitationPeriodicRelease {
  _$CitationPeriodicReleaseImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.citedMedium,
      this.volume,
      @JsonKey(name: '_volume') this.volumeElement,
      this.issue,
      @JsonKey(name: '_issue') this.issueElement,
      this.dateOfPublication})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CitationPeriodicReleaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationPeriodicReleaseImplFromJson(json);

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
  final CodeableConcept? citedMedium;
  @override
  final String? volume;
  @override
  @JsonKey(name: '_volume')
  final PrimitiveElement? volumeElement;
  @override
  final String? issue;
  @override
  @JsonKey(name: '_issue')
  final PrimitiveElement? issueElement;
  @override
  final CitationDateOfPublication? dateOfPublication;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationPeriodicReleaseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.citedMedium, citedMedium) ||
                other.citedMedium == citedMedium) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.volumeElement, volumeElement) ||
                other.volumeElement == volumeElement) &&
            (identical(other.issue, issue) || other.issue == issue) &&
            (identical(other.issueElement, issueElement) ||
                other.issueElement == issueElement) &&
            (identical(other.dateOfPublication, dateOfPublication) ||
                other.dateOfPublication == dateOfPublication));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      citedMedium,
      volume,
      volumeElement,
      issue,
      issueElement,
      dateOfPublication);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationPeriodicReleaseImplCopyWith<_$CitationPeriodicReleaseImpl>
      get copyWith => __$$CitationPeriodicReleaseImplCopyWithImpl<
          _$CitationPeriodicReleaseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationPeriodicReleaseImplToJson(
      this,
    );
  }
}

abstract class _CitationPeriodicRelease extends CitationPeriodicRelease {
  factory _CitationPeriodicRelease(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? citedMedium,
          final String? volume,
          @JsonKey(name: '_volume') final PrimitiveElement? volumeElement,
          final String? issue,
          @JsonKey(name: '_issue') final PrimitiveElement? issueElement,
          final CitationDateOfPublication? dateOfPublication}) =
      _$CitationPeriodicReleaseImpl;
  _CitationPeriodicRelease._() : super._();

  factory _CitationPeriodicRelease.fromJson(Map<String, dynamic> json) =
      _$CitationPeriodicReleaseImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get citedMedium;
  @override
  String? get volume;
  @override
  @JsonKey(name: '_volume')
  PrimitiveElement? get volumeElement;
  @override
  String? get issue;
  @override
  @JsonKey(name: '_issue')
  PrimitiveElement? get issueElement;
  @override
  CitationDateOfPublication? get dateOfPublication;
  @override
  @JsonKey(ignore: true)
  _$$CitationPeriodicReleaseImplCopyWith<_$CitationPeriodicReleaseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CitationDateOfPublication _$CitationDateOfPublicationFromJson(
    Map<String, dynamic> json) {
  return _CitationDateOfPublication.fromJson(json);
}

/// @nodoc
mixin _$CitationDateOfPublication {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  FhirDate? get date => throw _privateConstructorUsedError;
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;
  String? get year => throw _privateConstructorUsedError;
  @JsonKey(name: '_year')
  PrimitiveElement? get yearElement => throw _privateConstructorUsedError;
  String? get month => throw _privateConstructorUsedError;
  @JsonKey(name: '_month')
  PrimitiveElement? get monthElement => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: '_day')
  PrimitiveElement? get dayElement => throw _privateConstructorUsedError;
  String? get season => throw _privateConstructorUsedError;
  @JsonKey(name: '_season')
  PrimitiveElement? get seasonElement => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationDateOfPublicationCopyWith<CitationDateOfPublication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationDateOfPublicationCopyWith<$Res> {
  factory $CitationDateOfPublicationCopyWith(CitationDateOfPublication value,
          $Res Function(CitationDateOfPublication) then) =
      _$CitationDateOfPublicationCopyWithImpl<$Res, CitationDateOfPublication>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirDate? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? year,
      @JsonKey(name: '_year') PrimitiveElement? yearElement,
      String? month,
      @JsonKey(name: '_month') PrimitiveElement? monthElement,
      String? day,
      @JsonKey(name: '_day') PrimitiveElement? dayElement,
      String? season,
      @JsonKey(name: '_season') PrimitiveElement? seasonElement,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement});
}

/// @nodoc
class _$CitationDateOfPublicationCopyWithImpl<$Res,
        $Val extends CitationDateOfPublication>
    implements $CitationDateOfPublicationCopyWith<$Res> {
  _$CitationDateOfPublicationCopyWithImpl(this._value, this._then);

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
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? year = freezed,
    Object? yearElement = freezed,
    Object? month = freezed,
    Object? monthElement = freezed,
    Object? day = freezed,
    Object? dayElement = freezed,
    Object? season = freezed,
    Object? seasonElement = freezed,
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
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      yearElement: freezed == yearElement
          ? _value.yearElement
          : yearElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      monthElement: freezed == monthElement
          ? _value.monthElement
          : monthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      dayElement: freezed == dayElement
          ? _value.dayElement
          : dayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonElement: freezed == seasonElement
          ? _value.seasonElement
          : seasonElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CitationDateOfPublicationImplCopyWith<$Res>
    implements $CitationDateOfPublicationCopyWith<$Res> {
  factory _$$CitationDateOfPublicationImplCopyWith(
          _$CitationDateOfPublicationImpl value,
          $Res Function(_$CitationDateOfPublicationImpl) then) =
      __$$CitationDateOfPublicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirDate? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? year,
      @JsonKey(name: '_year') PrimitiveElement? yearElement,
      String? month,
      @JsonKey(name: '_month') PrimitiveElement? monthElement,
      String? day,
      @JsonKey(name: '_day') PrimitiveElement? dayElement,
      String? season,
      @JsonKey(name: '_season') PrimitiveElement? seasonElement,
      String? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement});
}

/// @nodoc
class __$$CitationDateOfPublicationImplCopyWithImpl<$Res>
    extends _$CitationDateOfPublicationCopyWithImpl<$Res,
        _$CitationDateOfPublicationImpl>
    implements _$$CitationDateOfPublicationImplCopyWith<$Res> {
  __$$CitationDateOfPublicationImplCopyWithImpl(
      _$CitationDateOfPublicationImpl _value,
      $Res Function(_$CitationDateOfPublicationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? year = freezed,
    Object? yearElement = freezed,
    Object? month = freezed,
    Object? monthElement = freezed,
    Object? day = freezed,
    Object? dayElement = freezed,
    Object? season = freezed,
    Object? seasonElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
  }) {
    return _then(_$CitationDateOfPublicationImpl(
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      yearElement: freezed == yearElement
          ? _value.yearElement
          : yearElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as String?,
      monthElement: freezed == monthElement
          ? _value.monthElement
          : monthElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      dayElement: freezed == dayElement
          ? _value.dayElement
          : dayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      season: freezed == season
          ? _value.season
          : season // ignore: cast_nullable_to_non_nullable
              as String?,
      seasonElement: freezed == seasonElement
          ? _value.seasonElement
          : seasonElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationDateOfPublicationImpl extends _CitationDateOfPublication {
  _$CitationDateOfPublicationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.year,
      @JsonKey(name: '_year') this.yearElement,
      this.month,
      @JsonKey(name: '_month') this.monthElement,
      this.day,
      @JsonKey(name: '_day') this.dayElement,
      this.season,
      @JsonKey(name: '_season') this.seasonElement,
      this.text,
      @JsonKey(name: '_text') this.textElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CitationDateOfPublicationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationDateOfPublicationImplFromJson(json);

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
  final FhirDate? date;
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;
  @override
  final String? year;
  @override
  @JsonKey(name: '_year')
  final PrimitiveElement? yearElement;
  @override
  final String? month;
  @override
  @JsonKey(name: '_month')
  final PrimitiveElement? monthElement;
  @override
  final String? day;
  @override
  @JsonKey(name: '_day')
  final PrimitiveElement? dayElement;
  @override
  final String? season;
  @override
  @JsonKey(name: '_season')
  final PrimitiveElement? seasonElement;
  @override
  final String? text;
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationDateOfPublicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.yearElement, yearElement) ||
                other.yearElement == yearElement) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.monthElement, monthElement) ||
                other.monthElement == monthElement) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.dayElement, dayElement) ||
                other.dayElement == dayElement) &&
            (identical(other.season, season) || other.season == season) &&
            (identical(other.seasonElement, seasonElement) ||
                other.seasonElement == seasonElement) &&
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
      const DeepCollectionEquality().hash(_modifierExtension),
      date,
      dateElement,
      year,
      yearElement,
      month,
      monthElement,
      day,
      dayElement,
      season,
      seasonElement,
      text,
      textElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationDateOfPublicationImplCopyWith<_$CitationDateOfPublicationImpl>
      get copyWith => __$$CitationDateOfPublicationImplCopyWithImpl<
          _$CitationDateOfPublicationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationDateOfPublicationImplToJson(
      this,
    );
  }
}

abstract class _CitationDateOfPublication extends CitationDateOfPublication {
  factory _CitationDateOfPublication(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final FhirDate? date,
          @JsonKey(name: '_date') final PrimitiveElement? dateElement,
          final String? year,
          @JsonKey(name: '_year') final PrimitiveElement? yearElement,
          final String? month,
          @JsonKey(name: '_month') final PrimitiveElement? monthElement,
          final String? day,
          @JsonKey(name: '_day') final PrimitiveElement? dayElement,
          final String? season,
          @JsonKey(name: '_season') final PrimitiveElement? seasonElement,
          final String? text,
          @JsonKey(name: '_text') final PrimitiveElement? textElement}) =
      _$CitationDateOfPublicationImpl;
  _CitationDateOfPublication._() : super._();

  factory _CitationDateOfPublication.fromJson(Map<String, dynamic> json) =
      _$CitationDateOfPublicationImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  FhirDate? get date;
  @override
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override
  String? get year;
  @override
  @JsonKey(name: '_year')
  PrimitiveElement? get yearElement;
  @override
  String? get month;
  @override
  @JsonKey(name: '_month')
  PrimitiveElement? get monthElement;
  @override
  String? get day;
  @override
  @JsonKey(name: '_day')
  PrimitiveElement? get dayElement;
  @override
  String? get season;
  @override
  @JsonKey(name: '_season')
  PrimitiveElement? get seasonElement;
  @override
  String? get text;
  @override
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;
  @override
  @JsonKey(ignore: true)
  _$$CitationDateOfPublicationImplCopyWith<_$CitationDateOfPublicationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CitationWebLocation _$CitationWebLocationFromJson(Map<String, dynamic> json) {
  return _CitationWebLocation.fromJson(json);
}

/// @nodoc
mixin _$CitationWebLocation {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get type => throw _privateConstructorUsedError;
  FhirUri? get url => throw _privateConstructorUsedError;
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationWebLocationCopyWith<CitationWebLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationWebLocationCopyWith<$Res> {
  factory $CitationWebLocationCopyWith(
          CitationWebLocation value, $Res Function(CitationWebLocation) then) =
      _$CitationWebLocationCopyWithImpl<$Res, CitationWebLocation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement});

  $CodeableConceptCopyWith<$Res>? get type;
}

/// @nodoc
class _$CitationWebLocationCopyWithImpl<$Res, $Val extends CitationWebLocation>
    implements $CitationWebLocationCopyWith<$Res> {
  _$CitationWebLocationCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
}

/// @nodoc
abstract class _$$CitationWebLocationImplCopyWith<$Res>
    implements $CitationWebLocationCopyWith<$Res> {
  factory _$$CitationWebLocationImplCopyWith(_$CitationWebLocationImpl value,
          $Res Function(_$CitationWebLocationImpl) then) =
      __$$CitationWebLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      FhirUri? url,
      @JsonKey(name: '_url') PrimitiveElement? urlElement});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
}

/// @nodoc
class __$$CitationWebLocationImplCopyWithImpl<$Res>
    extends _$CitationWebLocationCopyWithImpl<$Res, _$CitationWebLocationImpl>
    implements _$$CitationWebLocationImplCopyWith<$Res> {
  __$$CitationWebLocationImplCopyWithImpl(_$CitationWebLocationImpl _value,
      $Res Function(_$CitationWebLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? url = freezed,
    Object? urlElement = freezed,
  }) {
    return _then(_$CitationWebLocationImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      urlElement: freezed == urlElement
          ? _value.urlElement
          : urlElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationWebLocationImpl extends _CitationWebLocation {
  _$CitationWebLocationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.url,
      @JsonKey(name: '_url') this.urlElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CitationWebLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationWebLocationImplFromJson(json);

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
  final CodeableConcept? type;
  @override
  final FhirUri? url;
  @override
  @JsonKey(name: '_url')
  final PrimitiveElement? urlElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationWebLocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlElement, urlElement) ||
                other.urlElement == urlElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      url,
      urlElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationWebLocationImplCopyWith<_$CitationWebLocationImpl> get copyWith =>
      __$$CitationWebLocationImplCopyWithImpl<_$CitationWebLocationImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationWebLocationImplToJson(
      this,
    );
  }
}

abstract class _CitationWebLocation extends CitationWebLocation {
  factory _CitationWebLocation(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? type,
          final FhirUri? url,
          @JsonKey(name: '_url') final PrimitiveElement? urlElement}) =
      _$CitationWebLocationImpl;
  _CitationWebLocation._() : super._();

  factory _CitationWebLocation.fromJson(Map<String, dynamic> json) =
      _$CitationWebLocationImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get type;
  @override
  FhirUri? get url;
  @override
  @JsonKey(name: '_url')
  PrimitiveElement? get urlElement;
  @override
  @JsonKey(ignore: true)
  _$$CitationWebLocationImplCopyWith<_$CitationWebLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationClassification1 _$CitationClassification1FromJson(
    Map<String, dynamic> json) {
  return _CitationClassification1.fromJson(json);
}

/// @nodoc
mixin _$CitationClassification1 {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get type => throw _privateConstructorUsedError;
  List<CodeableConcept>? get classifier => throw _privateConstructorUsedError;
  CitationWhoClassified? get whoClassified =>
      throw _privateConstructorUsedError;
  List<Reference>? get artifactAssessment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationClassification1CopyWith<CitationClassification1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationClassification1CopyWith<$Res> {
  factory $CitationClassification1CopyWith(CitationClassification1 value,
          $Res Function(CitationClassification1) then) =
      _$CitationClassification1CopyWithImpl<$Res, CitationClassification1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      List<CodeableConcept>? classifier,
      CitationWhoClassified? whoClassified,
      List<Reference>? artifactAssessment});

  $CodeableConceptCopyWith<$Res>? get type;
  $CitationWhoClassifiedCopyWith<$Res>? get whoClassified;
}

/// @nodoc
class _$CitationClassification1CopyWithImpl<$Res,
        $Val extends CitationClassification1>
    implements $CitationClassification1CopyWith<$Res> {
  _$CitationClassification1CopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? classifier = freezed,
    Object? whoClassified = freezed,
    Object? artifactAssessment = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      classifier: freezed == classifier
          ? _value.classifier
          : classifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      whoClassified: freezed == whoClassified
          ? _value.whoClassified
          : whoClassified // ignore: cast_nullable_to_non_nullable
              as CitationWhoClassified?,
      artifactAssessment: freezed == artifactAssessment
          ? _value.artifactAssessment
          : artifactAssessment // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
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
  $CitationWhoClassifiedCopyWith<$Res>? get whoClassified {
    if (_value.whoClassified == null) {
      return null;
    }

    return $CitationWhoClassifiedCopyWith<$Res>(_value.whoClassified!, (value) {
      return _then(_value.copyWith(whoClassified: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationClassification1ImplCopyWith<$Res>
    implements $CitationClassification1CopyWith<$Res> {
  factory _$$CitationClassification1ImplCopyWith(
          _$CitationClassification1Impl value,
          $Res Function(_$CitationClassification1Impl) then) =
      __$$CitationClassification1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      List<CodeableConcept>? classifier,
      CitationWhoClassified? whoClassified,
      List<Reference>? artifactAssessment});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CitationWhoClassifiedCopyWith<$Res>? get whoClassified;
}

/// @nodoc
class __$$CitationClassification1ImplCopyWithImpl<$Res>
    extends _$CitationClassification1CopyWithImpl<$Res,
        _$CitationClassification1Impl>
    implements _$$CitationClassification1ImplCopyWith<$Res> {
  __$$CitationClassification1ImplCopyWithImpl(
      _$CitationClassification1Impl _value,
      $Res Function(_$CitationClassification1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? classifier = freezed,
    Object? whoClassified = freezed,
    Object? artifactAssessment = freezed,
  }) {
    return _then(_$CitationClassification1Impl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      classifier: freezed == classifier
          ? _value._classifier
          : classifier // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      whoClassified: freezed == whoClassified
          ? _value.whoClassified
          : whoClassified // ignore: cast_nullable_to_non_nullable
              as CitationWhoClassified?,
      artifactAssessment: freezed == artifactAssessment
          ? _value._artifactAssessment
          : artifactAssessment // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationClassification1Impl extends _CitationClassification1 {
  _$CitationClassification1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      final List<CodeableConcept>? classifier,
      this.whoClassified,
      final List<Reference>? artifactAssessment})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _classifier = classifier,
        _artifactAssessment = artifactAssessment,
        super._();

  factory _$CitationClassification1Impl.fromJson(Map<String, dynamic> json) =>
      _$$CitationClassification1ImplFromJson(json);

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
  final CodeableConcept? type;
  final List<CodeableConcept>? _classifier;
  @override
  List<CodeableConcept>? get classifier {
    final value = _classifier;
    if (value == null) return null;
    if (_classifier is EqualUnmodifiableListView) return _classifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CitationWhoClassified? whoClassified;
  final List<Reference>? _artifactAssessment;
  @override
  List<Reference>? get artifactAssessment {
    final value = _artifactAssessment;
    if (value == null) return null;
    if (_artifactAssessment is EqualUnmodifiableListView)
      return _artifactAssessment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationClassification1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._classifier, _classifier) &&
            (identical(other.whoClassified, whoClassified) ||
                other.whoClassified == whoClassified) &&
            const DeepCollectionEquality()
                .equals(other._artifactAssessment, _artifactAssessment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      const DeepCollectionEquality().hash(_classifier),
      whoClassified,
      const DeepCollectionEquality().hash(_artifactAssessment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationClassification1ImplCopyWith<_$CitationClassification1Impl>
      get copyWith => __$$CitationClassification1ImplCopyWithImpl<
          _$CitationClassification1Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationClassification1ImplToJson(
      this,
    );
  }
}

abstract class _CitationClassification1 extends CitationClassification1 {
  factory _CitationClassification1(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? type,
          final List<CodeableConcept>? classifier,
          final CitationWhoClassified? whoClassified,
          final List<Reference>? artifactAssessment}) =
      _$CitationClassification1Impl;
  _CitationClassification1._() : super._();

  factory _CitationClassification1.fromJson(Map<String, dynamic> json) =
      _$CitationClassification1Impl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get type;
  @override
  List<CodeableConcept>? get classifier;
  @override
  CitationWhoClassified? get whoClassified;
  @override
  List<Reference>? get artifactAssessment;
  @override
  @JsonKey(ignore: true)
  _$$CitationClassification1ImplCopyWith<_$CitationClassification1Impl>
      get copyWith => throw _privateConstructorUsedError;
}

CitationWhoClassified _$CitationWhoClassifiedFromJson(
    Map<String, dynamic> json) {
  return _CitationWhoClassified.fromJson(json);
}

/// @nodoc
mixin _$CitationWhoClassified {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  Reference? get person => throw _privateConstructorUsedError;
  Reference? get organization => throw _privateConstructorUsedError;
  Reference? get publisher => throw _privateConstructorUsedError;
  String? get classifierCopyright => throw _privateConstructorUsedError;
  @JsonKey(name: '_classifierCopyright')
  PrimitiveElement? get classifierCopyrightElement =>
      throw _privateConstructorUsedError;
  FhirBoolean? get freeToShare => throw _privateConstructorUsedError;
  @JsonKey(name: '_freeToShare')
  PrimitiveElement? get freeToShareElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationWhoClassifiedCopyWith<CitationWhoClassified> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationWhoClassifiedCopyWith<$Res> {
  factory $CitationWhoClassifiedCopyWith(CitationWhoClassified value,
          $Res Function(CitationWhoClassified) then) =
      _$CitationWhoClassifiedCopyWithImpl<$Res, CitationWhoClassified>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference? person,
      Reference? organization,
      Reference? publisher,
      String? classifierCopyright,
      @JsonKey(name: '_classifierCopyright')
      PrimitiveElement? classifierCopyrightElement,
      FhirBoolean? freeToShare,
      @JsonKey(name: '_freeToShare') PrimitiveElement? freeToShareElement});

  $ReferenceCopyWith<$Res>? get person;
  $ReferenceCopyWith<$Res>? get organization;
  $ReferenceCopyWith<$Res>? get publisher;
}

/// @nodoc
class _$CitationWhoClassifiedCopyWithImpl<$Res,
        $Val extends CitationWhoClassified>
    implements $CitationWhoClassifiedCopyWith<$Res> {
  _$CitationWhoClassifiedCopyWithImpl(this._value, this._then);

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
    Object? person = freezed,
    Object? organization = freezed,
    Object? publisher = freezed,
    Object? classifierCopyright = freezed,
    Object? classifierCopyrightElement = freezed,
    Object? freeToShare = freezed,
    Object? freeToShareElement = freezed,
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
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Reference?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Reference?,
      classifierCopyright: freezed == classifierCopyright
          ? _value.classifierCopyright
          : classifierCopyright // ignore: cast_nullable_to_non_nullable
              as String?,
      classifierCopyrightElement: freezed == classifierCopyrightElement
          ? _value.classifierCopyrightElement
          : classifierCopyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      freeToShare: freezed == freeToShare
          ? _value.freeToShare
          : freeToShare // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      freeToShareElement: freezed == freeToShareElement
          ? _value.freeToShareElement
          : freeToShareElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get person {
    if (_value.person == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.person!, (value) {
      return _then(_value.copyWith(person: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get organization {
    if (_value.organization == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.organization!, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get publisher {
    if (_value.publisher == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.publisher!, (value) {
      return _then(_value.copyWith(publisher: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationWhoClassifiedImplCopyWith<$Res>
    implements $CitationWhoClassifiedCopyWith<$Res> {
  factory _$$CitationWhoClassifiedImplCopyWith(
          _$CitationWhoClassifiedImpl value,
          $Res Function(_$CitationWhoClassifiedImpl) then) =
      __$$CitationWhoClassifiedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference? person,
      Reference? organization,
      Reference? publisher,
      String? classifierCopyright,
      @JsonKey(name: '_classifierCopyright')
      PrimitiveElement? classifierCopyrightElement,
      FhirBoolean? freeToShare,
      @JsonKey(name: '_freeToShare') PrimitiveElement? freeToShareElement});

  @override
  $ReferenceCopyWith<$Res>? get person;
  @override
  $ReferenceCopyWith<$Res>? get organization;
  @override
  $ReferenceCopyWith<$Res>? get publisher;
}

/// @nodoc
class __$$CitationWhoClassifiedImplCopyWithImpl<$Res>
    extends _$CitationWhoClassifiedCopyWithImpl<$Res,
        _$CitationWhoClassifiedImpl>
    implements _$$CitationWhoClassifiedImplCopyWith<$Res> {
  __$$CitationWhoClassifiedImplCopyWithImpl(_$CitationWhoClassifiedImpl _value,
      $Res Function(_$CitationWhoClassifiedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? person = freezed,
    Object? organization = freezed,
    Object? publisher = freezed,
    Object? classifierCopyright = freezed,
    Object? classifierCopyrightElement = freezed,
    Object? freeToShare = freezed,
    Object? freeToShareElement = freezed,
  }) {
    return _then(_$CitationWhoClassifiedImpl(
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
      person: freezed == person
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Reference?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Reference?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as Reference?,
      classifierCopyright: freezed == classifierCopyright
          ? _value.classifierCopyright
          : classifierCopyright // ignore: cast_nullable_to_non_nullable
              as String?,
      classifierCopyrightElement: freezed == classifierCopyrightElement
          ? _value.classifierCopyrightElement
          : classifierCopyrightElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      freeToShare: freezed == freeToShare
          ? _value.freeToShare
          : freeToShare // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      freeToShareElement: freezed == freeToShareElement
          ? _value.freeToShareElement
          : freeToShareElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationWhoClassifiedImpl extends _CitationWhoClassified {
  _$CitationWhoClassifiedImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.person,
      this.organization,
      this.publisher,
      this.classifierCopyright,
      @JsonKey(name: '_classifierCopyright') this.classifierCopyrightElement,
      this.freeToShare,
      @JsonKey(name: '_freeToShare') this.freeToShareElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CitationWhoClassifiedImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationWhoClassifiedImplFromJson(json);

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
  final Reference? person;
  @override
  final Reference? organization;
  @override
  final Reference? publisher;
  @override
  final String? classifierCopyright;
  @override
  @JsonKey(name: '_classifierCopyright')
  final PrimitiveElement? classifierCopyrightElement;
  @override
  final FhirBoolean? freeToShare;
  @override
  @JsonKey(name: '_freeToShare')
  final PrimitiveElement? freeToShareElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationWhoClassifiedImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.person, person) || other.person == person) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.classifierCopyright, classifierCopyright) ||
                other.classifierCopyright == classifierCopyright) &&
            (identical(other.classifierCopyrightElement,
                    classifierCopyrightElement) ||
                other.classifierCopyrightElement ==
                    classifierCopyrightElement) &&
            (identical(other.freeToShare, freeToShare) ||
                other.freeToShare == freeToShare) &&
            (identical(other.freeToShareElement, freeToShareElement) ||
                other.freeToShareElement == freeToShareElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      person,
      organization,
      publisher,
      classifierCopyright,
      classifierCopyrightElement,
      freeToShare,
      freeToShareElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationWhoClassifiedImplCopyWith<_$CitationWhoClassifiedImpl>
      get copyWith => __$$CitationWhoClassifiedImplCopyWithImpl<
          _$CitationWhoClassifiedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationWhoClassifiedImplToJson(
      this,
    );
  }
}

abstract class _CitationWhoClassified extends CitationWhoClassified {
  factory _CitationWhoClassified(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final Reference? person,
          final Reference? organization,
          final Reference? publisher,
          final String? classifierCopyright,
          @JsonKey(name: '_classifierCopyright')
          final PrimitiveElement? classifierCopyrightElement,
          final FhirBoolean? freeToShare,
          @JsonKey(name: '_freeToShare')
          final PrimitiveElement? freeToShareElement}) =
      _$CitationWhoClassifiedImpl;
  _CitationWhoClassified._() : super._();

  factory _CitationWhoClassified.fromJson(Map<String, dynamic> json) =
      _$CitationWhoClassifiedImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  Reference? get person;
  @override
  Reference? get organization;
  @override
  Reference? get publisher;
  @override
  String? get classifierCopyright;
  @override
  @JsonKey(name: '_classifierCopyright')
  PrimitiveElement? get classifierCopyrightElement;
  @override
  FhirBoolean? get freeToShare;
  @override
  @JsonKey(name: '_freeToShare')
  PrimitiveElement? get freeToShareElement;
  @override
  @JsonKey(ignore: true)
  _$$CitationWhoClassifiedImplCopyWith<_$CitationWhoClassifiedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CitationContributorship _$CitationContributorshipFromJson(
    Map<String, dynamic> json) {
  return _CitationContributorship.fromJson(json);
}

/// @nodoc
mixin _$CitationContributorship {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  FhirBoolean? get complete => throw _privateConstructorUsedError;
  @JsonKey(name: '_complete')
  PrimitiveElement? get completeElement => throw _privateConstructorUsedError;
  List<CitationEntry>? get entry => throw _privateConstructorUsedError;
  List<CitationSummary1>? get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationContributorshipCopyWith<CitationContributorship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationContributorshipCopyWith<$Res> {
  factory $CitationContributorshipCopyWith(CitationContributorship value,
          $Res Function(CitationContributorship) then) =
      _$CitationContributorshipCopyWithImpl<$Res, CitationContributorship>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? complete,
      @JsonKey(name: '_complete') PrimitiveElement? completeElement,
      List<CitationEntry>? entry,
      List<CitationSummary1>? summary});
}

/// @nodoc
class _$CitationContributorshipCopyWithImpl<$Res,
        $Val extends CitationContributorship>
    implements $CitationContributorshipCopyWith<$Res> {
  _$CitationContributorshipCopyWithImpl(this._value, this._then);

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
    Object? complete = freezed,
    Object? completeElement = freezed,
    Object? entry = freezed,
    Object? summary = freezed,
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
      complete: freezed == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      completeElement: freezed == completeElement
          ? _value.completeElement
          : completeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      entry: freezed == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<CitationEntry>?,
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as List<CitationSummary1>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CitationContributorshipImplCopyWith<$Res>
    implements $CitationContributorshipCopyWith<$Res> {
  factory _$$CitationContributorshipImplCopyWith(
          _$CitationContributorshipImpl value,
          $Res Function(_$CitationContributorshipImpl) then) =
      __$$CitationContributorshipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? complete,
      @JsonKey(name: '_complete') PrimitiveElement? completeElement,
      List<CitationEntry>? entry,
      List<CitationSummary1>? summary});
}

/// @nodoc
class __$$CitationContributorshipImplCopyWithImpl<$Res>
    extends _$CitationContributorshipCopyWithImpl<$Res,
        _$CitationContributorshipImpl>
    implements _$$CitationContributorshipImplCopyWith<$Res> {
  __$$CitationContributorshipImplCopyWithImpl(
      _$CitationContributorshipImpl _value,
      $Res Function(_$CitationContributorshipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? complete = freezed,
    Object? completeElement = freezed,
    Object? entry = freezed,
    Object? summary = freezed,
  }) {
    return _then(_$CitationContributorshipImpl(
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
      complete: freezed == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      completeElement: freezed == completeElement
          ? _value.completeElement
          : completeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      entry: freezed == entry
          ? _value._entry
          : entry // ignore: cast_nullable_to_non_nullable
              as List<CitationEntry>?,
      summary: freezed == summary
          ? _value._summary
          : summary // ignore: cast_nullable_to_non_nullable
              as List<CitationSummary1>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationContributorshipImpl extends _CitationContributorship {
  _$CitationContributorshipImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.complete,
      @JsonKey(name: '_complete') this.completeElement,
      final List<CitationEntry>? entry,
      final List<CitationSummary1>? summary})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _entry = entry,
        _summary = summary,
        super._();

  factory _$CitationContributorshipImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationContributorshipImplFromJson(json);

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
  final FhirBoolean? complete;
  @override
  @JsonKey(name: '_complete')
  final PrimitiveElement? completeElement;
  final List<CitationEntry>? _entry;
  @override
  List<CitationEntry>? get entry {
    final value = _entry;
    if (value == null) return null;
    if (_entry is EqualUnmodifiableListView) return _entry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CitationSummary1>? _summary;
  @override
  List<CitationSummary1>? get summary {
    final value = _summary;
    if (value == null) return null;
    if (_summary is EqualUnmodifiableListView) return _summary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationContributorshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.complete, complete) ||
                other.complete == complete) &&
            (identical(other.completeElement, completeElement) ||
                other.completeElement == completeElement) &&
            const DeepCollectionEquality().equals(other._entry, _entry) &&
            const DeepCollectionEquality().equals(other._summary, _summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      complete,
      completeElement,
      const DeepCollectionEquality().hash(_entry),
      const DeepCollectionEquality().hash(_summary));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationContributorshipImplCopyWith<_$CitationContributorshipImpl>
      get copyWith => __$$CitationContributorshipImplCopyWithImpl<
          _$CitationContributorshipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationContributorshipImplToJson(
      this,
    );
  }
}

abstract class _CitationContributorship extends CitationContributorship {
  factory _CitationContributorship(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirBoolean? complete,
      @JsonKey(name: '_complete') final PrimitiveElement? completeElement,
      final List<CitationEntry>? entry,
      final List<CitationSummary1>? summary}) = _$CitationContributorshipImpl;
  _CitationContributorship._() : super._();

  factory _CitationContributorship.fromJson(Map<String, dynamic> json) =
      _$CitationContributorshipImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  FhirBoolean? get complete;
  @override
  @JsonKey(name: '_complete')
  PrimitiveElement? get completeElement;
  @override
  List<CitationEntry>? get entry;
  @override
  List<CitationSummary1>? get summary;
  @override
  @JsonKey(ignore: true)
  _$$CitationContributorshipImplCopyWith<_$CitationContributorshipImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CitationEntry _$CitationEntryFromJson(Map<String, dynamic> json) {
  return _CitationEntry.fromJson(json);
}

/// @nodoc
mixin _$CitationEntry {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  HumanName? get name => throw _privateConstructorUsedError;
  String? get initials => throw _privateConstructorUsedError;
  @JsonKey(name: '_initials')
  PrimitiveElement? get initialsElement => throw _privateConstructorUsedError;
  String? get collectiveName => throw _privateConstructorUsedError;
  @JsonKey(name: '_collectiveName')
  PrimitiveElement? get collectiveNameElement =>
      throw _privateConstructorUsedError;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;
  List<CitationAffiliationInfo>? get affiliationInfo =>
      throw _privateConstructorUsedError;
  List<Address>? get address => throw _privateConstructorUsedError;
  List<ContactPoint>? get telecom => throw _privateConstructorUsedError;
  List<CodeableConcept>? get contributionType =>
      throw _privateConstructorUsedError;
  CodeableConcept? get role => throw _privateConstructorUsedError;
  List<CitationContributionInstance>? get contributionInstance =>
      throw _privateConstructorUsedError;
  FhirBoolean? get correspondingContact => throw _privateConstructorUsedError;
  @JsonKey(name: '_correspondingContact')
  PrimitiveElement? get correspondingContactElement =>
      throw _privateConstructorUsedError;
  FhirPositiveInt? get listOrder => throw _privateConstructorUsedError;
  @JsonKey(name: '_listOrder')
  PrimitiveElement? get listOrderElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationEntryCopyWith<CitationEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationEntryCopyWith<$Res> {
  factory $CitationEntryCopyWith(
          CitationEntry value, $Res Function(CitationEntry) then) =
      _$CitationEntryCopyWithImpl<$Res, CitationEntry>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      HumanName? name,
      String? initials,
      @JsonKey(name: '_initials') PrimitiveElement? initialsElement,
      String? collectiveName,
      @JsonKey(name: '_collectiveName') PrimitiveElement? collectiveNameElement,
      List<Identifier>? identifier,
      List<CitationAffiliationInfo>? affiliationInfo,
      List<Address>? address,
      List<ContactPoint>? telecom,
      List<CodeableConcept>? contributionType,
      CodeableConcept? role,
      List<CitationContributionInstance>? contributionInstance,
      FhirBoolean? correspondingContact,
      @JsonKey(name: '_correspondingContact')
      PrimitiveElement? correspondingContactElement,
      FhirPositiveInt? listOrder,
      @JsonKey(name: '_listOrder') PrimitiveElement? listOrderElement});

  $HumanNameCopyWith<$Res>? get name;
  $CodeableConceptCopyWith<$Res>? get role;
}

/// @nodoc
class _$CitationEntryCopyWithImpl<$Res, $Val extends CitationEntry>
    implements $CitationEntryCopyWith<$Res> {
  _$CitationEntryCopyWithImpl(this._value, this._then);

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
    Object? name = freezed,
    Object? initials = freezed,
    Object? initialsElement = freezed,
    Object? collectiveName = freezed,
    Object? collectiveNameElement = freezed,
    Object? identifier = freezed,
    Object? affiliationInfo = freezed,
    Object? address = freezed,
    Object? telecom = freezed,
    Object? contributionType = freezed,
    Object? role = freezed,
    Object? contributionInstance = freezed,
    Object? correspondingContact = freezed,
    Object? correspondingContactElement = freezed,
    Object? listOrder = freezed,
    Object? listOrderElement = freezed,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      initials: freezed == initials
          ? _value.initials
          : initials // ignore: cast_nullable_to_non_nullable
              as String?,
      initialsElement: freezed == initialsElement
          ? _value.initialsElement
          : initialsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      collectiveName: freezed == collectiveName
          ? _value.collectiveName
          : collectiveName // ignore: cast_nullable_to_non_nullable
              as String?,
      collectiveNameElement: freezed == collectiveNameElement
          ? _value.collectiveNameElement
          : collectiveNameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      affiliationInfo: freezed == affiliationInfo
          ? _value.affiliationInfo
          : affiliationInfo // ignore: cast_nullable_to_non_nullable
              as List<CitationAffiliationInfo>?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
      telecom: freezed == telecom
          ? _value.telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      contributionType: freezed == contributionType
          ? _value.contributionType
          : contributionType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      contributionInstance: freezed == contributionInstance
          ? _value.contributionInstance
          : contributionInstance // ignore: cast_nullable_to_non_nullable
              as List<CitationContributionInstance>?,
      correspondingContact: freezed == correspondingContact
          ? _value.correspondingContact
          : correspondingContact // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      correspondingContactElement: freezed == correspondingContactElement
          ? _value.correspondingContactElement
          : correspondingContactElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      listOrder: freezed == listOrder
          ? _value.listOrder
          : listOrder // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      listOrderElement: freezed == listOrderElement
          ? _value.listOrderElement
          : listOrderElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HumanNameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $HumanNameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationEntryImplCopyWith<$Res>
    implements $CitationEntryCopyWith<$Res> {
  factory _$$CitationEntryImplCopyWith(
          _$CitationEntryImpl value, $Res Function(_$CitationEntryImpl) then) =
      __$$CitationEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      HumanName? name,
      String? initials,
      @JsonKey(name: '_initials') PrimitiveElement? initialsElement,
      String? collectiveName,
      @JsonKey(name: '_collectiveName') PrimitiveElement? collectiveNameElement,
      List<Identifier>? identifier,
      List<CitationAffiliationInfo>? affiliationInfo,
      List<Address>? address,
      List<ContactPoint>? telecom,
      List<CodeableConcept>? contributionType,
      CodeableConcept? role,
      List<CitationContributionInstance>? contributionInstance,
      FhirBoolean? correspondingContact,
      @JsonKey(name: '_correspondingContact')
      PrimitiveElement? correspondingContactElement,
      FhirPositiveInt? listOrder,
      @JsonKey(name: '_listOrder') PrimitiveElement? listOrderElement});

  @override
  $HumanNameCopyWith<$Res>? get name;
  @override
  $CodeableConceptCopyWith<$Res>? get role;
}

/// @nodoc
class __$$CitationEntryImplCopyWithImpl<$Res>
    extends _$CitationEntryCopyWithImpl<$Res, _$CitationEntryImpl>
    implements _$$CitationEntryImplCopyWith<$Res> {
  __$$CitationEntryImplCopyWithImpl(
      _$CitationEntryImpl _value, $Res Function(_$CitationEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? initials = freezed,
    Object? initialsElement = freezed,
    Object? collectiveName = freezed,
    Object? collectiveNameElement = freezed,
    Object? identifier = freezed,
    Object? affiliationInfo = freezed,
    Object? address = freezed,
    Object? telecom = freezed,
    Object? contributionType = freezed,
    Object? role = freezed,
    Object? contributionInstance = freezed,
    Object? correspondingContact = freezed,
    Object? correspondingContactElement = freezed,
    Object? listOrder = freezed,
    Object? listOrderElement = freezed,
  }) {
    return _then(_$CitationEntryImpl(
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as HumanName?,
      initials: freezed == initials
          ? _value.initials
          : initials // ignore: cast_nullable_to_non_nullable
              as String?,
      initialsElement: freezed == initialsElement
          ? _value.initialsElement
          : initialsElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      collectiveName: freezed == collectiveName
          ? _value.collectiveName
          : collectiveName // ignore: cast_nullable_to_non_nullable
              as String?,
      collectiveNameElement: freezed == collectiveNameElement
          ? _value.collectiveNameElement
          : collectiveNameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      affiliationInfo: freezed == affiliationInfo
          ? _value._affiliationInfo
          : affiliationInfo // ignore: cast_nullable_to_non_nullable
              as List<CitationAffiliationInfo>?,
      address: freezed == address
          ? _value._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<Address>?,
      telecom: freezed == telecom
          ? _value._telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as List<ContactPoint>?,
      contributionType: freezed == contributionType
          ? _value._contributionType
          : contributionType // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      contributionInstance: freezed == contributionInstance
          ? _value._contributionInstance
          : contributionInstance // ignore: cast_nullable_to_non_nullable
              as List<CitationContributionInstance>?,
      correspondingContact: freezed == correspondingContact
          ? _value.correspondingContact
          : correspondingContact // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      correspondingContactElement: freezed == correspondingContactElement
          ? _value.correspondingContactElement
          : correspondingContactElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      listOrder: freezed == listOrder
          ? _value.listOrder
          : listOrder // ignore: cast_nullable_to_non_nullable
              as FhirPositiveInt?,
      listOrderElement: freezed == listOrderElement
          ? _value.listOrderElement
          : listOrderElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationEntryImpl extends _CitationEntry {
  _$CitationEntryImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      this.initials,
      @JsonKey(name: '_initials') this.initialsElement,
      this.collectiveName,
      @JsonKey(name: '_collectiveName') this.collectiveNameElement,
      final List<Identifier>? identifier,
      final List<CitationAffiliationInfo>? affiliationInfo,
      final List<Address>? address,
      final List<ContactPoint>? telecom,
      final List<CodeableConcept>? contributionType,
      this.role,
      final List<CitationContributionInstance>? contributionInstance,
      this.correspondingContact,
      @JsonKey(name: '_correspondingContact') this.correspondingContactElement,
      this.listOrder,
      @JsonKey(name: '_listOrder') this.listOrderElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _affiliationInfo = affiliationInfo,
        _address = address,
        _telecom = telecom,
        _contributionType = contributionType,
        _contributionInstance = contributionInstance,
        super._();

  factory _$CitationEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationEntryImplFromJson(json);

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
  final HumanName? name;
  @override
  final String? initials;
  @override
  @JsonKey(name: '_initials')
  final PrimitiveElement? initialsElement;
  @override
  final String? collectiveName;
  @override
  @JsonKey(name: '_collectiveName')
  final PrimitiveElement? collectiveNameElement;
  final List<Identifier>? _identifier;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CitationAffiliationInfo>? _affiliationInfo;
  @override
  List<CitationAffiliationInfo>? get affiliationInfo {
    final value = _affiliationInfo;
    if (value == null) return null;
    if (_affiliationInfo is EqualUnmodifiableListView) return _affiliationInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Address>? _address;
  @override
  List<Address>? get address {
    final value = _address;
    if (value == null) return null;
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ContactPoint>? _telecom;
  @override
  List<ContactPoint>? get telecom {
    final value = _telecom;
    if (value == null) return null;
    if (_telecom is EqualUnmodifiableListView) return _telecom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CodeableConcept>? _contributionType;
  @override
  List<CodeableConcept>? get contributionType {
    final value = _contributionType;
    if (value == null) return null;
    if (_contributionType is EqualUnmodifiableListView)
      return _contributionType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CodeableConcept? role;
  final List<CitationContributionInstance>? _contributionInstance;
  @override
  List<CitationContributionInstance>? get contributionInstance {
    final value = _contributionInstance;
    if (value == null) return null;
    if (_contributionInstance is EqualUnmodifiableListView)
      return _contributionInstance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirBoolean? correspondingContact;
  @override
  @JsonKey(name: '_correspondingContact')
  final PrimitiveElement? correspondingContactElement;
  @override
  final FhirPositiveInt? listOrder;
  @override
  @JsonKey(name: '_listOrder')
  final PrimitiveElement? listOrderElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.initials, initials) ||
                other.initials == initials) &&
            (identical(other.initialsElement, initialsElement) ||
                other.initialsElement == initialsElement) &&
            (identical(other.collectiveName, collectiveName) ||
                other.collectiveName == collectiveName) &&
            (identical(other.collectiveNameElement, collectiveNameElement) ||
                other.collectiveNameElement == collectiveNameElement) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            const DeepCollectionEquality()
                .equals(other._affiliationInfo, _affiliationInfo) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            const DeepCollectionEquality().equals(other._telecom, _telecom) &&
            const DeepCollectionEquality()
                .equals(other._contributionType, _contributionType) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._contributionInstance, _contributionInstance) &&
            (identical(other.correspondingContact, correspondingContact) ||
                other.correspondingContact == correspondingContact) &&
            (identical(other.correspondingContactElement,
                    correspondingContactElement) ||
                other.correspondingContactElement ==
                    correspondingContactElement) &&
            (identical(other.listOrder, listOrder) ||
                other.listOrder == listOrder) &&
            (identical(other.listOrderElement, listOrderElement) ||
                other.listOrderElement == listOrderElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        name,
        initials,
        initialsElement,
        collectiveName,
        collectiveNameElement,
        const DeepCollectionEquality().hash(_identifier),
        const DeepCollectionEquality().hash(_affiliationInfo),
        const DeepCollectionEquality().hash(_address),
        const DeepCollectionEquality().hash(_telecom),
        const DeepCollectionEquality().hash(_contributionType),
        role,
        const DeepCollectionEquality().hash(_contributionInstance),
        correspondingContact,
        correspondingContactElement,
        listOrder,
        listOrderElement
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationEntryImplCopyWith<_$CitationEntryImpl> get copyWith =>
      __$$CitationEntryImplCopyWithImpl<_$CitationEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationEntryImplToJson(
      this,
    );
  }
}

abstract class _CitationEntry extends CitationEntry {
  factory _CitationEntry(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final HumanName? name,
      final String? initials,
      @JsonKey(name: '_initials') final PrimitiveElement? initialsElement,
      final String? collectiveName,
      @JsonKey(name: '_collectiveName')
      final PrimitiveElement? collectiveNameElement,
      final List<Identifier>? identifier,
      final List<CitationAffiliationInfo>? affiliationInfo,
      final List<Address>? address,
      final List<ContactPoint>? telecom,
      final List<CodeableConcept>? contributionType,
      final CodeableConcept? role,
      final List<CitationContributionInstance>? contributionInstance,
      final FhirBoolean? correspondingContact,
      @JsonKey(name: '_correspondingContact')
      final PrimitiveElement? correspondingContactElement,
      final FhirPositiveInt? listOrder,
      @JsonKey(name: '_listOrder')
      final PrimitiveElement? listOrderElement}) = _$CitationEntryImpl;
  _CitationEntry._() : super._();

  factory _CitationEntry.fromJson(Map<String, dynamic> json) =
      _$CitationEntryImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  HumanName? get name;
  @override
  String? get initials;
  @override
  @JsonKey(name: '_initials')
  PrimitiveElement? get initialsElement;
  @override
  String? get collectiveName;
  @override
  @JsonKey(name: '_collectiveName')
  PrimitiveElement? get collectiveNameElement;
  @override
  List<Identifier>? get identifier;
  @override
  List<CitationAffiliationInfo>? get affiliationInfo;
  @override
  List<Address>? get address;
  @override
  List<ContactPoint>? get telecom;
  @override
  List<CodeableConcept>? get contributionType;
  @override
  CodeableConcept? get role;
  @override
  List<CitationContributionInstance>? get contributionInstance;
  @override
  FhirBoolean? get correspondingContact;
  @override
  @JsonKey(name: '_correspondingContact')
  PrimitiveElement? get correspondingContactElement;
  @override
  FhirPositiveInt? get listOrder;
  @override
  @JsonKey(name: '_listOrder')
  PrimitiveElement? get listOrderElement;
  @override
  @JsonKey(ignore: true)
  _$$CitationEntryImplCopyWith<_$CitationEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CitationAffiliationInfo _$CitationAffiliationInfoFromJson(
    Map<String, dynamic> json) {
  return _CitationAffiliationInfo.fromJson(json);
}

/// @nodoc
mixin _$CitationAffiliationInfo {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  String? get affiliation => throw _privateConstructorUsedError;
  @JsonKey(name: '_affiliation')
  PrimitiveElement? get affiliationElement =>
      throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: '_role')
  PrimitiveElement? get roleElement => throw _privateConstructorUsedError;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationAffiliationInfoCopyWith<CitationAffiliationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationAffiliationInfoCopyWith<$Res> {
  factory $CitationAffiliationInfoCopyWith(CitationAffiliationInfo value,
          $Res Function(CitationAffiliationInfo) then) =
      _$CitationAffiliationInfoCopyWithImpl<$Res, CitationAffiliationInfo>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? affiliation,
      @JsonKey(name: '_affiliation') PrimitiveElement? affiliationElement,
      String? role,
      @JsonKey(name: '_role') PrimitiveElement? roleElement,
      List<Identifier>? identifier});
}

/// @nodoc
class _$CitationAffiliationInfoCopyWithImpl<$Res,
        $Val extends CitationAffiliationInfo>
    implements $CitationAffiliationInfoCopyWith<$Res> {
  _$CitationAffiliationInfoCopyWithImpl(this._value, this._then);

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
    Object? affiliation = freezed,
    Object? affiliationElement = freezed,
    Object? role = freezed,
    Object? roleElement = freezed,
    Object? identifier = freezed,
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
      affiliation: freezed == affiliation
          ? _value.affiliation
          : affiliation // ignore: cast_nullable_to_non_nullable
              as String?,
      affiliationElement: freezed == affiliationElement
          ? _value.affiliationElement
          : affiliationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      roleElement: freezed == roleElement
          ? _value.roleElement
          : roleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CitationAffiliationInfoImplCopyWith<$Res>
    implements $CitationAffiliationInfoCopyWith<$Res> {
  factory _$$CitationAffiliationInfoImplCopyWith(
          _$CitationAffiliationInfoImpl value,
          $Res Function(_$CitationAffiliationInfoImpl) then) =
      __$$CitationAffiliationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? affiliation,
      @JsonKey(name: '_affiliation') PrimitiveElement? affiliationElement,
      String? role,
      @JsonKey(name: '_role') PrimitiveElement? roleElement,
      List<Identifier>? identifier});
}

/// @nodoc
class __$$CitationAffiliationInfoImplCopyWithImpl<$Res>
    extends _$CitationAffiliationInfoCopyWithImpl<$Res,
        _$CitationAffiliationInfoImpl>
    implements _$$CitationAffiliationInfoImplCopyWith<$Res> {
  __$$CitationAffiliationInfoImplCopyWithImpl(
      _$CitationAffiliationInfoImpl _value,
      $Res Function(_$CitationAffiliationInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? affiliation = freezed,
    Object? affiliationElement = freezed,
    Object? role = freezed,
    Object? roleElement = freezed,
    Object? identifier = freezed,
  }) {
    return _then(_$CitationAffiliationInfoImpl(
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
      affiliation: freezed == affiliation
          ? _value.affiliation
          : affiliation // ignore: cast_nullable_to_non_nullable
              as String?,
      affiliationElement: freezed == affiliationElement
          ? _value.affiliationElement
          : affiliationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      roleElement: freezed == roleElement
          ? _value.roleElement
          : roleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationAffiliationInfoImpl extends _CitationAffiliationInfo {
  _$CitationAffiliationInfoImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.affiliation,
      @JsonKey(name: '_affiliation') this.affiliationElement,
      this.role,
      @JsonKey(name: '_role') this.roleElement,
      final List<Identifier>? identifier})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        super._();

  factory _$CitationAffiliationInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitationAffiliationInfoImplFromJson(json);

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
  final String? affiliation;
  @override
  @JsonKey(name: '_affiliation')
  final PrimitiveElement? affiliationElement;
  @override
  final String? role;
  @override
  @JsonKey(name: '_role')
  final PrimitiveElement? roleElement;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationAffiliationInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.affiliation, affiliation) ||
                other.affiliation == affiliation) &&
            (identical(other.affiliationElement, affiliationElement) ||
                other.affiliationElement == affiliationElement) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.roleElement, roleElement) ||
                other.roleElement == roleElement) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      affiliation,
      affiliationElement,
      role,
      roleElement,
      const DeepCollectionEquality().hash(_identifier));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationAffiliationInfoImplCopyWith<_$CitationAffiliationInfoImpl>
      get copyWith => __$$CitationAffiliationInfoImplCopyWithImpl<
          _$CitationAffiliationInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationAffiliationInfoImplToJson(
      this,
    );
  }
}

abstract class _CitationAffiliationInfo extends CitationAffiliationInfo {
  factory _CitationAffiliationInfo(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? affiliation,
      @JsonKey(name: '_affiliation') final PrimitiveElement? affiliationElement,
      final String? role,
      @JsonKey(name: '_role') final PrimitiveElement? roleElement,
      final List<Identifier>? identifier}) = _$CitationAffiliationInfoImpl;
  _CitationAffiliationInfo._() : super._();

  factory _CitationAffiliationInfo.fromJson(Map<String, dynamic> json) =
      _$CitationAffiliationInfoImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  String? get affiliation;
  @override
  @JsonKey(name: '_affiliation')
  PrimitiveElement? get affiliationElement;
  @override
  String? get role;
  @override
  @JsonKey(name: '_role')
  PrimitiveElement? get roleElement;
  @override
  List<Identifier>? get identifier;
  @override
  @JsonKey(ignore: true)
  _$$CitationAffiliationInfoImplCopyWith<_$CitationAffiliationInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CitationContributionInstance _$CitationContributionInstanceFromJson(
    Map<String, dynamic> json) {
  return _CitationContributionInstance.fromJson(json);
}

/// @nodoc
mixin _$CitationContributionInstance {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept get type => throw _privateConstructorUsedError;
  FhirDateTime? get time => throw _privateConstructorUsedError;
  @JsonKey(name: '_time')
  PrimitiveElement? get timeElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationContributionInstanceCopyWith<CitationContributionInstance>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationContributionInstanceCopyWith<$Res> {
  factory $CitationContributionInstanceCopyWith(
          CitationContributionInstance value,
          $Res Function(CitationContributionInstance) then) =
      _$CitationContributionInstanceCopyWithImpl<$Res,
          CitationContributionInstance>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      FhirDateTime? time,
      @JsonKey(name: '_time') PrimitiveElement? timeElement});

  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class _$CitationContributionInstanceCopyWithImpl<$Res,
        $Val extends CitationContributionInstance>
    implements $CitationContributionInstanceCopyWith<$Res> {
  _$CitationContributionInstanceCopyWithImpl(this._value, this._then);

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
    Object? type = null,
    Object? time = freezed,
    Object? timeElement = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      timeElement: freezed == timeElement
          ? _value.timeElement
          : timeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationContributionInstanceImplCopyWith<$Res>
    implements $CitationContributionInstanceCopyWith<$Res> {
  factory _$$CitationContributionInstanceImplCopyWith(
          _$CitationContributionInstanceImpl value,
          $Res Function(_$CitationContributionInstanceImpl) then) =
      __$$CitationContributionInstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      FhirDateTime? time,
      @JsonKey(name: '_time') PrimitiveElement? timeElement});

  @override
  $CodeableConceptCopyWith<$Res> get type;
}

/// @nodoc
class __$$CitationContributionInstanceImplCopyWithImpl<$Res>
    extends _$CitationContributionInstanceCopyWithImpl<$Res,
        _$CitationContributionInstanceImpl>
    implements _$$CitationContributionInstanceImplCopyWith<$Res> {
  __$$CitationContributionInstanceImplCopyWithImpl(
      _$CitationContributionInstanceImpl _value,
      $Res Function(_$CitationContributionInstanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? time = freezed,
    Object? timeElement = freezed,
  }) {
    return _then(_$CitationContributionInstanceImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      timeElement: freezed == timeElement
          ? _value.timeElement
          : timeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationContributionInstanceImpl extends _CitationContributionInstance {
  _$CitationContributionInstanceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.time,
      @JsonKey(name: '_time') this.timeElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CitationContributionInstanceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CitationContributionInstanceImplFromJson(json);

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
  final CodeableConcept type;
  @override
  final FhirDateTime? time;
  @override
  @JsonKey(name: '_time')
  final PrimitiveElement? timeElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationContributionInstanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timeElement, timeElement) ||
                other.timeElement == timeElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      time,
      timeElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationContributionInstanceImplCopyWith<
          _$CitationContributionInstanceImpl>
      get copyWith => __$$CitationContributionInstanceImplCopyWithImpl<
          _$CitationContributionInstanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationContributionInstanceImplToJson(
      this,
    );
  }
}

abstract class _CitationContributionInstance
    extends CitationContributionInstance {
  factory _CitationContributionInstance(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          required final CodeableConcept type,
          final FhirDateTime? time,
          @JsonKey(name: '_time') final PrimitiveElement? timeElement}) =
      _$CitationContributionInstanceImpl;
  _CitationContributionInstance._() : super._();

  factory _CitationContributionInstance.fromJson(Map<String, dynamic> json) =
      _$CitationContributionInstanceImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept get type;
  @override
  FhirDateTime? get time;
  @override
  @JsonKey(name: '_time')
  PrimitiveElement? get timeElement;
  @override
  @JsonKey(ignore: true)
  _$$CitationContributionInstanceImplCopyWith<
          _$CitationContributionInstanceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CitationSummary1 _$CitationSummary1FromJson(Map<String, dynamic> json) {
  return _CitationSummary1.fromJson(json);
}

/// @nodoc
mixin _$CitationSummary1 {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get type => throw _privateConstructorUsedError;
  CodeableConcept? get style => throw _privateConstructorUsedError;
  CodeableConcept? get source => throw _privateConstructorUsedError;
  FhirMarkdown? get value => throw _privateConstructorUsedError;
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitationSummary1CopyWith<CitationSummary1> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitationSummary1CopyWith<$Res> {
  factory $CitationSummary1CopyWith(
          CitationSummary1 value, $Res Function(CitationSummary1) then) =
      _$CitationSummary1CopyWithImpl<$Res, CitationSummary1>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      CodeableConcept? style,
      CodeableConcept? source,
      FhirMarkdown? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement});

  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get style;
  $CodeableConceptCopyWith<$Res>? get source;
}

/// @nodoc
class _$CitationSummary1CopyWithImpl<$Res, $Val extends CitationSummary1>
    implements $CitationSummary1CopyWith<$Res> {
  _$CitationSummary1CopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? style = freezed,
    Object? source = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
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
  $CodeableConceptCopyWith<$Res>? get style {
    if (_value.style == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.style!, (value) {
      return _then(_value.copyWith(style: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CitationSummary1ImplCopyWith<$Res>
    implements $CitationSummary1CopyWith<$Res> {
  factory _$$CitationSummary1ImplCopyWith(_$CitationSummary1Impl value,
          $Res Function(_$CitationSummary1Impl) then) =
      __$$CitationSummary1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      CodeableConcept? style,
      CodeableConcept? source,
      FhirMarkdown? value,
      @JsonKey(name: '_value') PrimitiveElement? valueElement});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get style;
  @override
  $CodeableConceptCopyWith<$Res>? get source;
}

/// @nodoc
class __$$CitationSummary1ImplCopyWithImpl<$Res>
    extends _$CitationSummary1CopyWithImpl<$Res, _$CitationSummary1Impl>
    implements _$$CitationSummary1ImplCopyWith<$Res> {
  __$$CitationSummary1ImplCopyWithImpl(_$CitationSummary1Impl _value,
      $Res Function(_$CitationSummary1Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? style = freezed,
    Object? source = freezed,
    Object? value = freezed,
    Object? valueElement = freezed,
  }) {
    return _then(_$CitationSummary1Impl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      valueElement: freezed == valueElement
          ? _value.valueElement
          : valueElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CitationSummary1Impl extends _CitationSummary1 {
  _$CitationSummary1Impl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.style,
      this.source,
      this.value,
      @JsonKey(name: '_value') this.valueElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CitationSummary1Impl.fromJson(Map<String, dynamic> json) =>
      _$$CitationSummary1ImplFromJson(json);

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
  final CodeableConcept? type;
  @override
  final CodeableConcept? style;
  @override
  final CodeableConcept? source;
  @override
  final FhirMarkdown? value;
  @override
  @JsonKey(name: '_value')
  final PrimitiveElement? valueElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitationSummary1Impl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.valueElement, valueElement) ||
                other.valueElement == valueElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      style,
      source,
      value,
      valueElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CitationSummary1ImplCopyWith<_$CitationSummary1Impl> get copyWith =>
      __$$CitationSummary1ImplCopyWithImpl<_$CitationSummary1Impl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CitationSummary1ImplToJson(
      this,
    );
  }
}

abstract class _CitationSummary1 extends CitationSummary1 {
  factory _CitationSummary1(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? type,
          final CodeableConcept? style,
          final CodeableConcept? source,
          final FhirMarkdown? value,
          @JsonKey(name: '_value') final PrimitiveElement? valueElement}) =
      _$CitationSummary1Impl;
  _CitationSummary1._() : super._();

  factory _CitationSummary1.fromJson(Map<String, dynamic> json) =
      _$CitationSummary1Impl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get type;
  @override
  CodeableConcept? get style;
  @override
  CodeableConcept? get source;
  @override
  FhirMarkdown? get value;
  @override
  @JsonKey(name: '_value')
  PrimitiveElement? get valueElement;
  @override
  @JsonKey(ignore: true)
  _$$CitationSummary1ImplCopyWith<_$CitationSummary1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
