import 'package:realm/realm.dart';
@RealmModel()
class _CitationRealm {
  late _R4ResourceTypeRealm resourceType;
  @PrimaryKey() late String id;
  late _FhirMetaRealm meta;
  late _FhirUriRealm implicitRules;
  late _PrimitiveElementRealm implicitRulesElement;
  late _FhirCodeRealm language;
  late _PrimitiveElementRealm languageElement;
  late _NarrativeRealm text;
  late List<_ResourceRealm> contained;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
  late List<_IdentifierRealm> identifier;
  late String version;
  late _PrimitiveElementRealm versionElement;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _FhirBooleanRealm experimental;
  late _PrimitiveElementRealm experimentalElement;
  late String date;
  late _PrimitiveElementRealm dateElement;
  late String publisher;
  late _PrimitiveElementRealm publisherElement;
  late List<_ContactDetailRealm> contact;
  late _FhirMarkdownRealm description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_UsageContextRealm> useContext;
  late List<_CodeableConceptRealm> jurisdiction;
  late _FhirMarkdownRealm purpose;
  late _PrimitiveElementRealm purposeElement;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
  late _FhirDateRealm approvalDate;
  late _PrimitiveElementRealm approvalDateElement;
  late _FhirDateRealm lastReviewDate;
  late _PrimitiveElementRealm lastReviewDateElement;
  late _PeriodRealm effectivePeriod;
  late List<_ContactDetailRealm> author;
  late List<_ContactDetailRealm> editor;
  late List<_ContactDetailRealm> reviewer;
  late List<_ContactDetailRealm> endorser;
  late List<_CitationSummaryRealm> summary;
@RealmModel()
class _classification,Realm {
  late List<_AnnotationRealm> note;
  late List<_CodeableConceptRealm> currentState;
  late List<_CitationStatusDateRealm> statusDate;
  late List<_CitationRelatesToRealm> relatesTo;
  late _CitationCitedArtifactRealm citedArtifact;
}
@RealmModel()
class _CitationSummaryRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm style;
  late _FhirMarkdownRealm text;
  late _PrimitiveElementRealm textElement;
}
@RealmModel()
class _CitationClassificationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
@RealmModel()
class _classifier,Realm {
}
@RealmModel()
class _CitationStatusDateRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm activity;
  late _FhirBooleanRealm actual;
  late _PrimitiveElementRealm actualElement;
  late _PeriodRealm period;
}
@RealmModel()
class _CitationRelatesToRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm relationshipType;
  late List<_CodeableConceptRealm> targetClassifier;
  late _FhirUriRealm targetUri;
  late _PrimitiveElementRealm targetUriElement;
  late _IdentifierRealm targetIdentifier;
  late _ReferenceRealm targetReference;
  late _AttachmentRealm targetAttachment;
}
@RealmModel()
class _CitationCitedArtifactRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_IdentifierRealm> identifier;
  late List<_IdentifierRealm> relatedIdentifier;
  late String dateAccessed;
  late _PrimitiveElementRealm dateAccessedElement;
  late _CitationVersionRealm version;
  late List<_CodeableConceptRealm> currentState;
  late List<_CitationStatusDate1Realm> statusDate;
  late List<_CitationTitleRealm> title;
  late List<_CitationAbstractRealm> abstract_;
  late _CitationPartRealm part_;
  late List<_CitationRelatesTo1Realm> relatesTo;
  late List<_CitationPublicationFormRealm> publicationForm;
  late List<_CitationWebLocationRealm> webLocation;
