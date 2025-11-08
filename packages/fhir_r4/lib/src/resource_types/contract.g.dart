// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'contract.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ContractCopyWith<T> extends $DomainResourceCopyWith<T> {
  @override
  T call({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirUri? url,
    FhirString? version,
    ContractResourceStatusCodes? status,
    CodeableConcept? legalState,
    Reference? instantiatesCanonical,
    FhirUri? instantiatesUri,
    CodeableConcept? contentDerivative,
    FhirDateTime? issued,
    Period? applies,
    CodeableConcept? expirationType,
    List<Reference>? subject,
    List<Reference>? authority,
    List<Reference>? domain,
    List<Reference>? site,
    FhirString? name,
    FhirString? title,
    FhirString? subtitle,
    List<FhirString>? alias,
    Reference? author,
    CodeableConcept? scope,
    TopicXContract? topicX,
    CodeableConcept? type,
    List<CodeableConcept>? subType,
    ContractContentDefinition? contentDefinition,
    List<ContractTerm>? term,
    List<Reference>? supportingInfo,
    List<Reference>? relevantHistory,
    List<ContractSigner>? signer,
    List<ContractFriendly>? friendly,
    List<ContractLegal>? legal,
    List<ContractRule>? rule,
    LegallyBindingXContract? legallyBindingX,
    bool? disallowExtensions,
  });
}

class _$ContractCopyWithImpl<T> implements $ContractCopyWith<T> {
  final Contract _value;
  final T Function(Contract) _then;

