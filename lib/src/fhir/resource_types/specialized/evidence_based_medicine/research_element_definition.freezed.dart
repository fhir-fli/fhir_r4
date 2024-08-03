// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'research_element_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResearchElementDefinition _$ResearchElementDefinitionFromJson(
    Map<String, dynamic> json) {
  return _ResearchElementDefinition.fromJson(json);
}

/// @nodoc
mixin _$ResearchElementDefinition {
  @JsonKey(unknownEnumValue: R4ResourceType.ResearchElementDefinition)
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
  String? get shortTitle => throw _privateConstructorUsedError;
  @JsonKey(name: '_shortTitle')
  PrimitiveElement? get shortTitleElement => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  @JsonKey(name: '_subtitle')
  PrimitiveElement? get subtitleElement => throw _privateConstructorUsedError;
  FhirCode? get status => throw _privateConstructorUsedError;
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;
  FhirBoolean? get experimental => throw _privateConstructorUsedError;
  @JsonKey(name: '_experimental')
  PrimitiveElement? get experimentalElement =>
      throw _privateConstructorUsedError;
  CodeableConcept? get subjectCodeableConcept =>
      throw _privateConstructorUsedError;
  Reference? get subjectReference => throw _privateConstructorUsedError;
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
  List<String>? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: '_comment')
  List<PrimitiveElement>? get commentElement =>
      throw _privateConstructorUsedError;
  List<UsageContext>? get useContext => throw _privateConstructorUsedError;
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;
  FhirMarkdown? get purpose => throw _privateConstructorUsedError;
  @JsonKey(name: '_purpose')
  PrimitiveElement? get purposeElement => throw _privateConstructorUsedError;
  String? get usage => throw _privateConstructorUsedError;
  @JsonKey(name: '_usage')
  PrimitiveElement? get usageElement => throw _privateConstructorUsedError;
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
  Period? get effectivePeriod => throw _privateConstructorUsedError;
  List<CodeableConcept>? get topic => throw _privateConstructorUsedError;
  List<ContactDetail>? get author => throw _privateConstructorUsedError;
  List<ContactDetail>? get editor => throw _privateConstructorUsedError;
  List<ContactDetail>? get reviewer => throw _privateConstructorUsedError;
  List<ContactDetail>? get endorser => throw _privateConstructorUsedError;
  List<RelatedArtifact>? get relatedArtifact =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'library')
  List<FhirCanonical>? get library_ => throw _privateConstructorUsedError;
  FhirCode? get type => throw _privateConstructorUsedError;
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;
  FhirCode? get variableType => throw _privateConstructorUsedError;
  @JsonKey(name: '_variableType')
  PrimitiveElement? get variableTypeElement =>
      throw _privateConstructorUsedError;
  List<ResearchElementDefinitionCharacteristic> get characteristic =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResearchElementDefinitionCopyWith<ResearchElementDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResearchElementDefinitionCopyWith<$Res> {
  factory $ResearchElementDefinitionCopyWith(ResearchElementDefinition value,
          $Res Function(ResearchElementDefinition) then) =
      _$ResearchElementDefinitionCopyWithImpl<$Res, ResearchElementDefinition>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ResearchElementDefinition)
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
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      String? shortTitle,
      @JsonKey(name: '_shortTitle') PrimitiveElement? shortTitleElement,
      String? subtitle,
      @JsonKey(name: '_subtitle') PrimitiveElement? subtitleElement,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirBoolean? experimental,
      @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
      CodeableConcept? subjectCodeableConcept,
      Reference? subjectReference,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? publisher,
      @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
      List<ContactDetail>? contact,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<String>? comment,
      @JsonKey(name: '_comment') List<PrimitiveElement>? commentElement,
      List<UsageContext>? useContext,
      List<CodeableConcept>? jurisdiction,
      FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
      String? usage,
      @JsonKey(name: '_usage') PrimitiveElement? usageElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
      FhirDate? approvalDate,
      @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
      FhirDate? lastReviewDate,
      @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
      Period? effectivePeriod,
      List<CodeableConcept>? topic,
      List<ContactDetail>? author,
      List<ContactDetail>? editor,
      List<ContactDetail>? reviewer,
      List<ContactDetail>? endorser,
      List<RelatedArtifact>? relatedArtifact,
      @JsonKey(name: 'library') List<FhirCanonical>? library_,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirCode? variableType,
      @JsonKey(name: '_variableType') PrimitiveElement? variableTypeElement,
      List<ResearchElementDefinitionCharacteristic> characteristic});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get subjectCodeableConcept;
  $ReferenceCopyWith<$Res>? get subjectReference;
  $PeriodCopyWith<$Res>? get effectivePeriod;
}

