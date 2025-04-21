import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

Future<void> main() async {
  final parser = await StructureMapParser.create();
  final structureMap = parser.parse(map1, 'testMap1');

  final localResourceCache = CanonicalResourceCache();
  final onlineResourceCache = OnlineResourceCache();

  final engine = FhirMapEngine.create();


  group('Step 14', () {
    test('Step 14', () async {
      // await resourceCache.saveCanonicalResource(conditionCategoryCodeSystem);
      // await resourceCache.saveCanonicalResource(conditionClinicalCodeSystem);
      // await resourceCache.saveCanonicalResource(conditionVerStatusCodeSystem);
      // await resourceCache.saveCanonicalResource(observationCategoryCodeSystem);
      // await resourceCache.saveCanonicalResource(observationCategoryValueSet);
      final step14ResourceCache = OnlineResourceManager();
      final result = await fhirMappingEngine(
        QuestionnaireResponse.fromJson(source14).toBuilder,
        structureMapStep14,
        step14ResourceCache,
        BundleBuilder.empty(),
      );

      expect(
        const DeepCollectionEquality().equals(
          result?.toJson(),
          resultStep14Source14,
        ),
        true,
      );
    });
  });

  group('Step 15', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft15)
      ..saveCanonicalResource(structureDefinitionTRight15);

    test('Step 15', () async {
      final result = await fhirMappingEngine(
        TLeft15Builder.fromJson(source15),
        structureMapStep15,
        resourceCache,
        TRight15Builder.empty(),
      );
      expect(result?.toJson(), equals(resultStep15Source15));
    });
  });
}

}

const map1 = '''
map "http://hl7.org/fhir/StructureMap/tutorial-step1" = "tutorial-step1"

/// url = 'http://hl7.org/fhir/StructureMap/tutorial-step1'
/// name = 'tutorial-step1'
/// title = 'Tutorial Step 1'

uses "http://hl7.org/fhir/StructureDefinition/tutorial-left-1" alias TLeft as source
uses "http://hl7.org/fhir/StructureDefinition/tutorial-right-1" alias TRight as target

group tutorial(source src : TLeft, target tgt : TRight) {
    src.a as a -> tgt.a = a "rule_a";
}
''';