  _$ContractCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? meta = fhirSentinel,
    Object? implicitRules = fhirSentinel,
    Object? language = fhirSentinel,
    Object? text = fhirSentinel,
    Object? contained = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? url = fhirSentinel,
    Object? version = fhirSentinel,
    Object? status = fhirSentinel,
    Object? legalState = fhirSentinel,
    Object? instantiatesCanonical = fhirSentinel,
    Object? instantiatesUri = fhirSentinel,
    Object? contentDerivative = fhirSentinel,
    Object? issued = fhirSentinel,
    Object? applies = fhirSentinel,
    Object? expirationType = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? authority = fhirSentinel,
    Object? domain = fhirSentinel,
    Object? site = fhirSentinel,
    Object? name = fhirSentinel,
    Object? title = fhirSentinel,
    Object? subtitle = fhirSentinel,
    Object? alias = fhirSentinel,
    Object? author = fhirSentinel,
    Object? scope = fhirSentinel,
    Object? topicX = fhirSentinel,
    Object? type = fhirSentinel,
    Object? subType = fhirSentinel,
    Object? contentDefinition = fhirSentinel,
    Object? term = fhirSentinel,
    Object? supportingInfo = fhirSentinel,
    Object? relevantHistory = fhirSentinel,
    Object? signer = fhirSentinel,
    Object? friendly = fhirSentinel,
    Object? legal = fhirSentinel,
    Object? rule = fhirSentinel,
    Object? legallyBindingX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Contract(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        meta: identical(meta, fhirSentinel) ? _value.meta : meta as FhirMeta?,
        implicitRules: identical(implicitRules, fhirSentinel)
            ? _value.implicitRules
            : implicitRules as FhirUri?,
        language: identical(language, fhirSentinel)
            ? _value.language
            : language as CommonLanguages?,
        text: identical(text, fhirSentinel) ? _value.text : text as Narrative?,
        contained: identical(contained, fhirSentinel)
            ? _value.contained
            : contained as List<Resource>?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        url: identical(url, fhirSentinel) ? _value.url : url as FhirUri?,
        version: identical(version, fhirSentinel)
            ? _value.version
            : version as FhirString?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : status as ContractResourceStatusCodes?,
        legalState: identical(legalState, fhirSentinel)
            ? _value.legalState
            : legalState as CodeableConcept?,
        instantiatesCanonical: identical(instantiatesCanonical, fhirSentinel)
            ? _value.instantiatesCanonical
            : instantiatesCanonical as Reference?,
        instantiatesUri: identical(instantiatesUri, fhirSentinel)
            ? _value.instantiatesUri
            : instantiatesUri as FhirUri?,
        contentDerivative: identical(contentDerivative, fhirSentinel)
            ? _value.contentDerivative
            : contentDerivative as CodeableConcept?,
        issued: identical(issued, fhirSentinel)
            ? _value.issued
            : issued as FhirDateTime?,
        applies: identical(applies, fhirSentinel)
            ? _value.applies
            : applies as Period?,
        expirationType: identical(expirationType, fhirSentinel)
            ? _value.expirationType
            : expirationType as CodeableConcept?,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as List<Reference>?,
        authority: identical(authority, fhirSentinel)
            ? _value.authority
            : authority as List<Reference>?,
        domain: identical(domain, fhirSentinel)
            ? _value.domain
            : domain as List<Reference>?,
        site: identical(site, fhirSentinel)
            ? _value.site
            : site as List<Reference>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        title: identical(title, fhirSentinel)
            ? _value.title
            : title as FhirString?,
        subtitle: identical(subtitle, fhirSentinel)
            ? _value.subtitle
            : subtitle as FhirString?,
        alias: identical(alias, fhirSentinel)
            ? _value.alias
            : alias as List<FhirString>?,
        author: identical(author, fhirSentinel)
            ? _value.author
            : author as Reference?,
        scope: identical(scope, fhirSentinel)
            ? _value.scope
            : scope as CodeableConcept?,
        topicX: identical(topicX, fhirSentinel)
            ? _value.topicX
            : topicX as TopicXContract?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        subType: identical(subType, fhirSentinel)
            ? _value.subType
            : subType as List<CodeableConcept>?,
        contentDefinition: identical(contentDefinition, fhirSentinel)
            ? _value.contentDefinition
            : contentDefinition as ContractContentDefinition?,
        term: identical(term, fhirSentinel)
            ? _value.term
            : term as List<ContractTerm>?,
        supportingInfo: identical(supportingInfo, fhirSentinel)
            ? _value.supportingInfo
            : supportingInfo as List<Reference>?,
        relevantHistory: identical(relevantHistory, fhirSentinel)
            ? _value.relevantHistory
            : relevantHistory as List<Reference>?,
        signer: identical(signer, fhirSentinel)
            ? _value.signer
            : signer as List<ContractSigner>?,
        friendly: identical(friendly, fhirSentinel)
            ? _value.friendly
            : friendly as List<ContractFriendly>?,
        legal: identical(legal, fhirSentinel)
            ? _value.legal
            : legal as List<ContractLegal>?,
        rule: identical(rule, fhirSentinel)
            ? _value.rule
            : rule as List<ContractRule>?,
        legallyBindingX: identical(legallyBindingX, fhirSentinel)
            ? _value.legallyBindingX
            : legallyBindingX as LegallyBindingXContract?,
      ),
    );
  }
}

extension ContractCopyWithExtension on Contract {
  $ContractCopyWith<Contract> get copyWith => _$ContractCopyWithImpl<Contract>(
        this,
        (value) => value,
      );
}

abstract class $ContractContentDefinitionCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? subType,
    Reference? publisher,
    FhirDateTime? publicationDate,
    ContractResourcePublicationStatusCodes? publicationStatus,
    FhirMarkdown? copyright,
    bool? disallowExtensions,
  });
}

