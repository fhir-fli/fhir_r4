import 'package:realm/realm.dart';
@RealmModel()
class _TestReportRealm {
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
  late _IdentifierRealm identifier;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late _FhirCodeRealm status;
  late _PrimitiveElementRealm statusElement;
  late _ReferenceRealm testScript;
  late _FhirCodeRealm result;
  late _PrimitiveElementRealm resultElement;
  late _FhirDecimalRealm score;
  late _PrimitiveElementRealm scoreElement;
  late String tester;
  late _PrimitiveElementRealm testerElement;
  late String issued;
  late _PrimitiveElementRealm issuedElement;
  late List<_TestReportParticipantRealm> participant;
  late _TestReportSetupRealm setup;
  late List<_TestReportTestRealm> test;
  late _TestReportTeardownRealm teardown;
}
@RealmModel()
class _TestReportParticipantRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm type;
  late _PrimitiveElementRealm typeElement;
  late _FhirUriRealm uri;
  late _PrimitiveElementRealm uriElement;
  late String display;
  late _PrimitiveElementRealm displayElement;
}
@RealmModel()
class _TestReportSetupRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_TestReportActionRealm> action;
}
@RealmModel()
class _TestReportActionRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _TestReportOperationRealm operation;
  late _TestReportAssertRealm assert_;
}
@RealmModel()
class _TestReportOperationRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm result;
  late _PrimitiveElementRealm resultElement;
  late _FhirMarkdownRealm message;
  late _PrimitiveElementRealm messageElement;
  late _FhirUriRealm detail;
  late _PrimitiveElementRealm detailElement;
}
@RealmModel()
class _TestReportAssertRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirCodeRealm result;
  late _PrimitiveElementRealm resultElement;
  late _FhirMarkdownRealm message;
  late _PrimitiveElementRealm messageElement;
  late String detail;
  late _PrimitiveElementRealm detailElement;
}
@RealmModel()
class _TestReportTestRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late String name;
  late _PrimitiveElementRealm nameElement;
  late String description;
  late _PrimitiveElementRealm descriptionElement;
  late List<_TestReportAction1Realm> action;
}
@RealmModel()
class _TestReportAction1Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _TestReportOperationRealm operation;
  late _TestReportAssertRealm assert_;
}
@RealmModel()
class _TestReportTeardownRealm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late List<_TestReportAction2Realm> action;
}
@RealmModel()
class _TestReportAction2Realm {
  @PrimaryKey() late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _TestReportOperationRealm operation;
}
