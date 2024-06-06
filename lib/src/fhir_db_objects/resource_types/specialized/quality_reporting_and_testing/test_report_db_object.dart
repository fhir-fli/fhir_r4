import 'package:objectbox/objectbox.dart';
@Entity()
class TestReportDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
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
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> testScript = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> result = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> resultElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDecimalDbObject> score = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> scoreElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> tester = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> testerElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> issued = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> issuedElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<TestReportParticipantDbObject> participant = ToMany<TestReportParticipantDbObject>();
  final ToOne<TestReportSetupDbObject> setup = ToOne<TestReportSetupDbObject>();
  final ToMany<TestReportTestDbObject> test = ToMany<TestReportTestDbObject>();
  final ToOne<TestReportTeardownDbObject> teardown = ToOne<TestReportTeardownDbObject>();
  TestReportDbObject({required this.id});
}
@Entity()
class TestReportParticipantDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> uri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> uriElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> display = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> displayElement = ToOne<PrimitiveElementDbObject>();
  TestReportParticipantDbObject({required this.id});
}
@Entity()
class TestReportSetupDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<TestReportActionDbObject> action = ToMany<TestReportActionDbObject>();
  TestReportSetupDbObject({required this.id});
}
@Entity()
class TestReportActionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<TestReportOperationDbObject> operation = ToOne<TestReportOperationDbObject>();
  final ToOne<TestReportAssertDbObject> assert_ = ToOne<TestReportAssertDbObject>();
  TestReportActionDbObject({required this.id});
}
@Entity()
class TestReportOperationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> result = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> resultElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> message = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> messageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> detail = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> detailElement = ToOne<PrimitiveElementDbObject>();
  TestReportOperationDbObject({required this.id});
}
@Entity()
class TestReportAssertDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> result = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> resultElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirMarkdownDbObject> message = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> messageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> detail = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> detailElement = ToOne<PrimitiveElementDbObject>();
  TestReportAssertDbObject({required this.id});
}
@Entity()
class TestReportTestDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<TestReportAction1DbObject> action = ToMany<TestReportAction1DbObject>();
  TestReportTestDbObject({required this.id});
}
@Entity()
class TestReportAction1DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<TestReportOperationDbObject> operation = ToOne<TestReportOperationDbObject>();
  final ToOne<TestReportAssertDbObject> assert_ = ToOne<TestReportAssertDbObject>();
  TestReportAction1DbObject({required this.id});
}
@Entity()
class TestReportTeardownDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<TestReportAction2DbObject> action = ToMany<TestReportAction2DbObject>();
  TestReportTeardownDbObject({required this.id});
}
@Entity()
class TestReportAction2DbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<TestReportOperationDbObject> operation = ToOne<TestReportOperationDbObject>();
  TestReportAction2DbObject({required this.id});
}