class _$ContractContentDefinitionCopyWithImpl<T>
    implements $ContractContentDefinitionCopyWith<T> {
  final ContractContentDefinition _value;
  final T Function(ContractContentDefinition) _then;

  _$ContractContentDefinitionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? subType = fhirSentinel,
    Object? publisher = fhirSentinel,
    Object? publicationDate = fhirSentinel,
    Object? publicationStatus = fhirSentinel,
    Object? copyright = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractContentDefinition(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        subType: identical(subType, fhirSentinel)
            ? _value.subType
            : subType as CodeableConcept?,
        publisher: identical(publisher, fhirSentinel)
            ? _value.publisher
            : publisher as Reference?,
        publicationDate: identical(publicationDate, fhirSentinel)
            ? _value.publicationDate
            : publicationDate as FhirDateTime?,
        publicationStatus: identical(publicationStatus, fhirSentinel)
            ? _value.publicationStatus
            : (publicationStatus as ContractResourcePublicationStatusCodes?) ??
                _value.publicationStatus,
        copyright: identical(copyright, fhirSentinel)
            ? _value.copyright
            : copyright as FhirMarkdown?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractContentDefinitionCopyWithExtension
    on ContractContentDefinition {
  $ContractContentDefinitionCopyWith<ContractContentDefinition> get copyWith =>
      _$ContractContentDefinitionCopyWithImpl<ContractContentDefinition>(
        this,
        (value) => value,
      );
}

abstract class $ContractTermCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    FhirDateTime? issued,
    Period? applies,
    TopicXContractTerm? topicX,
    CodeableConcept? type,
    CodeableConcept? subType,
    FhirString? text,
    List<ContractSecurityLabel>? securityLabel,
    ContractOffer? offer,
    List<ContractAsset>? asset,
    List<ContractAction>? action,
    List<ContractTerm>? group,
    bool? disallowExtensions,
  });
}

class _$ContractTermCopyWithImpl<T> implements $ContractTermCopyWith<T> {
  final ContractTerm _value;
  final T Function(ContractTerm) _then;

  _$ContractTermCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? issued = fhirSentinel,
    Object? applies = fhirSentinel,
    Object? topicX = fhirSentinel,
    Object? type = fhirSentinel,
    Object? subType = fhirSentinel,
    Object? text = fhirSentinel,
    Object? securityLabel = fhirSentinel,
    Object? offer = fhirSentinel,
    Object? asset = fhirSentinel,
    Object? action = fhirSentinel,
    Object? group = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractTerm(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        issued: identical(issued, fhirSentinel)
            ? _value.issued
            : issued as FhirDateTime?,
        applies: identical(applies, fhirSentinel)
            ? _value.applies
            : applies as Period?,
        topicX: identical(topicX, fhirSentinel)
            ? _value.topicX
            : topicX as TopicXContractTerm?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        subType: identical(subType, fhirSentinel)
            ? _value.subType
            : subType as CodeableConcept?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        securityLabel: identical(securityLabel, fhirSentinel)
            ? _value.securityLabel
            : securityLabel as List<ContractSecurityLabel>?,
        offer: identical(offer, fhirSentinel)
            ? _value.offer
            : (offer as ContractOffer?) ?? _value.offer,
        asset: identical(asset, fhirSentinel)
            ? _value.asset
            : asset as List<ContractAsset>?,
        action: identical(action, fhirSentinel)
            ? _value.action
            : action as List<ContractAction>?,
        group: identical(group, fhirSentinel)
            ? _value.group
            : group as List<ContractTerm>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractTermCopyWithExtension on ContractTerm {
  $ContractTermCopyWith<ContractTerm> get copyWith =>
      _$ContractTermCopyWithImpl<ContractTerm>(
        this,
        (value) => value,
      );
}

abstract class $ContractSecurityLabelCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<FhirUnsignedInt>? number,
    Coding? classification,
    List<Coding>? category,
    List<Coding>? control,
    bool? disallowExtensions,
  });
}

class _$ContractSecurityLabelCopyWithImpl<T>
    implements $ContractSecurityLabelCopyWith<T> {
  final ContractSecurityLabel _value;
  final T Function(ContractSecurityLabel) _then;

  _$ContractSecurityLabelCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? number = fhirSentinel,
    Object? classification = fhirSentinel,
    Object? category = fhirSentinel,
    Object? control = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractSecurityLabel(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        number: identical(number, fhirSentinel)
            ? _value.number
            : number as List<FhirUnsignedInt>?,
        classification: identical(classification, fhirSentinel)
            ? _value.classification
            : (classification as Coding?) ?? _value.classification,
        category: identical(category, fhirSentinel)
            ? _value.category
            : category as List<Coding>?,
        control: identical(control, fhirSentinel)
            ? _value.control
            : control as List<Coding>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractSecurityLabelCopyWithExtension on ContractSecurityLabel {
  $ContractSecurityLabelCopyWith<ContractSecurityLabel> get copyWith =>
      _$ContractSecurityLabelCopyWithImpl<ContractSecurityLabel>(
        this,
        (value) => value,
      );
}

abstract class $ContractOfferCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    List<ContractParty>? party,
    Reference? topic,
    CodeableConcept? type,
    CodeableConcept? decision,
    List<CodeableConcept>? decisionMode,
    List<ContractAnswer>? answer,
    FhirString? text,
    List<FhirString>? linkId,
    List<FhirUnsignedInt>? securityLabelNumber,
    bool? disallowExtensions,
  });
}