/// @nodoc
class _$ResearchElementDefinitionCopyWithImpl<$Res,
        $Val extends ResearchElementDefinition>
    implements $ResearchElementDefinitionCopyWith<$Res> {
  _$ResearchElementDefinitionCopyWithImpl(this._value, this._then);

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
    Object? shortTitle = freezed,
    Object? shortTitleElement = freezed,
    Object? subtitle = freezed,
    Object? subtitleElement = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? experimental = freezed,
    Object? experimentalElement = freezed,
    Object? subjectCodeableConcept = freezed,
    Object? subjectReference = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? publisher = freezed,
    Object? publisherElement = freezed,
    Object? contact = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
    Object? useContext = freezed,
    Object? jurisdiction = freezed,
    Object? purpose = freezed,
    Object? purposeElement = freezed,
    Object? usage = freezed,
    Object? usageElement = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
    Object? approvalDate = freezed,
    Object? approvalDateElement = freezed,
    Object? lastReviewDate = freezed,
    Object? lastReviewDateElement = freezed,
    Object? effectivePeriod = freezed,
    Object? topic = freezed,
    Object? author = freezed,
    Object? editor = freezed,
    Object? reviewer = freezed,
    Object? endorser = freezed,
    Object? relatedArtifact = freezed,
    Object? library_ = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? variableType = freezed,
    Object? variableTypeElement = freezed,
    Object? characteristic = null,
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
      shortTitle: freezed == shortTitle
          ? _value.shortTitle
          : shortTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      shortTitleElement: freezed == shortTitleElement
          ? _value.shortTitleElement
          : shortTitleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleElement: freezed == subtitleElement
          ? _value.subtitleElement
          : subtitleElement // ignore: cast_nullable_to_non_nullable
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
      subjectCodeableConcept: freezed == subjectCodeableConcept
          ? _value.subjectCodeableConcept
          : subjectCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subjectReference: freezed == subjectReference
          ? _value.subjectReference
          : subjectReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
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
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      commentElement: freezed == commentElement
          ? _value.commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
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
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as String?,
      usageElement: freezed == usageElement
          ? _value.usageElement
          : usageElement // ignore: cast_nullable_to_non_nullable
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
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
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
      library_: freezed == library_
          ? _value.library_
          : library_ // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      variableType: freezed == variableType
          ? _value.variableType
          : variableType // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      variableTypeElement: freezed == variableTypeElement
          ? _value.variableTypeElement
          : variableTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      characteristic: null == characteristic
          ? _value.characteristic
          : characteristic // ignore: cast_nullable_to_non_nullable
              as List<ResearchElementDefinitionCharacteristic>,
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
  $CodeableConceptCopyWith<$Res>? get subjectCodeableConcept {
    if (_value.subjectCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.subjectCodeableConcept!,
        (value) {
      return _then(_value.copyWith(subjectCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get subjectReference {
    if (_value.subjectReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.subjectReference!, (value) {
      return _then(_value.copyWith(subjectReference: value) as $Val);
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
}

/// @nodoc
abstract class _$$ResearchElementDefinitionImplCopyWith<$Res>
    implements $ResearchElementDefinitionCopyWith<$Res> {
  factory _$$ResearchElementDefinitionImplCopyWith(
          _$ResearchElementDefinitionImpl value,
          $Res Function(_$ResearchElementDefinitionImpl) then) =
      __$$ResearchElementDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.ResearchElementDefinition)
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
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      String? title,
      @JsonKey(name: '_title') PrimitiveElement? titleElement,
      String? shortTitle,
      @JsonKey(name: '_shortTitle') PrimitiveElement? shortTitleElement,
      String? subtitle,
      @JsonKey(name: '_subtitle') PrimitiveElement? subtitleElement,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      FhirBoolean? experimental,
      @JsonKey(name: '_experimental') PrimitiveElement? experimentalElement,
      CodeableConcept? subjectCodeableConcept,
      Reference? subjectReference,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement,
      String? publisher,
      @JsonKey(name: '_publisher') PrimitiveElement? publisherElement,
      List<ContactDetail>? contact,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<String>? comment,
      @JsonKey(name: '_comment') List<PrimitiveElement>? commentElement,
      List<UsageContext>? useContext,
      List<CodeableConcept>? jurisdiction,
      FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') PrimitiveElement? purposeElement,
      String? usage,
      @JsonKey(name: '_usage') PrimitiveElement? usageElement,
      FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') PrimitiveElement? copyrightElement,
      FhirDate? approvalDate,
      @JsonKey(name: '_approvalDate') PrimitiveElement? approvalDateElement,
      FhirDate? lastReviewDate,
      @JsonKey(name: '_lastReviewDate') PrimitiveElement? lastReviewDateElement,
      Period? effectivePeriod,
      List<CodeableConcept>? topic,
      List<ContactDetail>? author,
      List<ContactDetail>? editor,
      List<ContactDetail>? reviewer,
      List<ContactDetail>? endorser,
      List<RelatedArtifact>? relatedArtifact,
      @JsonKey(name: 'library') List<FhirCanonical>? library_,
      FhirCode? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      FhirCode? variableType,
      @JsonKey(name: '_variableType') PrimitiveElement? variableTypeElement,
      List<ResearchElementDefinitionCharacteristic> characteristic});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get subjectCodeableConcept;
  @override
  $ReferenceCopyWith<$Res>? get subjectReference;
  @override
  $PeriodCopyWith<$Res>? get effectivePeriod;
}

/// @nodoc
class __$$ResearchElementDefinitionImplCopyWithImpl<$Res>
    extends _$ResearchElementDefinitionCopyWithImpl<$Res,
        _$ResearchElementDefinitionImpl>
    implements _$$ResearchElementDefinitionImplCopyWith<$Res> {
  __$$ResearchElementDefinitionImplCopyWithImpl(
      _$ResearchElementDefinitionImpl _value,
      $Res Function(_$ResearchElementDefinitionImpl) _then)
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
    Object? shortTitle = freezed,
    Object? shortTitleElement = freezed,
    Object? subtitle = freezed,
    Object? subtitleElement = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? experimental = freezed,
    Object? experimentalElement = freezed,
    Object? subjectCodeableConcept = freezed,
    Object? subjectReference = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
    Object? publisher = freezed,
    Object? publisherElement = freezed,
    Object? contact = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? comment = freezed,
    Object? commentElement = freezed,
    Object? useContext = freezed,
    Object? jurisdiction = freezed,
    Object? purpose = freezed,
    Object? purposeElement = freezed,
    Object? usage = freezed,
    Object? usageElement = freezed,
    Object? copyright = freezed,
    Object? copyrightElement = freezed,
    Object? approvalDate = freezed,
    Object? approvalDateElement = freezed,
    Object? lastReviewDate = freezed,
    Object? lastReviewDateElement = freezed,
    Object? effectivePeriod = freezed,
    Object? topic = freezed,
    Object? author = freezed,
    Object? editor = freezed,
    Object? reviewer = freezed,
    Object? endorser = freezed,
    Object? relatedArtifact = freezed,
    Object? library_ = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? variableType = freezed,
    Object? variableTypeElement = freezed,
    Object? characteristic = null,
  }) {
    return _then(_$ResearchElementDefinitionImpl(
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
      shortTitle: freezed == shortTitle
          ? _value.shortTitle
          : shortTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      shortTitleElement: freezed == shortTitleElement
          ? _value.shortTitleElement
          : shortTitleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      subtitle: freezed == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitleElement: freezed == subtitleElement
          ? _value.subtitleElement
          : subtitleElement // ignore: cast_nullable_to_non_nullable
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
      subjectCodeableConcept: freezed == subjectCodeableConcept
          ? _value.subjectCodeableConcept
          : subjectCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      subjectReference: freezed == subjectReference
          ? _value.subjectReference
          : subjectReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
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
      comment: freezed == comment
          ? _value._comment
          : comment // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      commentElement: freezed == commentElement
          ? _value._commentElement
          : commentElement // ignore: cast_nullable_to_non_nullable
              as List<PrimitiveElement>?,
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
      usage: freezed == usage
          ? _value.usage
          : usage // ignore: cast_nullable_to_non_nullable
              as String?,
      usageElement: freezed == usageElement
          ? _value.usageElement
          : usageElement // ignore: cast_nullable_to_non_nullable
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
      topic: freezed == topic
          ? _value._topic
          : topic // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
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
      library_: freezed == library_
          ? _value._library_
          : library_ // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      variableType: freezed == variableType
          ? _value.variableType
          : variableType // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      variableTypeElement: freezed == variableTypeElement
          ? _value.variableTypeElement
          : variableTypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      characteristic: null == characteristic
          ? _value._characteristic
          : characteristic // ignore: cast_nullable_to_non_nullable
              as List<ResearchElementDefinitionCharacteristic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResearchElementDefinitionImpl extends _ResearchElementDefinition {
  const _$ResearchElementDefinitionImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.ResearchElementDefinition)
      this.resourceType = R4ResourceType.ResearchElementDefinition,
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
      this.shortTitle,
      @JsonKey(name: '_shortTitle') this.shortTitleElement,
      this.subtitle,
      @JsonKey(name: '_subtitle') this.subtitleElement,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.experimental,
      @JsonKey(name: '_experimental') this.experimentalElement,
      this.subjectCodeableConcept,
      this.subjectReference,
      this.date,
      @JsonKey(name: '_date') this.dateElement,
      this.publisher,
      @JsonKey(name: '_publisher') this.publisherElement,
      final List<ContactDetail>? contact,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<String>? comment,
      @JsonKey(name: '_comment') final List<PrimitiveElement>? commentElement,
      final List<UsageContext>? useContext,
      final List<CodeableConcept>? jurisdiction,
      this.purpose,
      @JsonKey(name: '_purpose') this.purposeElement,
      this.usage,
      @JsonKey(name: '_usage') this.usageElement,
      this.copyright,
      @JsonKey(name: '_copyright') this.copyrightElement,
      this.approvalDate,
      @JsonKey(name: '_approvalDate') this.approvalDateElement,
      this.lastReviewDate,
      @JsonKey(name: '_lastReviewDate') this.lastReviewDateElement,
      this.effectivePeriod,
      final List<CodeableConcept>? topic,
      final List<ContactDetail>? author,
      final List<ContactDetail>? editor,
      final List<ContactDetail>? reviewer,
      final List<ContactDetail>? endorser,
      final List<RelatedArtifact>? relatedArtifact,
      @JsonKey(name: 'library') final List<FhirCanonical>? library_,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.variableType,
      @JsonKey(name: '_variableType') this.variableTypeElement,
      required final List<ResearchElementDefinitionCharacteristic>
          characteristic})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _contact = contact,
        _comment = comment,
        _commentElement = commentElement,
        _useContext = useContext,
        _jurisdiction = jurisdiction,
        _topic = topic,
        _author = author,
        _editor = editor,
        _reviewer = reviewer,
        _endorser = endorser,
        _relatedArtifact = relatedArtifact,
        _library_ = library_,
        _characteristic = characteristic,
        super._();

  factory _$ResearchElementDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResearchElementDefinitionImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ResearchElementDefinition)
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
  final String? shortTitle;
  @override
  @JsonKey(name: '_shortTitle')
  final PrimitiveElement? shortTitleElement;
  @override
  final String? subtitle;
  @override
  @JsonKey(name: '_subtitle')
  final PrimitiveElement? subtitleElement;
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
  final CodeableConcept? subjectCodeableConcept;
  @override
  final Reference? subjectReference;
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
  final List<String>? _comment;
  @override
  List<String>? get comment {
    final value = _comment;
    if (value == null) return null;
    if (_comment is EqualUnmodifiableListView) return _comment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PrimitiveElement>? _commentElement;
  @override
  @JsonKey(name: '_comment')
  List<PrimitiveElement>? get commentElement {
    final value = _commentElement;
    if (value == null) return null;
    if (_commentElement is EqualUnmodifiableListView) return _commentElement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final String? usage;
  @override
  @JsonKey(name: '_usage')
  final PrimitiveElement? usageElement;
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
  final List<CodeableConcept>? _topic;
  @override
  List<CodeableConcept>? get topic {
    final value = _topic;
    if (value == null) return null;
    if (_topic is EqualUnmodifiableListView) return _topic;
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

  final List<FhirCanonical>? _library_;
  @override
  @JsonKey(name: 'library')
  List<FhirCanonical>? get library_ {
    final value = _library_;
    if (value == null) return null;
    if (_library_ is EqualUnmodifiableListView) return _library_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirCode? type;
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;
  @override
  final FhirCode? variableType;
  @override
  @JsonKey(name: '_variableType')
  final PrimitiveElement? variableTypeElement;
  final List<ResearchElementDefinitionCharacteristic> _characteristic;
  @override
  List<ResearchElementDefinitionCharacteristic> get characteristic {
    if (_characteristic is EqualUnmodifiableListView) return _characteristic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characteristic);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResearchElementDefinitionImpl &&
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
            (identical(other.shortTitle, shortTitle) ||
                other.shortTitle == shortTitle) &&
            (identical(other.shortTitleElement, shortTitleElement) ||
                other.shortTitleElement == shortTitleElement) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.subtitleElement, subtitleElement) ||
                other.subtitleElement == subtitleElement) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.experimental, experimental) ||
                other.experimental == experimental) &&
            (identical(other.experimentalElement, experimentalElement) ||
                other.experimentalElement == experimentalElement) &&
            (identical(other.subjectCodeableConcept, subjectCodeableConcept) ||
                other.subjectCodeableConcept == subjectCodeableConcept) &&
            (identical(other.subjectReference, subjectReference) ||
                other.subjectReference == subjectReference) &&
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
            const DeepCollectionEquality().equals(other._comment, _comment) &&
            const DeepCollectionEquality()
                .equals(other._commentElement, _commentElement) &&
            const DeepCollectionEquality()
                .equals(other._useContext, _useContext) &&
            const DeepCollectionEquality()
                .equals(other._jurisdiction, _jurisdiction) &&
            (identical(other.purpose, purpose) || other.purpose == purpose) &&
            (identical(other.purposeElement, purposeElement) ||
                other.purposeElement == purposeElement) &&
            (identical(other.usage, usage) || other.usage == usage) &&
            (identical(other.usageElement, usageElement) ||
                other.usageElement == usageElement) &&
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
            const DeepCollectionEquality().equals(other._topic, _topic) &&
            const DeepCollectionEquality().equals(other._author, _author) &&
            const DeepCollectionEquality().equals(other._editor, _editor) &&
            const DeepCollectionEquality().equals(other._reviewer, _reviewer) &&
            const DeepCollectionEquality().equals(other._endorser, _endorser) &&
            const DeepCollectionEquality()
                .equals(other._relatedArtifact, _relatedArtifact) &&
            const DeepCollectionEquality().equals(other._library_, _library_) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.variableType, variableType) ||
                other.variableType == variableType) &&
            (identical(other.variableTypeElement, variableTypeElement) ||
                other.variableTypeElement == variableTypeElement) &&
            const DeepCollectionEquality().equals(other._characteristic, _characteristic));
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
        shortTitle,
        shortTitleElement,
        subtitle,
        subtitleElement,
        status,
        statusElement,
        experimental,
        experimentalElement,
        subjectCodeableConcept,
        subjectReference,
        date,
        dateElement,
        publisher,
        publisherElement,
        const DeepCollectionEquality().hash(_contact),
        description,
        descriptionElement,
        const DeepCollectionEquality().hash(_comment),
        const DeepCollectionEquality().hash(_commentElement),
        const DeepCollectionEquality().hash(_useContext),
        const DeepCollectionEquality().hash(_jurisdiction),
        purpose,
        purposeElement,
        usage,
        usageElement,
        copyright,
        copyrightElement,
        approvalDate,
        approvalDateElement,
        lastReviewDate,
        lastReviewDateElement,
        effectivePeriod,
        const DeepCollectionEquality().hash(_topic),
        const DeepCollectionEquality().hash(_author),
        const DeepCollectionEquality().hash(_editor),
        const DeepCollectionEquality().hash(_reviewer),
        const DeepCollectionEquality().hash(_endorser),
        const DeepCollectionEquality().hash(_relatedArtifact),
        const DeepCollectionEquality().hash(_library_),
        type,
        typeElement,
        variableType,
        variableTypeElement,
        const DeepCollectionEquality().hash(_characteristic)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResearchElementDefinitionImplCopyWith<_$ResearchElementDefinitionImpl>
      get copyWith => __$$ResearchElementDefinitionImplCopyWithImpl<
          _$ResearchElementDefinitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResearchElementDefinitionImplToJson(
      this,
    );
  }
}

