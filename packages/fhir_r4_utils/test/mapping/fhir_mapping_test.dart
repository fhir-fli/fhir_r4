// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:test/test.dart';
import 'examples/step1/export.dart';
// import 'examples/step10/export.dart';
// import 'examples/step11/export.dart';
// import 'examples/step12/export.dart';
// import 'examples/step13/export.dart';
import 'examples/step2/export.dart';
import 'examples/step3/export.dart';
import 'examples/step4/export.dart';
import 'examples/step5/export.dart';
// import 'examples/step6/export.dart';
// import 'examples/step7/export.dart';
// import 'examples/step8/export.dart';
// import 'examples/step9/export.dart';

Future<void> main() async {
  final resourceCache = LocalResourceCache();
  group('1', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft1)
      ..saveCanonicalResource(structureDefinitionTRight1);

    test('Test Step 1', () async {
      final result = await fhirMappingEngine(
        TLeft1.fromJson(source1),
        structureMapStep1,
        resourceCache,
        TRight1.empty(),
      );

      expect(result?.toJson(), equals(resultStep1Source1));
    });
    // No matches found for group "string to string"
    // from http://hl7.org/fhir/StructureMap/tutorial-step1b
    // from rule rule_a_short
    // test('Test Step 1b', () async {
    //   final result = await fhirMappingEngine(
    //     TLeft1.fromJson(source1),
    //     structureMapStep1b,
    //     resourceCache,
    //     TRight1.empty(),
    //   );
    //   expect(result?.toJson(), equals(resultStep1bSource1));
    // });
  });

  group('2', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft2)
      ..saveCanonicalResource(structureDefinitionTRight2);

    test('Test Step 2', () async {
      final result = await fhirMappingEngine(
        TLeft2.fromJson(source2),
        structureMapStep2,
        resourceCache,
        TRight2.empty(),
      );
      expect(
        result?.toJson(),
        equals(resultStep2Source2),
      );
    });
  });

  group('3', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft3)
      ..saveCanonicalResource(structureDefinitionTRight3);

    test('Test Step 3a Source 3', () async {
      final result = await fhirMappingEngine(
        TLeft3.fromJson(source3),
        structureMapStep3a,
        resourceCache,
        TRight3.empty(),
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
        TRight3.empty(),
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
        TRight3.empty(),
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
        TRight3.empty(),
      );
      expect(
        result?.toJson(),
        equals(resultStep3bSource3min),
      );
    });

    test('Test Step 3c Source 3', () async {
      final result = await fhirMappingEngine(
        TLeft3.fromJson(source3),
        structureMapStep3c,
        resourceCache,
        TRight3.empty(),
      );
      expect(
        result?.toJson(),
        equals(resultStep3cSource3),
      );
    });
    test('Test Step 3c Source 3min', () async {
      final result = await fhirMappingEngine(
        TLeft3.fromJson(source3min),
        structureMapStep3c,
        resourceCache,
        TRight3.empty(),
      );
      expect(
        result?.toJson(),
        equals(resultStep3cSource3min),
      );
    });
  });

  group('4', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft4)
      ..saveCanonicalResource(structureDefinitionTRight4);

    test('Test Step 4a Source 4', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4),
        structureMapStep4a,
        resourceCache,
        TRight4.empty(),
      );
      expect(
        result?.toJson(),
        equals(resultStep4aSource4),
      );
    });

    test('Test Step 4a Source 4b', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4b),
        structureMapStep4a,
        resourceCache,
        TRight4.empty(),
      );
      expect(
        result?.toJson(),
        equals(resultStep4aSource4b),
      );
    });

    test('Test Step 4b Source 4', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4),
        structureMapStep4b,
        resourceCache,
        TRight4.empty(),
      );
      expect(
        result?.toJson(),
        equals(resultStep4bSource4),
      );
    });

    test('Test Step 4b Source 4b', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4b),
        structureMapStep4b,
        resourceCache,
        TRight4.empty(),
      );
      expect(
        result?.toJson(),
        equals(resultStep4bSource4b),
      );
    });

    // TODO(Dokotela) - automatically cast?
    // test('Test Step 4b2 Source 4', () async {
    //   final result = await fhirMappingEngine(
    //     TLeft4.fromJson(source4),
    //     structureMapStep4b2,
    //     resourceCache,
    //     TRight4.empty(),
    //   );
    //   expect(
    //     result?.toJson(),
    //     equals(resultStep4b2Source4),
    //   );
    // });

    test('Test Step 4b2 Source 4b', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4b),
        structureMapStep4b2,
        resourceCache,
        TRight4.empty(),
      );
      expect(
        result?.toJson(),
        equals(resultStep4b2Source4b),
      );
    });

    // TODO(Dokotela) - automatically cast?
    // test('Test Step 4b3 Source 4', () async {
    //   final result = await fhirMappingEngine(
    //     TLeft4.fromJson(source4),
    //     structureMapStep4b3,
    //     resourceCache,
    //     TRight4.empty(),
    //   );
    //   expect(
    //     result?.toJson(),
    //     equals(resultStep4b3Source4),
    //   );
    // });

    test('Test Step 4b3 Source 4b', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4b),
        structureMapStep4b3,
        resourceCache,
        TRight4.empty(),
      );
      expect(
        result?.toJson(),
        equals(resultStep4b3Source4b),
      );
    });

    test('Test Step 4c Source 4', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4),
        structureMapStep4c,
        resourceCache,
        TRight4.empty(),
      );
      expect(
        result?.toJson(),
        equals(resultStep4cSource4),
      );
    });

    test('Test Step 4c Source 4b', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4b),
        structureMapStep4c,
        resourceCache,
        TRight4.empty(),
      );
      expect(
        result?.toJson(),
        equals(resultStep4cSource4b),
      );
    });
  });

  group('5', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft5)
      ..saveCanonicalResource(structureDefinitionTRight5);

    test('Test Step 5', () async {
      final result = await fhirMappingEngine(
        TLeft5.fromJson(source5),
        structureMapStep5,
        resourceCache,
        TRight5.empty(),
      );

      expect(
        result?.toJson(),
        equals(resultStep5Source5),
      );
    });
    // test('Test Step 5b', () async {
    //   final result = await fhirMappingEngine(
    //     TLeft5.fromJson(source5b),
    //     structureMapStep5,
    //     resourceCache,
    //     TRight5.empty(),
    //   );
    //   expect(
    //     result?.toJson(),
    //     equals(resultStep5Source5b),
    //   );
    // });
  });

  // group('6', () {
  //   resourceCache
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTLeft6,
  //     )
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTRight6,
  //     );

  //   test('Test Step 6a Source 6', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft6.fromJson(source6),
  //       structureMapStep6a,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep6aSource6));
  //   });

  //   test('Test Step 6a Source 6b', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft6.fromJson(source6b),
  //       structureMapStep6a,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep6aSource6b));
  //   });

  //   test('Test Step 6b Source 6', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft6.fromJson(source6),
  //       structureMapStep6b,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep6bSource6));
  //   });

  //   test('Test Step 6b Source 6b', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft6.fromJson(source6b),
  //       structureMapStep6b,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep6bSource6b));
  //   });

  //   test('Test Step 6c Source 6', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft6.fromJson(source6),
  //       structureMapStep6c,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep6cSource6));
  //   });

  //   test('Test Step 6c Source 6b', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft6.fromJson(source6b),
  //       structureMapStep6c,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep6cSource6b));
  //   });

  //   test('Test Step 6d Source 6', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft6.fromJson(source6),
  //       structureMapStep6d,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep6dSource6));
  //   });

  //   test('Test Step 6d Source 6b', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft6.fromJson(source6b),
  //       structureMapStep6d,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep6dSource6b));
  //   });
  // });

  // group('7', () {
  //   resourceCache
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTLeft7,
  //     )
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTRight7,
  //     );

  //   test('Test Step 7 Source 7', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft7.fromJson(source7),
  //       structureMapStep7,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep7Source7));
  //   });

  //   test('Test Step 7b Source 7', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft7.fromJson(source7),
  //       structureMapStep7b,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep7bSource7));
  //   });
  // });

  // group('8', () {
  //   resourceCache
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTLeft8,
  //     )
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTRight8,
  //     );

  //   test('Test Step 8 Source 8', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft8.fromJson(source8),
  //       structureMapStep8,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep8Source8));
  //   });
  // });

  // group('9', () {
  //   resourceCache
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTLeft9,
  //     )
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTRight9,
  //     );

  //   test('Test Step 9 Source 9', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft9.fromJson(source9),
  //       structureMapStep9,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep9Source9));
  //   });

  //   test('Test Step 9 Source 9b', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft9.fromJson(source9b),
  //       structureMapStep9,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep9Source9b));
  //   });

  //   test('Test Step 9check Source 9', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft9.fromJson(source9),
  //       structureMapStep9check,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep9checkSource9));
  //   });

  //   test('Test Step 9check Source 9b', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft9.fromJson(source9b),
  //       structureMapStep9check,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep9checkSource9b));
  //   });
  // });

  // // TODO(Dokotela): - final answer is correct, but types are not
  // group('10', () {
  //   resourceCache
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTLeft10,
  //     )
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTRight10,
  //     )
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTLeftInner10,
  //     )
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTRightInner10,
  //     );

  //   test('Test Step 10 Source 10', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft10.fromJson(source10),
  //       structureMapStep10,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep10Source10));
  //   });
  // });

  // group('Step 11', () {
  //   resourceCache
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTLeft11,
  //     )
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTRight11,
  //     );

  //   test('Step 11 Source 11', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft11.fromJson(source11),
  //       structureMapStep11,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep11Source11));
  //   });
  // });

  // group('Step 12', () {
  //   resourceCache
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTLeft12,
  //     )
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTRight12,
  //     );

  //   test('Step 12 Source 12', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft12.fromJson(source12),
  //       structureMapStep12,
  //       resourceCache,
  //     );
  //     expect(result?.toJson(), equals(resultStep12Source12));
  //   });
  // });

  // group('Step 13', () {
  //   resourceCache
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTLeft13,
  //     )
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTRight13,
  //     );

  //   test('Step 13', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft13.fromJson(source13),
  //       structureMapStep13,
  //       resourceCache,
  //     );

  //     // Extract the generated ID from the actual result
  //     final f2 = result?.toJson()['f2'];
  //     final firstF2 = f2 is List && f2.isNotEmpty ? f2[0] : null;
  //     final resultBasicId =
  //         firstF2 is Map<String, dynamic> ? firstF2['id'] : null;

  //     // Update the expected result with the generated ID
  //     final expectedResult = Map<String, dynamic>.from(resultStep13Source13);
  //     // ignore: avoid_dynamic_calls
  //     expectedResult['f2'][0]['id'] = resultBasicId;
  //     expectedResult['ptr'] = ['Basic/$resultBasicId'];

  //     expect(result?.toJson(), equals(expectedResult));
  //   });
  // });

  // group('Step 14', () {
  //   test('Step 14', () async {
  //     final result = await fhirMappingEngine(
  //       QuestionnaireResponse.fromJson(source14),
  //       structureMapStep14,
  //       resourceCache,
  //     );

  //     print(prettyPrintJson(result?.toJson() ?? {}));

  //     expect(
  //       const DeepCollectionEquality().equals(
  //         result?.toJson(),
  //         resultStep14Source14,
  //       ),
  //       true,
  //     );
  //   });
  // });

  // group('Step 15', () {
  //   resourceCache
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTLeft15,
  //     )
  //     ..saveCanonicalResource(
  //       resource: structureDefinitionTRight15,
  //     );

  //   test('Step 15', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft15.fromJson(source15),
  //       structureMapStep15,
  //       resourceCache,
  //       TLeft15.fromJson,
  //       TRight15.fromJson,
  //     );
  //     expect(result?.toJson(), equals(resultStep15Source15));
  //   });
  // });
}