class _$ContractOfferCopyWithImpl<T> implements $ContractOfferCopyWith<T> {
  final ContractOffer _value;
  final T Function(ContractOffer) _then;

  _$ContractOfferCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? party = fhirSentinel,
    Object? topic = fhirSentinel,
    Object? type = fhirSentinel,
    Object? decision = fhirSentinel,
    Object? decisionMode = fhirSentinel,
    Object? answer = fhirSentinel,
    Object? text = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? securityLabelNumber = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractOffer(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as List<Identifier>?,
        party: identical(party, fhirSentinel)
            ? _value.party
            : party as List<ContractParty>?,
        topic:
            identical(topic, fhirSentinel) ? _value.topic : topic as Reference?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as CodeableConcept?,
        decision: identical(decision, fhirSentinel)
            ? _value.decision
            : decision as CodeableConcept?,
        decisionMode: identical(decisionMode, fhirSentinel)
            ? _value.decisionMode
            : decisionMode as List<CodeableConcept>?,
        answer: identical(answer, fhirSentinel)
            ? _value.answer
            : answer as List<ContractAnswer>?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        linkId: identical(linkId, fhirSentinel)
            ? _value.linkId
            : linkId as List<FhirString>?,
        securityLabelNumber: identical(securityLabelNumber, fhirSentinel)
            ? _value.securityLabelNumber
            : securityLabelNumber as List<FhirUnsignedInt>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractOfferCopyWithExtension on ContractOffer {
  $ContractOfferCopyWith<ContractOffer> get copyWith =>
      _$ContractOfferCopyWithImpl<ContractOffer>(
        this,
        (value) => value,
      );
}

abstract class $ContractPartyCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? reference,
    CodeableConcept? role,
    bool? disallowExtensions,
  });
}

class _$ContractPartyCopyWithImpl<T> implements $ContractPartyCopyWith<T> {
  final ContractParty _value;
  final T Function(ContractParty) _then;

  _$ContractPartyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? role = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractParty(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : (reference as List<Reference>?) ?? _value.reference,
        role: identical(role, fhirSentinel)
            ? _value.role
            : (role as CodeableConcept?) ?? _value.role,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractPartyCopyWithExtension on ContractParty {
  $ContractPartyCopyWith<ContractParty> get copyWith =>
      _$ContractPartyCopyWithImpl<ContractParty>(
        this,
        (value) => value,
      );
}

abstract class $ContractAnswerCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ValueXContractAnswer? valueX,
    bool? disallowExtensions,
  });
}

class _$ContractAnswerCopyWithImpl<T> implements $ContractAnswerCopyWith<T> {
  final ContractAnswer _value;
  final T Function(ContractAnswer) _then;

  _$ContractAnswerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractAnswer(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : (valueX as ValueXContractAnswer?) ?? _value.valueX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractAnswerCopyWithExtension on ContractAnswer {
  $ContractAnswerCopyWith<ContractAnswer> get copyWith =>
      _$ContractAnswerCopyWithImpl<ContractAnswer>(
        this,
        (value) => value,
      );
}

abstract class $ContractAssetCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? scope,
    List<CodeableConcept>? type,
    List<Reference>? typeReference,
    List<CodeableConcept>? subtype,
    Coding? relationship,
    List<ContractContext>? context,
    FhirString? condition,
    List<CodeableConcept>? periodType,
    List<Period>? period,
    List<Period>? usePeriod,
    FhirString? text,
    List<FhirString>? linkId,
    List<ContractAnswer>? answer,
    List<FhirUnsignedInt>? securityLabelNumber,
    List<ContractValuedItem>? valuedItem,
    bool? disallowExtensions,
  });
}