abstract class _ResearchElementDefinition extends ResearchElementDefinition {
  const factory _ResearchElementDefinition(
      {@JsonKey(unknownEnumValue: R4ResourceType.ResearchElementDefinition)
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
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final String? title,
      @JsonKey(name: '_title') final PrimitiveElement? titleElement,
      final String? shortTitle,
      @JsonKey(name: '_shortTitle') final PrimitiveElement? shortTitleElement,
      final String? subtitle,
      @JsonKey(name: '_subtitle') final PrimitiveElement? subtitleElement,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final FhirBoolean? experimental,
      @JsonKey(name: '_experimental')
      final PrimitiveElement? experimentalElement,
      final CodeableConcept? subjectCodeableConcept,
      final Reference? subjectReference,
      final FhirDateTime? date,
      @JsonKey(name: '_date') final PrimitiveElement? dateElement,
      final String? publisher,
      @JsonKey(name: '_publisher') final PrimitiveElement? publisherElement,
      final List<ContactDetail>? contact,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<String>? comment,
      @JsonKey(name: '_comment') final List<PrimitiveElement>? commentElement,
      final List<UsageContext>? useContext,
      final List<CodeableConcept>? jurisdiction,
      final FhirMarkdown? purpose,
      @JsonKey(name: '_purpose') final PrimitiveElement? purposeElement,
      final String? usage,
      @JsonKey(name: '_usage') final PrimitiveElement? usageElement,
      final FhirMarkdown? copyright,
      @JsonKey(name: '_copyright') final PrimitiveElement? copyrightElement,
      final FhirDate? approvalDate,
      @JsonKey(name: '_approvalDate')
      final PrimitiveElement? approvalDateElement,
      final FhirDate? lastReviewDate,
      @JsonKey(name: '_lastReviewDate')
      final PrimitiveElement? lastReviewDateElement,
      final Period? effectivePeriod,
      final List<CodeableConcept>? topic,
      final List<ContactDetail>? author,
      final List<ContactDetail>? editor,
      final List<ContactDetail>? reviewer,
      final List<ContactDetail>? endorser,
      final List<RelatedArtifact>? relatedArtifact,
      @JsonKey(name: 'library') final List<FhirCanonical>? library_,
      final FhirCode? type,
      @JsonKey(name: '_type') final PrimitiveElement? typeElement,
      final FhirCode? variableType,
      @JsonKey(name: '_variableType')
      final PrimitiveElement? variableTypeElement,
      required final List<ResearchElementDefinitionCharacteristic>
          characteristic}) = _$ResearchElementDefinitionImpl;
  const _ResearchElementDefinition._() : super._();

