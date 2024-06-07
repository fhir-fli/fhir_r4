import 'package:realm/realm.dart';

@RealmModel()
class _DosageRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _FhirIntegerRealm sequence;
  late _PrimitiveElementRealm sequenceElement;
  late String text;
  late _PrimitiveElementRealm textElement;
  late List<_CodeableConceptRealm> additionalInstruction;
  late String patientInstruction;
  late _PrimitiveElementRealm patientInstructionElement;
  late _TimingRealm timing;
  late _FhirBooleanRealm asNeededBoolean;
  late _PrimitiveElementRealm asNeededBooleanElement;
  late _CodeableConceptRealm asNeededCodeableConcept;
  late _CodeableConceptRealm site;
  late _CodeableConceptRealm route;
  late _CodeableConceptRealm method;
  late List<_DosageDoseAndRateRealm> doseAndRate;
  late _RatioRealm maxDosePerPeriod;
  late _QuantityRealm maxDosePerAdministration;
  late _QuantityRealm maxDosePerLifetime;
}

@RealmModel()
class _DosageDoseAndRateRealm {
  @PrimaryKey()
  late String id;
  late List<_FhirExtensionRealm> extension_;
  late List<_FhirExtensionRealm> modifierExtension;
  late _CodeableConceptRealm type;
  late _RangeRealm doseRange;
  late _QuantityRealm doseQuantity;
  late _RatioRealm rateRatio;
  late _RangeRealm rateRange;
  late _QuantityRealm rateQuantity;
}