class _$ContractAssetCopyWithImpl<T> implements $ContractAssetCopyWith<T> {
  final ContractAsset _value;
  final T Function(ContractAsset) _then;

  _$ContractAssetCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? scope = fhirSentinel,
    Object? type = fhirSentinel,
    Object? typeReference = fhirSentinel,
    Object? subtype = fhirSentinel,
    Object? relationship = fhirSentinel,
    Object? context = fhirSentinel,
    Object? condition = fhirSentinel,
    Object? periodType = fhirSentinel,
    Object? period = fhirSentinel,
    Object? usePeriod = fhirSentinel,
    Object? text = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? answer = fhirSentinel,
    Object? securityLabelNumber = fhirSentinel,
    Object? valuedItem = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractAsset(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        scope: identical(scope, fhirSentinel)
            ? _value.scope
            : scope as CodeableConcept?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : type as List<CodeableConcept>?,
        typeReference: identical(typeReference, fhirSentinel)
            ? _value.typeReference
            : typeReference as List<Reference>?,
        subtype: identical(subtype, fhirSentinel)
            ? _value.subtype
            : subtype as List<CodeableConcept>?,
        relationship: identical(relationship, fhirSentinel)
            ? _value.relationship
            : relationship as Coding?,
        context: identical(context, fhirSentinel)
            ? _value.context
            : context as List<ContractContext>?,
        condition: identical(condition, fhirSentinel)
            ? _value.condition
            : condition as FhirString?,
        periodType: identical(periodType, fhirSentinel)
            ? _value.periodType
            : periodType as List<CodeableConcept>?,
        period: identical(period, fhirSentinel)
            ? _value.period
            : period as List<Period>?,
        usePeriod: identical(usePeriod, fhirSentinel)
            ? _value.usePeriod
            : usePeriod as List<Period>?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        linkId: identical(linkId, fhirSentinel)
            ? _value.linkId
            : linkId as List<FhirString>?,
        answer: identical(answer, fhirSentinel)
            ? _value.answer
            : answer as List<ContractAnswer>?,
        securityLabelNumber: identical(securityLabelNumber, fhirSentinel)
            ? _value.securityLabelNumber
            : securityLabelNumber as List<FhirUnsignedInt>?,
        valuedItem: identical(valuedItem, fhirSentinel)
            ? _value.valuedItem
            : valuedItem as List<ContractValuedItem>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractAssetCopyWithExtension on ContractAsset {
  $ContractAssetCopyWith<ContractAsset> get copyWith =>
      _$ContractAssetCopyWithImpl<ContractAsset>(
        this,
        (value) => value,
      );
}

abstract class $ContractContextCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? reference,
    List<CodeableConcept>? code,
    FhirString? text,
    bool? disallowExtensions,
  });
}

class _$ContractContextCopyWithImpl<T> implements $ContractContextCopyWith<T> {
  final ContractContext _value;
  final T Function(ContractContext) _then;

  _$ContractContextCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? code = fhirSentinel,
    Object? text = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractContext(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as Reference?,
        code: identical(code, fhirSentinel)
            ? _value.code
            : code as List<CodeableConcept>?,
        text: identical(text, fhirSentinel) ? _value.text : text as FhirString?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractContextCopyWithExtension on ContractContext {
  $ContractContextCopyWith<ContractContext> get copyWith =>
      _$ContractContextCopyWithImpl<ContractContext>(
        this,
        (value) => value,
      );
}

abstract class $ContractValuedItemCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    EntityXContractValuedItem? entityX,
    Identifier? identifier,
    FhirDateTime? effectiveTime,
    Quantity? quantity,
    Money? unitPrice,
    FhirDecimal? factor,
    FhirDecimal? points,
    Money? net,
    FhirString? payment,
    FhirDateTime? paymentDate,
    Reference? responsible,
    Reference? recipient,
    List<FhirString>? linkId,
    List<FhirUnsignedInt>? securityLabelNumber,
    bool? disallowExtensions,
  });
}

