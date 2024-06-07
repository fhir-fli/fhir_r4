import 'package:objectbox/objectbox.dart';
@Entity()
class CitationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> version = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> versionElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> experimental = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> experimentalElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> publisher = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<UsageContextDbObject> useContext = ToMany<UsageContextDbObject>();
  final ToMany<CodeableConceptDbObject> jurisdiction = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> purpose = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> purposeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> approvalDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> approvalDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> lastReviewDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> lastReviewDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> effectivePeriod = ToOne<PeriodDbObject>();
  final ToMany<ContactDetailDbObject> author = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> editor = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> reviewer = ToMany<ContactDetailDbObject>();
  final ToMany<ContactDetailDbObject> endorser = ToMany<ContactDetailDbObject>();
  final ToMany<CitationSummaryDbObject> summary = ToMany<CitationSummaryDbObject>();
@Entity()
class classification,DbObject {
  @Id(assignable: true)
  int id;
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<CodeableConceptDbObject> currentState = ToMany<CodeableConceptDbObject>();
  final ToMany<CitationStatusDateDbObject> statusDate = ToMany<CitationStatusDateDbObject>();
  final ToMany<CitationRelatesToDbObject> relatesTo = ToMany<CitationRelatesToDbObject>();
  final ToOne<CitationCitedArtifactDbObject> citedArtifact = ToOne<CitationCitedArtifactDbObject>();
  classification,DbObject(<>{required this.id});
}
@Entity()
class CitationSummaryDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> style = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> text = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  CitationSummaryDbObject({required this.id});
}
@Entity()
class CitationClassificationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
@Entity()
class classifier,DbObject {
  @Id(assignable: true)
  int id;
  classifier,DbObject({required this.id});
}
@Entity()
class CitationStatusDateDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> activity = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> actual = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> actualElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  CitationStatusDateDbObject({required this.id});
}
@Entity()
class CitationRelatesToDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> relationshipType = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> targetClassifier = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirUriDbObject> targetUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> targetUriElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<IdentifierDbObject> targetIdentifier = ToOne<IdentifierDbObject>();
  final ToOne<ReferenceDbObject> targetReference = ToOne<ReferenceDbObject>();
  final ToOne<AttachmentDbObject> targetAttachment = ToOne<AttachmentDbObject>();
  CitationRelatesToDbObject({required this.id});
}
@Entity()
class CitationCitedArtifactDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToMany<IdentifierDbObject> relatedIdentifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirDateTimeDbObject> dateAccessed = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateAccessedElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CitationVersionDbObject> version = ToOne<CitationVersionDbObject>();
  final ToMany<CodeableConceptDbObject> currentState = ToMany<CodeableConceptDbObject>();
  final ToMany<CitationStatusDate1DbObject> statusDate = ToMany<CitationStatusDate1DbObject>();
  final ToMany<CitationTitleDbObject> title = ToMany<CitationTitleDbObject>();
  final ToMany<CitationAbstractDbObject> abstract_ = ToMany<CitationAbstractDbObject>();
  final ToOne<CitationPartDbObject> part_ = ToOne<CitationPartDbObject>();
  final ToMany<CitationRelatesTo1DbObject> relatesTo = ToMany<CitationRelatesTo1DbObject>();
  final ToMany<CitationPublicationFormDbObject> publicationForm = ToMany<CitationPublicationFormDbObject>();
  final ToMany<CitationWebLocationDbObject> webLocation = ToMany<CitationWebLocationDbObject>();