  factory _ResearchElementDefinition.fromJson(Map<String, dynamic> json) =
      _$ResearchElementDefinitionImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.ResearchElementDefinition)
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
  String? get shortTitle;
  @override
  @JsonKey(name: '_shortTitle')
  PrimitiveElement? get shortTitleElement;
  @override
  String? get subtitle;
  @override
  @JsonKey(name: '_subtitle')
  PrimitiveElement? get subtitleElement;
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
  CodeableConcept? get subjectCodeableConcept;
  @override
  Reference? get subjectReference;
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
  List<String>? get comment;
  @override
  @JsonKey(name: '_comment')
  List<PrimitiveElement>? get commentElement;
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
  String? get usage;
  @override
  @JsonKey(name: '_usage')
  PrimitiveElement? get usageElement;
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
  @override
  List<CodeableConcept>? get topic;
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
  @JsonKey(name: 'library')
  List<FhirCanonical>? get library_;
  @override
  FhirCode? get type;
  @override
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;
  @override
  FhirCode? get variableType;
  @override
  @JsonKey(name: '_variableType')
  PrimitiveElement? get variableTypeElement;
  @override
  List<ResearchElementDefinitionCharacteristic> get characteristic;
  @override
  @JsonKey(ignore: true)
  _$$ResearchElementDefinitionImplCopyWith<_$ResearchElementDefinitionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResearchElementDefinitionCharacteristic
    _$ResearchElementDefinitionCharacteristicFromJson(
        Map<String, dynamic> json) {
  return _ResearchElementDefinitionCharacteristic.fromJson(json);
}

/// @nodoc
mixin _$ResearchElementDefinitionCharacteristic {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  CodeableConcept? get definitionCodeableConcept =>
      throw _privateConstructorUsedError;
  FhirCanonical? get definitionCanonical => throw _privateConstructorUsedError;
  @JsonKey(name: '_definitionCanonical')
  PrimitiveElement? get definitionCanonicalElement =>
      throw _privateConstructorUsedError;
  FhirExpression? get definitionExpression =>
      throw _privateConstructorUsedError;
  DataRequirement? get definitionDataRequirement =>
      throw _privateConstructorUsedError;
  List<UsageContext>? get usageContext => throw _privateConstructorUsedError;
  FhirBoolean? get exclude => throw _privateConstructorUsedError;
  @JsonKey(name: '_exclude')
  PrimitiveElement? get excludeElement => throw _privateConstructorUsedError;
  CodeableConcept? get unitOfMeasure => throw _privateConstructorUsedError;
  String? get studyEffectiveDescription => throw _privateConstructorUsedError;
  @JsonKey(name: '_studyEffectiveDescription')
  PrimitiveElement? get studyEffectiveDescriptionElement =>
      throw _privateConstructorUsedError;
  FhirDateTime? get studyEffectiveDateTime =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_studyEffectiveDateTime')
  PrimitiveElement? get studyEffectiveDateTimeElement =>
      throw _privateConstructorUsedError;
  Period? get studyEffectivePeriod => throw _privateConstructorUsedError;
  FhirDuration? get studyEffectiveDuration =>
      throw _privateConstructorUsedError;
  Timing? get studyEffectiveTiming => throw _privateConstructorUsedError;
  FhirDuration? get studyEffectiveTimeFromStart =>
      throw _privateConstructorUsedError;
  FhirCode? get studyEffectiveGroupMeasure =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_studyEffectiveGroupMeasure')
  PrimitiveElement? get studyEffectiveGroupMeasureElement =>
      throw _privateConstructorUsedError;
  String? get participantEffectiveDescription =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_participantEffectiveDescription')
  PrimitiveElement? get participantEffectiveDescriptionElement =>
      throw _privateConstructorUsedError;
  FhirDateTime? get participantEffectiveDateTime =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_participantEffectiveDateTime')
  PrimitiveElement? get participantEffectiveDateTimeElement =>
      throw _privateConstructorUsedError;
  Period? get participantEffectivePeriod => throw _privateConstructorUsedError;
  FhirDuration? get participantEffectiveDuration =>
      throw _privateConstructorUsedError;
  Timing? get participantEffectiveTiming => throw _privateConstructorUsedError;
  FhirDuration? get participantEffectiveTimeFromStart =>
      throw _privateConstructorUsedError;
  FhirCode? get participantEffectiveGroupMeasure =>
      throw _privateConstructorUsedError;
  @JsonKey(name: '_participantEffectiveGroupMeasure')
  PrimitiveElement? get participantEffectiveGroupMeasureElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResearchElementDefinitionCharacteristicCopyWith<
          ResearchElementDefinitionCharacteristic>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResearchElementDefinitionCharacteristicCopyWith<$Res> {
  factory $ResearchElementDefinitionCharacteristicCopyWith(
          ResearchElementDefinitionCharacteristic value,
          $Res Function(ResearchElementDefinitionCharacteristic) then) =
      _$ResearchElementDefinitionCharacteristicCopyWithImpl<$Res,
          ResearchElementDefinitionCharacteristic>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? definitionCodeableConcept,
      FhirCanonical? definitionCanonical,
      @JsonKey(name: '_definitionCanonical')
      PrimitiveElement? definitionCanonicalElement,
      FhirExpression? definitionExpression,
      DataRequirement? definitionDataRequirement,
      List<UsageContext>? usageContext,
      FhirBoolean? exclude,
      @JsonKey(name: '_exclude') PrimitiveElement? excludeElement,
      CodeableConcept? unitOfMeasure,
      String? studyEffectiveDescription,
      @JsonKey(name: '_studyEffectiveDescription')
      PrimitiveElement? studyEffectiveDescriptionElement,
      FhirDateTime? studyEffectiveDateTime,
      @JsonKey(name: '_studyEffectiveDateTime')
      PrimitiveElement? studyEffectiveDateTimeElement,
      Period? studyEffectivePeriod,
      FhirDuration? studyEffectiveDuration,
      Timing? studyEffectiveTiming,
      FhirDuration? studyEffectiveTimeFromStart,
      FhirCode? studyEffectiveGroupMeasure,
      @JsonKey(name: '_studyEffectiveGroupMeasure')
      PrimitiveElement? studyEffectiveGroupMeasureElement,
      String? participantEffectiveDescription,
      @JsonKey(name: '_participantEffectiveDescription')
      PrimitiveElement? participantEffectiveDescriptionElement,
      FhirDateTime? participantEffectiveDateTime,
      @JsonKey(name: '_participantEffectiveDateTime')
      PrimitiveElement? participantEffectiveDateTimeElement,
      Period? participantEffectivePeriod,
      FhirDuration? participantEffectiveDuration,
      Timing? participantEffectiveTiming,
      FhirDuration? participantEffectiveTimeFromStart,
      FhirCode? participantEffectiveGroupMeasure,
      @JsonKey(name: '_participantEffectiveGroupMeasure')
      PrimitiveElement? participantEffectiveGroupMeasureElement});

  $CodeableConceptCopyWith<$Res>? get definitionCodeableConcept;
  $FhirExpressionCopyWith<$Res>? get definitionExpression;
  $DataRequirementCopyWith<$Res>? get definitionDataRequirement;
  $CodeableConceptCopyWith<$Res>? get unitOfMeasure;
  $PeriodCopyWith<$Res>? get studyEffectivePeriod;
  $FhirDurationCopyWith<$Res>? get studyEffectiveDuration;
  $TimingCopyWith<$Res>? get studyEffectiveTiming;
  $FhirDurationCopyWith<$Res>? get studyEffectiveTimeFromStart;
  $PeriodCopyWith<$Res>? get participantEffectivePeriod;
  $FhirDurationCopyWith<$Res>? get participantEffectiveDuration;
  $TimingCopyWith<$Res>? get participantEffectiveTiming;
  $FhirDurationCopyWith<$Res>? get participantEffectiveTimeFromStart;
}