@RealmModel()
class _classification,Realm {
  late _CitationContributorshipRealm contributorship;
  late List<_AnnotationRealm> note;
}
@RealmModel()
class _CitationVersionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String value;
  late _PrimitiveElementRealm valueElement;
  late _ReferenceRealm baseCitation;
}
@RealmModel()
class _CitationStatusDate1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm activity;
  late _FhirBooleanRealm actual;
  late _PrimitiveElementRealm actualElement;
  late _PeriodRealm period;
}
@RealmModel()
class _CitationTitleRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_CodeableConceptRealm> type;
  late _CodeableConceptRealm language;
  late _FhirMarkdownRealm text;
  late _PrimitiveElementRealm textElement;
}
@RealmModel()
class _CitationAbstractRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm language;
  late _FhirMarkdownRealm text;
  late _PrimitiveElementRealm textElement;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
}
@RealmModel()
class _CitationPartRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late String value;
  late _PrimitiveElementRealm valueElement;
  late _ReferenceRealm baseCitation;
}
@RealmModel()
class _CitationRelatesTo1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm relationshipType;
  late List<_CodeableConceptRealm> targetClassifier;
  late _FhirUriRealm targetUri;
  late _PrimitiveElementRealm targetUriElement;
  late _IdentifierRealm targetIdentifier;
  late _ReferenceRealm targetReference;
  late _AttachmentRealm targetAttachment;
}
@RealmModel()
class _CitationPublicationFormRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CitationPublishedInRealm publishedIn;
  late _CitationPeriodicReleaseRealm periodicRelease;
  late String articleDate;
  late _PrimitiveElementRealm articleDateElement;
  late String lastRevisionDate;
  late _PrimitiveElementRealm lastRevisionDateElement;
  late List<_CodeableConceptRealm> language;
  late String accessionNumber;
  late _PrimitiveElementRealm accessionNumberElement;
  late String pageString;
  late _PrimitiveElementRealm pageStringElement;
  late String firstPage;
  late _PrimitiveElementRealm firstPageElement;
  late String lastPage;
  late _PrimitiveElementRealm lastPageElement;
  late String pageCount;
  late _PrimitiveElementRealm pageCountElement;
  late _FhirMarkdownRealm copyright;
  late _PrimitiveElementRealm copyrightElement;
}
@RealmModel()
class _CitationPublishedInRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late List<_IdentifierRealm> identifier;
  late String title;
  late _PrimitiveElementRealm titleElement;
  late _ReferenceRealm publisher;
  late String publisherLocation;
  late _PrimitiveElementRealm publisherLocationElement;
}
@RealmModel()
class _CitationPeriodicReleaseRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm citedMedium;
  late String volume;
  late _PrimitiveElementRealm volumeElement;
  late String issue;
  late _PrimitiveElementRealm issueElement;
  late _CitationDateOfPublicationRealm dateOfPublication;
}
@RealmModel()
class _CitationDateOfPublicationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirDateRealm date;
  late _PrimitiveElementRealm dateElement;
  late String year;
  late _PrimitiveElementRealm yearElement;
  late String month;
  late _PrimitiveElementRealm monthElement;
  late String day;
  late _PrimitiveElementRealm dayElement;
  late String season;
  late _PrimitiveElementRealm seasonElement;
  late String text;
  late _PrimitiveElementRealm textElement;
}
@RealmModel()
class _CitationWebLocationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _FhirUriRealm url;
  late _PrimitiveElementRealm urlElement;
}
@RealmModel()
class _CitationClassification1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
@RealmModel()
class _classifier,Realm {
  late _CitationWhoClassifiedRealm whoClassified;
  late List<_ReferenceRealm> artifactAssessment;
}
@RealmModel()
class _CitationWhoClassifiedRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _ReferenceRealm person;
  late _ReferenceRealm organization;
  late _ReferenceRealm publisher;
@RealmModel()
class _classifierCopyright,Realm {
@RealmModel()
class _classifierCopyrightElement,Realm {
  late _FhirBooleanRealm freeToShare;
  late _PrimitiveElementRealm freeToShareElement;
}
@RealmModel()
class _CitationContributorshipRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirBooleanRealm complete;
  late _PrimitiveElementRealm completeElement;
  late List<_CitationEntryRealm> entry;
  late List<_CitationSummary1Realm> summary;
}
@RealmModel()
class _CitationEntryRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _HumanNameRealm name;
  late String initials;
  late _PrimitiveElementRealm initialsElement;
  late String collectiveName;
  late _PrimitiveElementRealm collectiveNameElement;
  late List<_IdentifierRealm> identifier;
  late List<_CitationAffiliationInfoRealm> affiliationInfo;
  late List<_AddressRealm> address;
  late List<_ContactPointRealm> telecom;
  late List<_CodeableConceptRealm> contributionType;
  late _CodeableConceptRealm role;
  late List<_CitationContributionInstanceRealm> contributionInstance;
  late _FhirBooleanRealm correspondingContact;
  late _PrimitiveElementRealm correspondingContactElement;
  late _FhirPositiveIntRealm listOrder;
  late _PrimitiveElementRealm listOrderElement;
}
@RealmModel()
class _CitationAffiliationInfoRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String affiliation;
  late _PrimitiveElementRealm affiliationElement;
  late String role;
  late _PrimitiveElementRealm roleElement;
  late List<_IdentifierRealm> identifier;
}
@RealmModel()
class _CitationContributionInstanceRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late String time;
  late _PrimitiveElementRealm timeElement;
}
@RealmModel()
class _CitationSummary1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _CodeableConceptRealm style;
  late _CodeableConceptRealm source;
  late _FhirMarkdownRealm value;
  late _PrimitiveElementRealm valueElement;
}