@Entity()
class classification,DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<CitationContributorshipDbObject> contributorship = ToOne<CitationContributorshipDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  classification,DbObject({required this.id});
}
@Entity()
class CitationVersionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> baseCitation = ToOne<ReferenceDbObject>();
  CitationVersionDbObject({required this.id});
}
@Entity()
class CitationStatusDate1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> activity = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirBooleanDbObject> actual = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> actualElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  CitationStatusDate1DbObject({required this.id});
}
@Entity()
class CitationTitleDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<CodeableConceptDbObject> type = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> language = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> text = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  CitationTitleDbObject({required this.id});
}
@Entity()
class CitationAbstractDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> language = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> text = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement = ToOne<PrimitiveElementDbObject>();
  CitationAbstractDbObject({required this.id});
}
@Entity()
class CitationPartDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> value = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> baseCitation = ToOne<ReferenceDbObject>();
  CitationPartDbObject({required this.id});
}
@Entity()
class CitationRelatesTo1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> relationshipType = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> targetClassifier = ToMany<CodeableConceptDbObject>();
  final ToOne<FhirUriDbObject> targetUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> targetUriElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<IdentifierDbObject> targetIdentifier = ToOne<IdentifierDbObject>();
  final ToOne<ReferenceDbObject> targetReference = ToOne<ReferenceDbObject>();
  final ToOne<AttachmentDbObject> targetAttachment = ToOne<AttachmentDbObject>();
  CitationRelatesTo1DbObject({required this.id});
}
@Entity()
class CitationPublicationFormDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CitationPublishedInDbObject> publishedIn = ToOne<CitationPublishedInDbObject>();
  final ToOne<CitationPeriodicReleaseDbObject> periodicRelease = ToOne<CitationPeriodicReleaseDbObject>();
  final ToOne<FhirDateTimeDbObject> articleDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> articleDateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> lastRevisionDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> lastRevisionDateElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> language = ToMany<CodeableConceptDbObject>();
  final ToOne<StringDbObject> accessionNumber = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> accessionNumberElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> pageString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> pageStringElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> firstPage = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> firstPageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> lastPage = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> lastPageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> pageCount = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> pageCountElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> copyright = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> copyrightElement = ToOne<PrimitiveElementDbObject>();
  CitationPublicationFormDbObject({required this.id});
}
@Entity()
class CitationPublishedInDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> publisher = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> publisherLocation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> publisherLocationElement = ToOne<PrimitiveElementDbObject>();
  CitationPublishedInDbObject({required this.id});
}
@Entity()
class CitationPeriodicReleaseDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> citedMedium = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> volume = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> volumeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> issue = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> issueElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CitationDateOfPublicationDbObject> dateOfPublication = ToOne<CitationDateOfPublicationDbObject>();
  CitationPeriodicReleaseDbObject({required this.id});
}
@Entity()
class CitationDateOfPublicationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirDateDbObject> date = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> year = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> yearElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> month = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> monthElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> day = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> dayElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> season = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> seasonElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement = ToOne<PrimitiveElementDbObject>();
  CitationDateOfPublicationDbObject({required this.id});
}
@Entity()
class CitationWebLocationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirUriDbObject> url = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> urlElement = ToOne<PrimitiveElementDbObject>();
  CitationWebLocationDbObject({required this.id});
}
@Entity()
class CitationClassification1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
@Entity()
class classifier,DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<CitationWhoClassifiedDbObject> whoClassified = ToOne<CitationWhoClassifiedDbObject>();
  final ToMany<ReferenceDbObject> artifactAssessment = ToMany<ReferenceDbObject>();
  classifier,DbObject({required this.id});
}
@Entity()
class CitationWhoClassifiedDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> person = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> organization = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> publisher = ToOne<ReferenceDbObject>();
@Entity()
class classifierCopyright,DbObject {
  @Id(assignable: true)
  int id;
@Entity()
class classifierCopyrightElement,DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<FhirBooleanDbObject> freeToShare = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> freeToShareElement = ToOne<PrimitiveElementDbObject>();
  classifierCopyrightElement,DbObject({required this.id});
}
@Entity()
class CitationContributorshipDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> complete = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> completeElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CitationEntryDbObject> entry = ToMany<CitationEntryDbObject>();
  final ToMany<CitationSummary1DbObject> summary = ToMany<CitationSummary1DbObject>();
  CitationContributorshipDbObject({required this.id});
}
@Entity()
class CitationEntryDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<HumanNameDbObject> name = ToOne<HumanNameDbObject>();
  final ToOne<StringDbObject> initials = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> initialsElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> collectiveName = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> collectiveNameElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToMany<CitationAffiliationInfoDbObject> affiliationInfo = ToMany<CitationAffiliationInfoDbObject>();
  final ToMany<AddressDbObject> address = ToMany<AddressDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToMany<CodeableConceptDbObject> contributionType = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> role = ToOne<CodeableConceptDbObject>();
  final ToMany<CitationContributionInstanceDbObject> contributionInstance = ToMany<CitationContributionInstanceDbObject>();
  final ToOne<FhirBooleanDbObject> correspondingContact = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> correspondingContactElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirPositiveIntDbObject> listOrder = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> listOrderElement = ToOne<PrimitiveElementDbObject>();
  CitationEntryDbObject({required this.id});
}
@Entity()
class CitationAffiliationInfoDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> affiliation = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> affiliationElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> role = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> roleElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  CitationAffiliationInfoDbObject({required this.id});
}
@Entity()
class CitationContributionInstanceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateTimeDbObject> time = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> timeElement = ToOne<PrimitiveElementDbObject>();
  CitationContributionInstanceDbObject({required this.id});
}
@Entity()
class CitationSummary1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> style = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> source = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> value = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> valueElement = ToOne<PrimitiveElementDbObject>();
  CitationSummary1DbObject({required this.id});
}