class _$ContractValuedItemCopyWithImpl<T>
    implements $ContractValuedItemCopyWith<T> {
  final ContractValuedItem _value;
  final T Function(ContractValuedItem) _then;

  _$ContractValuedItemCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? entityX = fhirSentinel,
    Object? identifier = fhirSentinel,
    Object? effectiveTime = fhirSentinel,
    Object? quantity = fhirSentinel,
    Object? unitPrice = fhirSentinel,
    Object? factor = fhirSentinel,
    Object? points = fhirSentinel,
    Object? net = fhirSentinel,
    Object? payment = fhirSentinel,
    Object? paymentDate = fhirSentinel,
    Object? responsible = fhirSentinel,
    Object? recipient = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? securityLabelNumber = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractValuedItem(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        entityX: identical(entityX, fhirSentinel)
            ? _value.entityX
            : entityX as EntityXContractValuedItem?,
        identifier: identical(identifier, fhirSentinel)
            ? _value.identifier
            : identifier as Identifier?,
        effectiveTime: identical(effectiveTime, fhirSentinel)
            ? _value.effectiveTime
            : effectiveTime as FhirDateTime?,
        quantity: identical(quantity, fhirSentinel)
            ? _value.quantity
            : quantity as Quantity?,
        unitPrice: identical(unitPrice, fhirSentinel)
            ? _value.unitPrice
            : unitPrice as Money?,
        factor: identical(factor, fhirSentinel)
            ? _value.factor
            : factor as FhirDecimal?,
        points: identical(points, fhirSentinel)
            ? _value.points
            : points as FhirDecimal?,
        net: identical(net, fhirSentinel) ? _value.net : net as Money?,
        payment: identical(payment, fhirSentinel)
            ? _value.payment
            : payment as FhirString?,
        paymentDate: identical(paymentDate, fhirSentinel)
            ? _value.paymentDate
            : paymentDate as FhirDateTime?,
        responsible: identical(responsible, fhirSentinel)
            ? _value.responsible
            : responsible as Reference?,
        recipient: identical(recipient, fhirSentinel)
            ? _value.recipient
            : recipient as Reference?,
        linkId: identical(linkId, fhirSentinel)
            ? _value.linkId
            : linkId as List<FhirString>?,
        securityLabelNumber: identical(securityLabelNumber, fhirSentinel)
            ? _value.securityLabelNumber
            : securityLabelNumber as List<FhirUnsignedInt>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractValuedItemCopyWithExtension on ContractValuedItem {
  $ContractValuedItemCopyWith<ContractValuedItem> get copyWith =>
      _$ContractValuedItemCopyWithImpl<ContractValuedItem>(
        this,
        (value) => value,
      );
}

abstract class $ContractActionCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? doNotPerform,
    CodeableConcept? type,
    List<ContractSubject>? subject,
    CodeableConcept? intent,
    List<FhirString>? linkId,
    CodeableConcept? status,
    Reference? context,
    List<FhirString>? contextLinkId,
    OccurrenceXContractAction? occurrenceX,
    List<Reference>? requester,
    List<FhirString>? requesterLinkId,
    List<CodeableConcept>? performerType,
    CodeableConcept? performerRole,
    Reference? performer,
    List<FhirString>? performerLinkId,
    List<CodeableConcept>? reasonCode,
    List<Reference>? reasonReference,
    List<FhirString>? reason,
    List<FhirString>? reasonLinkId,
    List<Annotation>? note,
    List<FhirUnsignedInt>? securityLabelNumber,
    bool? disallowExtensions,
  });
}

class _$ContractActionCopyWithImpl<T> implements $ContractActionCopyWith<T> {
  final ContractAction _value;
  final T Function(ContractAction) _then;