/// @nodoc
class _$ResearchElementDefinitionCharacteristicCopyWithImpl<$Res,
        $Val extends ResearchElementDefinitionCharacteristic>
    implements $ResearchElementDefinitionCharacteristicCopyWith<$Res> {
  _$ResearchElementDefinitionCharacteristicCopyWithImpl(
      this._value, this._then);

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
    Object? definitionCodeableConcept = freezed,
    Object? definitionCanonical = freezed,
    Object? definitionCanonicalElement = freezed,
    Object? definitionExpression = freezed,
    Object? definitionDataRequirement = freezed,
    Object? usageContext = freezed,
    Object? exclude = freezed,
    Object? excludeElement = freezed,
    Object? unitOfMeasure = freezed,
    Object? studyEffectiveDescription = freezed,
    Object? studyEffectiveDescriptionElement = freezed,
    Object? studyEffectiveDateTime = freezed,
    Object? studyEffectiveDateTimeElement = freezed,
    Object? studyEffectivePeriod = freezed,
    Object? studyEffectiveDuration = freezed,
    Object? studyEffectiveTiming = freezed,
    Object? studyEffectiveTimeFromStart = freezed,
    Object? studyEffectiveGroupMeasure = freezed,
    Object? studyEffectiveGroupMeasureElement = freezed,
    Object? participantEffectiveDescription = freezed,
    Object? participantEffectiveDescriptionElement = freezed,
    Object? participantEffectiveDateTime = freezed,
    Object? participantEffectiveDateTimeElement = freezed,
    Object? participantEffectivePeriod = freezed,
    Object? participantEffectiveDuration = freezed,
    Object? participantEffectiveTiming = freezed,
    Object? participantEffectiveTimeFromStart = freezed,
    Object? participantEffectiveGroupMeasure = freezed,
    Object? participantEffectiveGroupMeasureElement = freezed,
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
      definitionCodeableConcept: freezed == definitionCodeableConcept
          ? _value.definitionCodeableConcept
          : definitionCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      definitionCanonical: freezed == definitionCanonical
          ? _value.definitionCanonical
          : definitionCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      definitionCanonicalElement: freezed == definitionCanonicalElement
          ? _value.definitionCanonicalElement
          : definitionCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      definitionExpression: freezed == definitionExpression
          ? _value.definitionExpression
          : definitionExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      definitionDataRequirement: freezed == definitionDataRequirement
          ? _value.definitionDataRequirement
          : definitionDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      usageContext: freezed == usageContext
          ? _value.usageContext
          : usageContext // ignore: cast_nullable_to_non_nullable
              as List<UsageContext>?,
      exclude: freezed == exclude
          ? _value.exclude
          : exclude // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      excludeElement: freezed == excludeElement
          ? _value.excludeElement
          : excludeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      unitOfMeasure: freezed == unitOfMeasure
          ? _value.unitOfMeasure
          : unitOfMeasure // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      studyEffectiveDescription: freezed == studyEffectiveDescription
          ? _value.studyEffectiveDescription
          : studyEffectiveDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      studyEffectiveDescriptionElement: freezed ==
              studyEffectiveDescriptionElement
          ? _value.studyEffectiveDescriptionElement
          : studyEffectiveDescriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      studyEffectiveDateTime: freezed == studyEffectiveDateTime
          ? _value.studyEffectiveDateTime
          : studyEffectiveDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      studyEffectiveDateTimeElement: freezed == studyEffectiveDateTimeElement
          ? _value.studyEffectiveDateTimeElement
          : studyEffectiveDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      studyEffectivePeriod: freezed == studyEffectivePeriod
          ? _value.studyEffectivePeriod
          : studyEffectivePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      studyEffectiveDuration: freezed == studyEffectiveDuration
          ? _value.studyEffectiveDuration
          : studyEffectiveDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      studyEffectiveTiming: freezed == studyEffectiveTiming
          ? _value.studyEffectiveTiming
          : studyEffectiveTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      studyEffectiveTimeFromStart: freezed == studyEffectiveTimeFromStart
          ? _value.studyEffectiveTimeFromStart
          : studyEffectiveTimeFromStart // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      studyEffectiveGroupMeasure: freezed == studyEffectiveGroupMeasure
          ? _value.studyEffectiveGroupMeasure
          : studyEffectiveGroupMeasure // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      studyEffectiveGroupMeasureElement: freezed ==
              studyEffectiveGroupMeasureElement
          ? _value.studyEffectiveGroupMeasureElement
          : studyEffectiveGroupMeasureElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      participantEffectiveDescription: freezed ==
              participantEffectiveDescription
          ? _value.participantEffectiveDescription
          : participantEffectiveDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      participantEffectiveDescriptionElement: freezed ==
              participantEffectiveDescriptionElement
          ? _value.participantEffectiveDescriptionElement
          : participantEffectiveDescriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      participantEffectiveDateTime: freezed == participantEffectiveDateTime
          ? _value.participantEffectiveDateTime
          : participantEffectiveDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      participantEffectiveDateTimeElement: freezed ==
              participantEffectiveDateTimeElement
          ? _value.participantEffectiveDateTimeElement
          : participantEffectiveDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      participantEffectivePeriod: freezed == participantEffectivePeriod
          ? _value.participantEffectivePeriod
          : participantEffectivePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      participantEffectiveDuration: freezed == participantEffectiveDuration
          ? _value.participantEffectiveDuration
          : participantEffectiveDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      participantEffectiveTiming: freezed == participantEffectiveTiming
          ? _value.participantEffectiveTiming
          : participantEffectiveTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      participantEffectiveTimeFromStart: freezed ==
              participantEffectiveTimeFromStart
          ? _value.participantEffectiveTimeFromStart
          : participantEffectiveTimeFromStart // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      participantEffectiveGroupMeasure: freezed ==
              participantEffectiveGroupMeasure
          ? _value.participantEffectiveGroupMeasure
          : participantEffectiveGroupMeasure // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      participantEffectiveGroupMeasureElement: freezed ==
              participantEffectiveGroupMeasureElement
          ? _value.participantEffectiveGroupMeasureElement
          : participantEffectiveGroupMeasureElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get definitionCodeableConcept {
    if (_value.definitionCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.definitionCodeableConcept!,
        (value) {
      return _then(_value.copyWith(definitionCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirExpressionCopyWith<$Res>? get definitionExpression {
    if (_value.definitionExpression == null) {
      return null;
    }

    return $FhirExpressionCopyWith<$Res>(_value.definitionExpression!, (value) {
      return _then(_value.copyWith(definitionExpression: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataRequirementCopyWith<$Res>? get definitionDataRequirement {
    if (_value.definitionDataRequirement == null) {
      return null;
    }

    return $DataRequirementCopyWith<$Res>(_value.definitionDataRequirement!,
        (value) {
      return _then(_value.copyWith(definitionDataRequirement: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get unitOfMeasure {
    if (_value.unitOfMeasure == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.unitOfMeasure!, (value) {
      return _then(_value.copyWith(unitOfMeasure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get studyEffectivePeriod {
    if (_value.studyEffectivePeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.studyEffectivePeriod!, (value) {
      return _then(_value.copyWith(studyEffectivePeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get studyEffectiveDuration {
    if (_value.studyEffectiveDuration == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.studyEffectiveDuration!, (value) {
      return _then(_value.copyWith(studyEffectiveDuration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get studyEffectiveTiming {
    if (_value.studyEffectiveTiming == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.studyEffectiveTiming!, (value) {
      return _then(_value.copyWith(studyEffectiveTiming: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get studyEffectiveTimeFromStart {
    if (_value.studyEffectiveTimeFromStart == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.studyEffectiveTimeFromStart!,
        (value) {
      return _then(_value.copyWith(studyEffectiveTimeFromStart: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get participantEffectivePeriod {
    if (_value.participantEffectivePeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.participantEffectivePeriod!, (value) {
      return _then(_value.copyWith(participantEffectivePeriod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get participantEffectiveDuration {
    if (_value.participantEffectiveDuration == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.participantEffectiveDuration!,
        (value) {
      return _then(
          _value.copyWith(participantEffectiveDuration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TimingCopyWith<$Res>? get participantEffectiveTiming {
    if (_value.participantEffectiveTiming == null) {
      return null;
    }

    return $TimingCopyWith<$Res>(_value.participantEffectiveTiming!, (value) {
      return _then(_value.copyWith(participantEffectiveTiming: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get participantEffectiveTimeFromStart {
    if (_value.participantEffectiveTimeFromStart == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(
        _value.participantEffectiveTimeFromStart!, (value) {
      return _then(
          _value.copyWith(participantEffectiveTimeFromStart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResearchElementDefinitionCharacteristicImplCopyWith<$Res>
    implements $ResearchElementDefinitionCharacteristicCopyWith<$Res> {
  factory _$$ResearchElementDefinitionCharacteristicImplCopyWith(
          _$ResearchElementDefinitionCharacteristicImpl value,
          $Res Function(_$ResearchElementDefinitionCharacteristicImpl) then) =
      __$$ResearchElementDefinitionCharacteristicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? definitionCodeableConcept,
      FhirCanonical? definitionCanonical,
      @JsonKey(name: '_definitionCanonical')
      PrimitiveElement? definitionCanonicalElement,
      FhirExpression? definitionExpression,
      DataRequirement? definitionDataRequirement,
      List<UsageContext>? usageContext,
      FhirBoolean? exclude,
      @JsonKey(name: '_exclude') PrimitiveElement? excludeElement,
      CodeableConcept? unitOfMeasure,
      String? studyEffectiveDescription,
      @JsonKey(name: '_studyEffectiveDescription')
      PrimitiveElement? studyEffectiveDescriptionElement,
      FhirDateTime? studyEffectiveDateTime,
      @JsonKey(name: '_studyEffectiveDateTime')
      PrimitiveElement? studyEffectiveDateTimeElement,
      Period? studyEffectivePeriod,
      FhirDuration? studyEffectiveDuration,
      Timing? studyEffectiveTiming,
      FhirDuration? studyEffectiveTimeFromStart,
      FhirCode? studyEffectiveGroupMeasure,
      @JsonKey(name: '_studyEffectiveGroupMeasure')
      PrimitiveElement? studyEffectiveGroupMeasureElement,
      String? participantEffectiveDescription,
      @JsonKey(name: '_participantEffectiveDescription')
      PrimitiveElement? participantEffectiveDescriptionElement,
      FhirDateTime? participantEffectiveDateTime,
      @JsonKey(name: '_participantEffectiveDateTime')
      PrimitiveElement? participantEffectiveDateTimeElement,
      Period? participantEffectivePeriod,
      FhirDuration? participantEffectiveDuration,
      Timing? participantEffectiveTiming,
      FhirDuration? participantEffectiveTimeFromStart,
      FhirCode? participantEffectiveGroupMeasure,
      @JsonKey(name: '_participantEffectiveGroupMeasure')
      PrimitiveElement? participantEffectiveGroupMeasureElement});

  @override
  $CodeableConceptCopyWith<$Res>? get definitionCodeableConcept;
  @override
  $FhirExpressionCopyWith<$Res>? get definitionExpression;
  @override
  $DataRequirementCopyWith<$Res>? get definitionDataRequirement;
  @override
  $CodeableConceptCopyWith<$Res>? get unitOfMeasure;
  @override
  $PeriodCopyWith<$Res>? get studyEffectivePeriod;
  @override
  $FhirDurationCopyWith<$Res>? get studyEffectiveDuration;
  @override
  $TimingCopyWith<$Res>? get studyEffectiveTiming;
  @override
  $FhirDurationCopyWith<$Res>? get studyEffectiveTimeFromStart;
  @override
  $PeriodCopyWith<$Res>? get participantEffectivePeriod;
  @override
  $FhirDurationCopyWith<$Res>? get participantEffectiveDuration;
  @override
  $TimingCopyWith<$Res>? get participantEffectiveTiming;
  @override
  $FhirDurationCopyWith<$Res>? get participantEffectiveTimeFromStart;
}

/// @nodoc
class __$$ResearchElementDefinitionCharacteristicImplCopyWithImpl<$Res>
    extends _$ResearchElementDefinitionCharacteristicCopyWithImpl<$Res,
        _$ResearchElementDefinitionCharacteristicImpl>
    implements _$$ResearchElementDefinitionCharacteristicImplCopyWith<$Res> {
  __$$ResearchElementDefinitionCharacteristicImplCopyWithImpl(
      _$ResearchElementDefinitionCharacteristicImpl _value,
      $Res Function(_$ResearchElementDefinitionCharacteristicImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? definitionCodeableConcept = freezed,
    Object? definitionCanonical = freezed,
    Object? definitionCanonicalElement = freezed,
    Object? definitionExpression = freezed,
    Object? definitionDataRequirement = freezed,
    Object? usageContext = freezed,
    Object? exclude = freezed,
    Object? excludeElement = freezed,
    Object? unitOfMeasure = freezed,
    Object? studyEffectiveDescription = freezed,
    Object? studyEffectiveDescriptionElement = freezed,
    Object? studyEffectiveDateTime = freezed,
    Object? studyEffectiveDateTimeElement = freezed,
    Object? studyEffectivePeriod = freezed,
    Object? studyEffectiveDuration = freezed,
    Object? studyEffectiveTiming = freezed,
    Object? studyEffectiveTimeFromStart = freezed,
    Object? studyEffectiveGroupMeasure = freezed,
    Object? studyEffectiveGroupMeasureElement = freezed,
    Object? participantEffectiveDescription = freezed,
    Object? participantEffectiveDescriptionElement = freezed,
    Object? participantEffectiveDateTime = freezed,
    Object? participantEffectiveDateTimeElement = freezed,
    Object? participantEffectivePeriod = freezed,
    Object? participantEffectiveDuration = freezed,
    Object? participantEffectiveTiming = freezed,
    Object? participantEffectiveTimeFromStart = freezed,
    Object? participantEffectiveGroupMeasure = freezed,
    Object? participantEffectiveGroupMeasureElement = freezed,
  }) {
    return _then(_$ResearchElementDefinitionCharacteristicImpl(
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
      definitionCodeableConcept: freezed == definitionCodeableConcept
          ? _value.definitionCodeableConcept
          : definitionCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      definitionCanonical: freezed == definitionCanonical
          ? _value.definitionCanonical
          : definitionCanonical // ignore: cast_nullable_to_non_nullable
              as FhirCanonical?,
      definitionCanonicalElement: freezed == definitionCanonicalElement
          ? _value.definitionCanonicalElement
          : definitionCanonicalElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      definitionExpression: freezed == definitionExpression
          ? _value.definitionExpression
          : definitionExpression // ignore: cast_nullable_to_non_nullable
              as FhirExpression?,
      definitionDataRequirement: freezed == definitionDataRequirement
          ? _value.definitionDataRequirement
          : definitionDataRequirement // ignore: cast_nullable_to_non_nullable
              as DataRequirement?,
      usageContext: freezed == usageContext
          ? _value._usageContext
          : usageContext // ignore: cast_nullable_to_non_nullable
              as List<UsageContext>?,
      exclude: freezed == exclude
          ? _value.exclude
          : exclude // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      excludeElement: freezed == excludeElement
          ? _value.excludeElement
          : excludeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      unitOfMeasure: freezed == unitOfMeasure
          ? _value.unitOfMeasure
          : unitOfMeasure // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      studyEffectiveDescription: freezed == studyEffectiveDescription
          ? _value.studyEffectiveDescription
          : studyEffectiveDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      studyEffectiveDescriptionElement: freezed ==
              studyEffectiveDescriptionElement
          ? _value.studyEffectiveDescriptionElement
          : studyEffectiveDescriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      studyEffectiveDateTime: freezed == studyEffectiveDateTime
          ? _value.studyEffectiveDateTime
          : studyEffectiveDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      studyEffectiveDateTimeElement: freezed == studyEffectiveDateTimeElement
          ? _value.studyEffectiveDateTimeElement
          : studyEffectiveDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      studyEffectivePeriod: freezed == studyEffectivePeriod
          ? _value.studyEffectivePeriod
          : studyEffectivePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      studyEffectiveDuration: freezed == studyEffectiveDuration
          ? _value.studyEffectiveDuration
          : studyEffectiveDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      studyEffectiveTiming: freezed == studyEffectiveTiming
          ? _value.studyEffectiveTiming
          : studyEffectiveTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      studyEffectiveTimeFromStart: freezed == studyEffectiveTimeFromStart
          ? _value.studyEffectiveTimeFromStart
          : studyEffectiveTimeFromStart // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      studyEffectiveGroupMeasure: freezed == studyEffectiveGroupMeasure
          ? _value.studyEffectiveGroupMeasure
          : studyEffectiveGroupMeasure // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      studyEffectiveGroupMeasureElement: freezed ==
              studyEffectiveGroupMeasureElement
          ? _value.studyEffectiveGroupMeasureElement
          : studyEffectiveGroupMeasureElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      participantEffectiveDescription: freezed ==
              participantEffectiveDescription
          ? _value.participantEffectiveDescription
          : participantEffectiveDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      participantEffectiveDescriptionElement: freezed ==
              participantEffectiveDescriptionElement
          ? _value.participantEffectiveDescriptionElement
          : participantEffectiveDescriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      participantEffectiveDateTime: freezed == participantEffectiveDateTime
          ? _value.participantEffectiveDateTime
          : participantEffectiveDateTime // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      participantEffectiveDateTimeElement: freezed ==
              participantEffectiveDateTimeElement
          ? _value.participantEffectiveDateTimeElement
          : participantEffectiveDateTimeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      participantEffectivePeriod: freezed == participantEffectivePeriod
          ? _value.participantEffectivePeriod
          : participantEffectivePeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      participantEffectiveDuration: freezed == participantEffectiveDuration
          ? _value.participantEffectiveDuration
          : participantEffectiveDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      participantEffectiveTiming: freezed == participantEffectiveTiming
          ? _value.participantEffectiveTiming
          : participantEffectiveTiming // ignore: cast_nullable_to_non_nullable
              as Timing?,
      participantEffectiveTimeFromStart: freezed ==
              participantEffectiveTimeFromStart
          ? _value.participantEffectiveTimeFromStart
          : participantEffectiveTimeFromStart // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      participantEffectiveGroupMeasure: freezed ==
              participantEffectiveGroupMeasure
          ? _value.participantEffectiveGroupMeasure
          : participantEffectiveGroupMeasure // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      participantEffectiveGroupMeasureElement: freezed ==
              participantEffectiveGroupMeasureElement
          ? _value.participantEffectiveGroupMeasureElement
          : participantEffectiveGroupMeasureElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResearchElementDefinitionCharacteristicImpl
    extends _ResearchElementDefinitionCharacteristic {
  const _$ResearchElementDefinitionCharacteristicImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.definitionCodeableConcept,
      this.definitionCanonical,
      @JsonKey(name: '_definitionCanonical') this.definitionCanonicalElement,
      this.definitionExpression,
      this.definitionDataRequirement,
      final List<UsageContext>? usageContext,
      this.exclude,
      @JsonKey(name: '_exclude') this.excludeElement,
      this.unitOfMeasure,
      this.studyEffectiveDescription,
      @JsonKey(name: '_studyEffectiveDescription')
      this.studyEffectiveDescriptionElement,
      this.studyEffectiveDateTime,
      @JsonKey(name: '_studyEffectiveDateTime')
      this.studyEffectiveDateTimeElement,
      this.studyEffectivePeriod,
      this.studyEffectiveDuration,
      this.studyEffectiveTiming,
      this.studyEffectiveTimeFromStart,
      this.studyEffectiveGroupMeasure,
      @JsonKey(name: '_studyEffectiveGroupMeasure')
      this.studyEffectiveGroupMeasureElement,
      this.participantEffectiveDescription,
      @JsonKey(name: '_participantEffectiveDescription')
      this.participantEffectiveDescriptionElement,
      this.participantEffectiveDateTime,
      @JsonKey(name: '_participantEffectiveDateTime')
      this.participantEffectiveDateTimeElement,
      this.participantEffectivePeriod,
      this.participantEffectiveDuration,
      this.participantEffectiveTiming,
      this.participantEffectiveTimeFromStart,
      this.participantEffectiveGroupMeasure,
      @JsonKey(name: '_participantEffectiveGroupMeasure')
      this.participantEffectiveGroupMeasureElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _usageContext = usageContext,
        super._();

  factory _$ResearchElementDefinitionCharacteristicImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ResearchElementDefinitionCharacteristicImplFromJson(json);

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
  final CodeableConcept? definitionCodeableConcept;
  @override
  final FhirCanonical? definitionCanonical;
  @override
  @JsonKey(name: '_definitionCanonical')
  final PrimitiveElement? definitionCanonicalElement;
  @override
  final FhirExpression? definitionExpression;
  @override
  final DataRequirement? definitionDataRequirement;
  final List<UsageContext>? _usageContext;
  @override
  List<UsageContext>? get usageContext {
    final value = _usageContext;
    if (value == null) return null;
    if (_usageContext is EqualUnmodifiableListView) return _usageContext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FhirBoolean? exclude;
  @override
  @JsonKey(name: '_exclude')
  final PrimitiveElement? excludeElement;
  @override
  final CodeableConcept? unitOfMeasure;
  @override
  final String? studyEffectiveDescription;
  @override
  @JsonKey(name: '_studyEffectiveDescription')
  final PrimitiveElement? studyEffectiveDescriptionElement;
  @override
  final FhirDateTime? studyEffectiveDateTime;
  @override
  @JsonKey(name: '_studyEffectiveDateTime')
  final PrimitiveElement? studyEffectiveDateTimeElement;
  @override
  final Period? studyEffectivePeriod;
  @override
  final FhirDuration? studyEffectiveDuration;
  @override
  final Timing? studyEffectiveTiming;
  @override
  final FhirDuration? studyEffectiveTimeFromStart;
  @override
  final FhirCode? studyEffectiveGroupMeasure;
  @override
  @JsonKey(name: '_studyEffectiveGroupMeasure')
  final PrimitiveElement? studyEffectiveGroupMeasureElement;
  @override
  final String? participantEffectiveDescription;
  @override
  @JsonKey(name: '_participantEffectiveDescription')
  final PrimitiveElement? participantEffectiveDescriptionElement;
  @override
  final FhirDateTime? participantEffectiveDateTime;
  @override
  @JsonKey(name: '_participantEffectiveDateTime')
  final PrimitiveElement? participantEffectiveDateTimeElement;
  @override
  final Period? participantEffectivePeriod;
  @override
  final FhirDuration? participantEffectiveDuration;
  @override
  final Timing? participantEffectiveTiming;
  @override
  final FhirDuration? participantEffectiveTimeFromStart;
  @override
  final FhirCode? participantEffectiveGroupMeasure;
  @override
  @JsonKey(name: '_participantEffectiveGroupMeasure')
  final PrimitiveElement? participantEffectiveGroupMeasureElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResearchElementDefinitionCharacteristicImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.definitionCodeableConcept, definitionCodeableConcept) ||
                other.definitionCodeableConcept == definitionCodeableConcept) &&
            (identical(other.definitionCanonical, definitionCanonical) ||
                other.definitionCanonical == definitionCanonical) &&
            (identical(other.definitionCanonicalElement, definitionCanonicalElement) ||
                other.definitionCanonicalElement ==
                    definitionCanonicalElement) &&
            (identical(other.definitionExpression, definitionExpression) ||
                other.definitionExpression == definitionExpression) &&
            (identical(other.definitionDataRequirement, definitionDataRequirement) ||
                other.definitionDataRequirement == definitionDataRequirement) &&
            const DeepCollectionEquality()
                .equals(other._usageContext, _usageContext) &&
            (identical(other.exclude, exclude) || other.exclude == exclude) &&
            (identical(other.excludeElement, excludeElement) ||
                other.excludeElement == excludeElement) &&
            (identical(other.unitOfMeasure, unitOfMeasure) ||
                other.unitOfMeasure == unitOfMeasure) &&
            (identical(other.studyEffectiveDescription, studyEffectiveDescription) ||
                other.studyEffectiveDescription == studyEffectiveDescription) &&
            (identical(other.studyEffectiveDescriptionElement, studyEffectiveDescriptionElement) ||
                other.studyEffectiveDescriptionElement ==
                    studyEffectiveDescriptionElement) &&
            (identical(other.studyEffectiveDateTime, studyEffectiveDateTime) ||
                other.studyEffectiveDateTime == studyEffectiveDateTime) &&
            (identical(other.studyEffectiveDateTimeElement, studyEffectiveDateTimeElement) ||
                other.studyEffectiveDateTimeElement ==
                    studyEffectiveDateTimeElement) &&
            (identical(other.studyEffectivePeriod, studyEffectivePeriod) ||
                other.studyEffectivePeriod == studyEffectivePeriod) &&
            (identical(other.studyEffectiveDuration, studyEffectiveDuration) ||
                other.studyEffectiveDuration == studyEffectiveDuration) &&
            (identical(other.studyEffectiveTiming, studyEffectiveTiming) ||
                other.studyEffectiveTiming == studyEffectiveTiming) &&
            (identical(other.studyEffectiveTimeFromStart, studyEffectiveTimeFromStart) ||
                other.studyEffectiveTimeFromStart ==
                    studyEffectiveTimeFromStart) &&
            (identical(other.studyEffectiveGroupMeasure, studyEffectiveGroupMeasure) ||
                other.studyEffectiveGroupMeasure ==
                    studyEffectiveGroupMeasure) &&
            (identical(other.studyEffectiveGroupMeasureElement, studyEffectiveGroupMeasureElement) ||
                other.studyEffectiveGroupMeasureElement == studyEffectiveGroupMeasureElement) &&
            (identical(other.participantEffectiveDescription, participantEffectiveDescription) || other.participantEffectiveDescription == participantEffectiveDescription) &&
            (identical(other.participantEffectiveDescriptionElement, participantEffectiveDescriptionElement) || other.participantEffectiveDescriptionElement == participantEffectiveDescriptionElement) &&
            (identical(other.participantEffectiveDateTime, participantEffectiveDateTime) || other.participantEffectiveDateTime == participantEffectiveDateTime) &&
            (identical(other.participantEffectiveDateTimeElement, participantEffectiveDateTimeElement) || other.participantEffectiveDateTimeElement == participantEffectiveDateTimeElement) &&
            (identical(other.participantEffectivePeriod, participantEffectivePeriod) || other.participantEffectivePeriod == participantEffectivePeriod) &&
            (identical(other.participantEffectiveDuration, participantEffectiveDuration) || other.participantEffectiveDuration == participantEffectiveDuration) &&
            (identical(other.participantEffectiveTiming, participantEffectiveTiming) || other.participantEffectiveTiming == participantEffectiveTiming) &&
            (identical(other.participantEffectiveTimeFromStart, participantEffectiveTimeFromStart) || other.participantEffectiveTimeFromStart == participantEffectiveTimeFromStart) &&
            (identical(other.participantEffectiveGroupMeasure, participantEffectiveGroupMeasure) || other.participantEffectiveGroupMeasure == participantEffectiveGroupMeasure) &&
            (identical(other.participantEffectiveGroupMeasureElement, participantEffectiveGroupMeasureElement) || other.participantEffectiveGroupMeasureElement == participantEffectiveGroupMeasureElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        definitionCodeableConcept,
        definitionCanonical,
        definitionCanonicalElement,
        definitionExpression,
        definitionDataRequirement,
        const DeepCollectionEquality().hash(_usageContext),
        exclude,
        excludeElement,
        unitOfMeasure,
        studyEffectiveDescription,
        studyEffectiveDescriptionElement,
        studyEffectiveDateTime,
        studyEffectiveDateTimeElement,
        studyEffectivePeriod,
        studyEffectiveDuration,
        studyEffectiveTiming,
        studyEffectiveTimeFromStart,
        studyEffectiveGroupMeasure,
        studyEffectiveGroupMeasureElement,
        participantEffectiveDescription,
        participantEffectiveDescriptionElement,
        participantEffectiveDateTime,
        participantEffectiveDateTimeElement,
        participantEffectivePeriod,
        participantEffectiveDuration,
        participantEffectiveTiming,
        participantEffectiveTimeFromStart,
        participantEffectiveGroupMeasure,
        participantEffectiveGroupMeasureElement
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResearchElementDefinitionCharacteristicImplCopyWith<
          _$ResearchElementDefinitionCharacteristicImpl>
      get copyWith =>
          __$$ResearchElementDefinitionCharacteristicImplCopyWithImpl<
              _$ResearchElementDefinitionCharacteristicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResearchElementDefinitionCharacteristicImplToJson(
      this,
    );
  }
}

abstract class _ResearchElementDefinitionCharacteristic
    extends ResearchElementDefinitionCharacteristic {
  const factory _ResearchElementDefinitionCharacteristic(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? definitionCodeableConcept,
          final FhirCanonical? definitionCanonical,
          @JsonKey(name: '_definitionCanonical')
          final PrimitiveElement? definitionCanonicalElement,
          final FhirExpression? definitionExpression,
          final DataRequirement? definitionDataRequirement,
          final List<UsageContext>? usageContext,
          final FhirBoolean? exclude,
          @JsonKey(name: '_exclude') final PrimitiveElement? excludeElement,
          final CodeableConcept? unitOfMeasure,
          final String? studyEffectiveDescription,
          @JsonKey(name: '_studyEffectiveDescription')
          final PrimitiveElement? studyEffectiveDescriptionElement,
          final FhirDateTime? studyEffectiveDateTime,
          @JsonKey(name: '_studyEffectiveDateTime')
          final PrimitiveElement? studyEffectiveDateTimeElement,
          final Period? studyEffectivePeriod,
          final FhirDuration? studyEffectiveDuration,
          final Timing? studyEffectiveTiming,
          final FhirDuration? studyEffectiveTimeFromStart,
          final FhirCode? studyEffectiveGroupMeasure,
          @JsonKey(name: '_studyEffectiveGroupMeasure')
          final PrimitiveElement? studyEffectiveGroupMeasureElement,
          final String? participantEffectiveDescription,
          @JsonKey(name: '_participantEffectiveDescription')
          final PrimitiveElement? participantEffectiveDescriptionElement,
          final FhirDateTime? participantEffectiveDateTime,
          @JsonKey(name: '_participantEffectiveDateTime')
          final PrimitiveElement? participantEffectiveDateTimeElement,
          final Period? participantEffectivePeriod,
          final FhirDuration? participantEffectiveDuration,
          final Timing? participantEffectiveTiming,
          final FhirDuration? participantEffectiveTimeFromStart,
          final FhirCode? participantEffectiveGroupMeasure,
          @JsonKey(name: '_participantEffectiveGroupMeasure')
          final PrimitiveElement? participantEffectiveGroupMeasureElement}) =
      _$ResearchElementDefinitionCharacteristicImpl;
  const _ResearchElementDefinitionCharacteristic._() : super._();

  factory _ResearchElementDefinitionCharacteristic.fromJson(
          Map<String, dynamic> json) =
      _$ResearchElementDefinitionCharacteristicImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  CodeableConcept? get definitionCodeableConcept;
  @override
  FhirCanonical? get definitionCanonical;
  @override
  @JsonKey(name: '_definitionCanonical')
  PrimitiveElement? get definitionCanonicalElement;
  @override
  FhirExpression? get definitionExpression;
  @override
  DataRequirement? get definitionDataRequirement;
  @override
  List<UsageContext>? get usageContext;
  @override
  FhirBoolean? get exclude;
  @override
  @JsonKey(name: '_exclude')
  PrimitiveElement? get excludeElement;
  @override
  CodeableConcept? get unitOfMeasure;
  @override
  String? get studyEffectiveDescription;
  @override
  @JsonKey(name: '_studyEffectiveDescription')
  PrimitiveElement? get studyEffectiveDescriptionElement;
  @override
  FhirDateTime? get studyEffectiveDateTime;
  @override
  @JsonKey(name: '_studyEffectiveDateTime')
  PrimitiveElement? get studyEffectiveDateTimeElement;
  @override
  Period? get studyEffectivePeriod;
  @override
  FhirDuration? get studyEffectiveDuration;
  @override
  Timing? get studyEffectiveTiming;
  @override
  FhirDuration? get studyEffectiveTimeFromStart;
  @override
  FhirCode? get studyEffectiveGroupMeasure;
  @override
  @JsonKey(name: '_studyEffectiveGroupMeasure')
  PrimitiveElement? get studyEffectiveGroupMeasureElement;
  @override
  String? get participantEffectiveDescription;
  @override
  @JsonKey(name: '_participantEffectiveDescription')
  PrimitiveElement? get participantEffectiveDescriptionElement;
  @override
  FhirDateTime? get participantEffectiveDateTime;
  @override
  @JsonKey(name: '_participantEffectiveDateTime')
  PrimitiveElement? get participantEffectiveDateTimeElement;
  @override
  Period? get participantEffectivePeriod;
  @override
  FhirDuration? get participantEffectiveDuration;
  @override
  Timing? get participantEffectiveTiming;
  @override
  FhirDuration? get participantEffectiveTimeFromStart;
  @override
  FhirCode? get participantEffectiveGroupMeasure;
  @override
  @JsonKey(name: '_participantEffectiveGroupMeasure')
  PrimitiveElement? get participantEffectiveGroupMeasureElement;
  @override
  @JsonKey(ignore: true)
  _$$ResearchElementDefinitionCharacteristicImplCopyWith<
          _$ResearchElementDefinitionCharacteristicImpl>
      get copyWith => throw _privateConstructorUsedError;
}
