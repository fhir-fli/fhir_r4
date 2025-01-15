// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:collection/collection.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';
import 'examples/step1/export.dart';
import 'examples/step10/export.dart';
import 'examples/step11/export.dart';
import 'examples/step12/export.dart';
import 'examples/step13/export.dart';
import 'examples/step14/step14.dart';
import 'examples/step15/export.dart';
import 'examples/step2/export.dart';
import 'examples/step3/export.dart';
import 'examples/step4/export.dart';
import 'examples/step5/export.dart';
import 'examples/step6/export.dart';
import 'examples/step7/export.dart';
import 'examples/step8/export.dart';
import 'examples/step9/export.dart';

Future<void> main() async {
  await loadResourceCache();

  group('1', () {
    resourceCache
      ..saveCanonicalResource(resource: structureDefinitionTLeft1)
      ..saveCanonicalResource(resource: structureDefinitionTRight1);

    test('Test Step 1', () async {
      final result = await fhirMappingEngine(
        TLeft1.fromJson(source1),
        structureMapStep1,
        resourceCache,
        TLeft1.fromJson,
        TRight1.fromJson,
      );

      expect(result?.toJson(), equals(resultStep1Source1));
    });
    // No matches found for group "string to string"
    // from http://hl7.org/fhir/StructureMap/tutorial-step1b
    // from rule rule_a_short
    test('Test Step 1b', () async {
      final result = await fhirMappingEngine(
        TLeft1.fromJson(source1),
        structureMapStep1b,
        resourceCache,
        TLeft1.fromJson,
        TRight1.fromJson,
      );
      expect(result?.toJson(), equals(resultStep1bSource1));
    });
  });

  group('2', () {
    resourceCache
      ..saveCanonicalResource(resource: structureDefinitionTLeft2)
      ..saveCanonicalResource(resource: structureDefinitionTRight2);

    test('Test Step 2', () async {
      final result = await fhirMappingEngine(
        TLeft2.fromJson(source2),
        structureMapStep2,
        resourceCache,
        TLeft2.fromJson,
        TRight2.fromJson,
      );
      expect(
        result?.toJson(),
        equals(resultStep2Source2),
      );
    });
  });

  group('3', () {
    resourceCache
      ..saveCanonicalResource(resource: structureDefinitionTLeft3)
      ..saveCanonicalResource(resource: structureDefinitionTRight3);

    test('Test Step 3a Source 3', () async {
      final result = await fhirMappingEngine(
        TLeft3.fromJson(source3),
        structureMapStep3a,
        resourceCache,
        TLeft3.fromJson,
        TRight3.fromJson,
      );
      expect(
        result?.toJson(),
        equals(resultStep3aSource3),
      );
    });

    test('Test Step 3a Source 3min', () async {
      final result = await fhirMappingEngine(
        TLeft3.fromJson(source3min),
        structureMapStep3a,
        resourceCache,
        TLeft3.fromJson,
        TRight3.fromJson,
      );
      expect(
        result?.toJson(),
        equals(resultStep3aSource3min),
      );
    });

    test('Test Step 3b Source 3', () async {
      final result = await fhirMappingEngine(
        TLeft3.fromJson(source3),
        structureMapStep3b,
        resourceCache,
        TLeft3.fromJson,
        TRight3.fromJson,
      );
      expect(
        result?.toJson(),
        equals(resultStep3bSource3),
      );
    });

    test('Test Step 3b Source 3min', () async {
      final result = await fhirMappingEngine(
        TLeft3.fromJson(source3min),
        structureMapStep3b,
        resourceCache,
        TLeft3.fromJson,
        TRight3.fromJson,
      );
      expect(
        result?.toJson(),
        equals(resultStep3bSource3min),
      );
    });

    // test('Test Step 3c Source 3', () async {
    //   final result = await fhirMappingEngine(
    //     TLeft3.fromJson(source3),
    //     structureMapStep3c,
    //     resourceCache,
    //     TRight3.fromJson,
    //   );
    //   expect(
    //     result?.toJson(),
    //     equals(resultStep3cSource3),
    //   );
    // });
    // test('Test Step 3c Source 3min', () async {
    //   final result = await fhirMappingEngine(
    //     TLeft3.fromJson(source3min),
    //     structureMapStep3c,
    //     resourceCache,
    //     TRight3.fromJson,
    //   );
    //   expect(
    //     result?.toJson(),
    //     equals(resultStep3cSource3min),
    //   );
    // });
  });

  // group('4', () {
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTLeft4,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTRight4,
  //   );

  //   test('Test Step 4a Source 4', () async {
  //     expect(
  //       await fhirMappingEngine(source4, structureMapStep4a, resourceCache),
  //       equals(resultStep4aSource4),
  //     );
  //   });

  //   test('Test Step 4a Source 4b', () async {
  //     print(fhirMappingEngine(source4b, structureMapStep4a, resourceCache));
  //     expect(
  //       await fhirMappingEngine(source4b, structureMapStep4a, resourceCache),
  //       equals(resultStep4aSource4b),
  //     );
  //   });

  //   // TODO(Dokotela): - single quotes around FHIRPath
  //   // Skipping rule rule_a21b due to condition 'a21.isInteger()'
  //   // test('Test Step 4b Source 4', ()  async {
  //   //   expect(fhirMappingEngine(source4, structureMapStep4b, resourceCache),
  //   //       equals(resultStep4bSource4));
  //   // });

  //   test('Test Step 4b Source 4b', () async {
  //     expect(
  //       await fhirMappingEngine(source4b, structureMapStep4b, resourceCache),
  //       equals(resultStep4bSource4b),
  //     );
  //   });

  //   test('Test Step 4b2 Source 4', () async {
  //     expect(
  //       await fhirMappingEngine(source4, structureMapStep4b2, resourceCache),
  //       equals(resultStep4b2Source4),
  //     );
  //   });

  //   test('Test Step 4b2 Source 4b', () async {
  //     expect(
  //       await fhirMappingEngine(source4b, structureMapStep4b2, resourceCache),
  //       equals(resultStep4b2Source4b),
  //     );
  //   });

  //   test('Test Step 4b3 Source 4', () async {
  //     expect(
  //       await fhirMappingEngine(source4, structureMapStep4b3, resourceCache),
  //       equals(resultStep4b3Source4),
  //     );
  //   });

  //   test('Test Step 4b3 Source 4b', () async {
  //     expect(
  //       await fhirMappingEngine(source4b, structureMapStep4b3, resourceCache),
  //       equals(resultStep4b3Source4b),
  //     );
  //   });

  //   test('Test Step 4c Source 4', () async {
  //     expect(
  //       await fhirMappingEngine(source4, structureMapStep4c, resourceCache),
  //       equals(resultStep4cSource4),
  //     );
  //   });

  //   test('Test Step 4c Source 4b', () async {
  //     expect(
  //       await fhirMappingEngine(source4b, structureMapStep4c, resourceCache),
  //       equals(resultStep4cSource4b),
  //     );
  //   });
  // });

  // group('5', () {
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTLeft5,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTRight5,
  //   );

  //   test('Test Step 5', () async {
  //     expect(
  //       await fhirMappingEngine(source5, structureMapStep5, resourceCache),
  //       equals(resultStep5Source5),
  //     );
  //   });
  //   test('Test Step 5b', () async {
  //     expect(
  //       await fhirMappingEngine(source5b, structureMapStep5, resourceCache),
  //       equals(resultStep5Source5b),
  //     );
  //   });
  // });

  // group('6', () {
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTLeft6,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTRight6,
  //   );

  //   test('Test Step 6a Source 6', () async {
  //     expect(
  //       await fhirMappingEngine(source6, structureMapStep6a, resourceCache),
  //       equals(resultStep6aSource6),
  //     );
  //   });

  //   test('Test Step 6a Source 6b', () async {
  //     expect(
  //       await fhirMappingEngine(source6b, structureMapStep6a, resourceCache),
  //       equals(resultStep6aSource6b),
  //     );
  //   });

  //   test('Test Step 6b Source 6', () async {
  //     expect(
  //       await fhirMappingEngine(source6, structureMapStep6b, resourceCache),
  //       equals(resultStep6bSource6),
  //     );
  //   });

  //   test('Test Step 6b Source 6b', () async {
  //     expect(
  //       await fhirMappingEngine(source6b, structureMapStep6b, resourceCache),
  //       equals(resultStep6bSource6b),
  //     );
  //   });

  //   test('Test Step 6c Source 6', () async {
  //     expect(
  //       await fhirMappingEngine(source6, structureMapStep6c, resourceCache),
  //       equals(resultStep6cSource6),
  //     );
  //   });

  //   test('Test Step 6c Source 6b', () async {
  //     expect(
  //       await fhirMappingEngine(source6b, structureMapStep6c, resourceCache),
  //       equals(resultStep6cSource6b),
  //     );
  //   });

  //   test('Test Step 6d Source 6', () async {
  //     expect(
  //       await fhirMappingEngine(source6, structureMapStep6d, resourceCache),
  //       equals(resultStep6dSource6),
  //     );
  //   });

  //   test('Test Step 6d Source 6b', () async {
  //     expect(
  //       await fhirMappingEngine(source6b, structureMapStep6d, resourceCache),
  //       equals(resultStep6dSource6b),
  //     );
  //   });
  // });

  // group('7', () {
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTLeft7,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTRight7,
  //   );

  //   test('Test Step 7 Source 7', () async {
  //     expect(
  //       await fhirMappingEngine(source7, structureMapStep7, resourceCache),
  //       equals(resultStep7Source7),
  //     );
  //   });

  //   test('Test Step 7b Source 7', () async {
  //     expect(
  //       await fhirMappingEngine(source7, structureMapStep7b, resourceCache),
  //       equals(resultStep7bSource7),
  //     );
  //   });
  // });

  // group('8', () {
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTLeft8,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTRight8,
  //   );

  //   test('Test Step 8 Source 8', () async {
  //     expect(
  //       await fhirMappingEngine(source8, structureMapStep8, resourceCache),
  //       equals(resultStep8Source8),
  //     );
  //   });
  // });

  // group('9', () {
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTLeft9,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTRight9,
  //   );

  //   test('Test Step 9 Source 9', () async {
  //     expect(
  //       await fhirMappingEngine(source9, structureMapStep9, resourceCache),
  //       equals(resultStep9Source9),
  //     );
  //   });
  //   test('Test Step 9 Source 9b', () async {
  //     expect(
  //       await fhirMappingEngine(source9b, structureMapStep9, resourceCache),
  //       equals(resultStep9Source9b),
  //     );
  //   });

  //   test('Test Step 9check Source 9', () async {
  //     expect(
  //       await fhirMappingEngine(source9, structureMapStep9check, resourceCache),
  //       equals(resultStep9checkSource9),
  //     );
  //   });
  //   test('Test Step 9check Source 9b', () async {
  //     expect(
  //       await fhirMappingEngine(
  //         source9b,
  //         structureMapStep9check,
  //         resourceCache,
  //       ),
  //       equals(resultStep9checkSource9b),
  //     );
  //   });
  // });

  // group('10', () {
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTLeft10,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTRight10,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTLeftInner10,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTRightInner10,
  //   );

  //   test('Test Step 10 Source10', () async {
  //     expect(
  //       await fhirMappingEngine(source10, structureMapStep10, resourceCache),
  //       equals(resultStep10Source10),
  //     );
  //   });
  // });

  // group('Step 11', () {
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTLeft11,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTRight11,
  //   );
  //   test('Step 11 Source 11', () async {
  //     expect(
  //       await fhirMappingEngine(source11, structureMapStep11, resourceCache),
  //       equals(resultStep11Source11),
  //     );
  //   });
  // });

  // group('Step 12', () {
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTLeft12,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTRight12,
  //   );

  //   test('- 12', () async {
  //     expect(
  //       await fhirMappingEngine(source12, structureMapStep12, resourceCache),
  //       equals(resultStep12Source12),
  //     );
  //   });
  // });

  // group('Step 13', () {
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTLeft13,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTRight13,
  //   );

  //   test('- 13', () async {
  //     final result =
  //         await fhirMappingEngine(source13, structureMapStep13, resourceCache);

  //     // Extract the generated ID from the actual result
  //     final f2 = result?['f2'];
  //     final firstF2 = f2 is List && f2.isNotEmpty ? f2[0] : null;
  //     final resultBasicId =
  //         firstF2 is Map<String, dynamic> ? firstF2['id'] : null;

  //     // Update the expected result with the generated ID
  //     // Ensure that resultStep13Source13 is a deep copy to avoid side effects
  //     final expectedResult = Map<String, dynamic>.from(resultStep13Source13);
  //     expectedResult['f2'][0]['id'] = resultBasicId;
  //     expectedResult['ptr'] = ['Basic/$resultBasicId'];

  //     // Compare the actual result with the expected result
  //     expect(result, equals(expectedResult));
  //   });
  // });

  // group('Step 14', () {
  //   test('14', () async {
  //     expect(
  //       const DeepCollectionEquality().equals(
  //         await fhirMappingEngine(source14, structureMapStep14, resourceCache),
  //         resultStep14Source14,
  //       ),
  //       true,
  //     );
  //   });
  // });

  // group('Step 15', () {
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTLeft15,
  //   );
  //   resourceCache.saveCanonicalResource(
  //     resource: structureDefinitionTRight15,
  //   );
  //   test('15', () async {
  //     expect(
  //       await fhirMappingEngine(source15, structureMapStep15, resourceCache),
  //       resultStep15Source15,
  //     );
  //   });
  // });
}