  _$ContractActionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? doNotPerform = fhirSentinel,
    Object? type = fhirSentinel,
    Object? subject = fhirSentinel,
    Object? intent = fhirSentinel,
    Object? linkId = fhirSentinel,
    Object? status = fhirSentinel,
    Object? context = fhirSentinel,
    Object? contextLinkId = fhirSentinel,
    Object? occurrenceX = fhirSentinel,
    Object? requester = fhirSentinel,
    Object? requesterLinkId = fhirSentinel,
    Object? performerType = fhirSentinel,
    Object? performerRole = fhirSentinel,
    Object? performer = fhirSentinel,
    Object? performerLinkId = fhirSentinel,
    Object? reasonCode = fhirSentinel,
    Object? reasonReference = fhirSentinel,
    Object? reason = fhirSentinel,
    Object? reasonLinkId = fhirSentinel,
    Object? note = fhirSentinel,
    Object? securityLabelNumber = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractAction(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        doNotPerform: identical(doNotPerform, fhirSentinel)
            ? _value.doNotPerform
            : doNotPerform as FhirBoolean?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as CodeableConcept?) ?? _value.type,
        subject: identical(subject, fhirSentinel)
            ? _value.subject
            : subject as List<ContractSubject>?,
        intent: identical(intent, fhirSentinel)
            ? _value.intent
            : (intent as CodeableConcept?) ?? _value.intent,
        linkId: identical(linkId, fhirSentinel)
            ? _value.linkId
            : linkId as List<FhirString>?,
        status: identical(status, fhirSentinel)
            ? _value.status
            : (status as CodeableConcept?) ?? _value.status,
        context: identical(context, fhirSentinel)
            ? _value.context
            : context as Reference?,
        contextLinkId: identical(contextLinkId, fhirSentinel)
            ? _value.contextLinkId
            : contextLinkId as List<FhirString>?,
        occurrenceX: identical(occurrenceX, fhirSentinel)
            ? _value.occurrenceX
            : occurrenceX as OccurrenceXContractAction?,
        requester: identical(requester, fhirSentinel)
            ? _value.requester
            : requester as List<Reference>?,
        requesterLinkId: identical(requesterLinkId, fhirSentinel)
            ? _value.requesterLinkId
            : requesterLinkId as List<FhirString>?,
        performerType: identical(performerType, fhirSentinel)
            ? _value.performerType
            : performerType as List<CodeableConcept>?,
        performerRole: identical(performerRole, fhirSentinel)
            ? _value.performerRole
            : performerRole as CodeableConcept?,
        performer: identical(performer, fhirSentinel)
            ? _value.performer
            : performer as Reference?,
        performerLinkId: identical(performerLinkId, fhirSentinel)
            ? _value.performerLinkId
            : performerLinkId as List<FhirString>?,
        reasonCode: identical(reasonCode, fhirSentinel)
            ? _value.reasonCode
            : reasonCode as List<CodeableConcept>?,
        reasonReference: identical(reasonReference, fhirSentinel)
            ? _value.reasonReference
            : reasonReference as List<Reference>?,
        reason: identical(reason, fhirSentinel)
            ? _value.reason
            : reason as List<FhirString>?,
        reasonLinkId: identical(reasonLinkId, fhirSentinel)
            ? _value.reasonLinkId
            : reasonLinkId as List<FhirString>?,
        note: identical(note, fhirSentinel)
            ? _value.note
            : note as List<Annotation>?,
        securityLabelNumber: identical(securityLabelNumber, fhirSentinel)
            ? _value.securityLabelNumber
            : securityLabelNumber as List<FhirUnsignedInt>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractActionCopyWithExtension on ContractAction {
  $ContractActionCopyWith<ContractAction> get copyWith =>
      _$ContractActionCopyWithImpl<ContractAction>(
        this,
        (value) => value,
      );
}

abstract class $ContractSubjectCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Reference>? reference,
    CodeableConcept? role,
    bool? disallowExtensions,
  });
}

class _$ContractSubjectCopyWithImpl<T> implements $ContractSubjectCopyWith<T> {
  final ContractSubject _value;
  final T Function(ContractSubject) _then;

  _$ContractSubjectCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? role = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractSubject(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : (reference as List<Reference>?) ?? _value.reference,
        role: identical(role, fhirSentinel)
            ? _value.role
            : role as CodeableConcept?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractSubjectCopyWithExtension on ContractSubject {
  $ContractSubjectCopyWith<ContractSubject> get copyWith =>
      _$ContractSubjectCopyWithImpl<ContractSubject>(
        this,
        (value) => value,
      );
}

abstract class $ContractSignerCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Coding? type,
    Reference? party,
    List<Signature>? signature,
    bool? disallowExtensions,
  });
}

class _$ContractSignerCopyWithImpl<T> implements $ContractSignerCopyWith<T> {
  final ContractSigner _value;
  final T Function(ContractSigner) _then;

  _$ContractSignerCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? type = fhirSentinel,
    Object? party = fhirSentinel,
    Object? signature = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractSigner(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as Coding?) ?? _value.type,
        party: identical(party, fhirSentinel)
            ? _value.party
            : (party as Reference?) ?? _value.party,
        signature: identical(signature, fhirSentinel)
            ? _value.signature
            : (signature as List<Signature>?) ?? _value.signature,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractSignerCopyWithExtension on ContractSigner {
  $ContractSignerCopyWith<ContractSigner> get copyWith =>
      _$ContractSignerCopyWithImpl<ContractSigner>(
        this,
        (value) => value,
      );
}

abstract class $ContractFriendlyCopyWith<T>
    extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContentXContractFriendly? contentX,
    bool? disallowExtensions,
  });
}

class _$ContractFriendlyCopyWithImpl<T>
    implements $ContractFriendlyCopyWith<T> {
  final ContractFriendly _value;
  final T Function(ContractFriendly) _then;

  _$ContractFriendlyCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? contentX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractFriendly(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        contentX: identical(contentX, fhirSentinel)
            ? _value.contentX
            : (contentX as ContentXContractFriendly?) ?? _value.contentX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractFriendlyCopyWithExtension on ContractFriendly {
  $ContractFriendlyCopyWith<ContractFriendly> get copyWith =>
      _$ContractFriendlyCopyWithImpl<ContractFriendly>(
        this,
        (value) => value,
      );
}

abstract class $ContractLegalCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContentXContractLegal? contentX,
    bool? disallowExtensions,
  });
}

class _$ContractLegalCopyWithImpl<T> implements $ContractLegalCopyWith<T> {
  final ContractLegal _value;
  final T Function(ContractLegal) _then;

  _$ContractLegalCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? contentX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractLegal(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        contentX: identical(contentX, fhirSentinel)
            ? _value.contentX
            : (contentX as ContentXContractLegal?) ?? _value.contentX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractLegalCopyWithExtension on ContractLegal {
  $ContractLegalCopyWith<ContractLegal> get copyWith =>
      _$ContractLegalCopyWithImpl<ContractLegal>(
        this,
        (value) => value,
      );
}

abstract class $ContractRuleCopyWith<T> extends $BackboneElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    ContentXContractRule? contentX,
    bool? disallowExtensions,
  });
}

class _$ContractRuleCopyWithImpl<T> implements $ContractRuleCopyWith<T> {
  final ContractRule _value;
  final T Function(ContractRule) _then;

  _$ContractRuleCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? modifierExtension = fhirSentinel,
    Object? contentX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContractRule(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        modifierExtension: identical(modifierExtension, fhirSentinel)
            ? _value.modifierExtension
            : modifierExtension as List<FhirExtension>?,
        contentX: identical(contentX, fhirSentinel)
            ? _value.contentX
            : (contentX as ContentXContractRule?) ?? _value.contentX,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContractRuleCopyWithExtension on ContractRule {
  $ContractRuleCopyWith<ContractRule> get copyWith =>
      _$ContractRuleCopyWithImpl<ContractRule>(
        this,
        (value) => value,
      );
}
