// ignore_for_file: prefer_single_quotes, always_specify_types,
// ignore_for_file: avoid_escaping_inner_quotes

import 'package:collection/collection.dart' show DeepCollectionEquality;
import 'package:fhir_r4/fhir_r4.dart' show Bundle, QuestionnaireResponse;
import 'package:fhir_r4_utils/fhir_r4_utils.dart';
import 'package:test/test.dart';
import 'examples/step1/export.dart';
// import 'examples/step10/export.dart';
import 'examples/step11/export.dart';
import 'examples/step12/export.dart';
import 'examples/step13/export.dart';
import 'examples/step14/export.dart';
import 'examples/step2/export.dart';
import 'examples/step3/export.dart';
import 'examples/step4/export.dart';
import 'examples/step5/export.dart';
import 'examples/step6/export.dart';
import 'examples/step7/export.dart';
import 'examples/step8/export.dart';
import 'examples/step9/export.dart';

Future<void> main() async {
  final resourceCache = LocalResourceCache();
  group('1', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft1)
      ..saveCanonicalResource(structureDefinitionTRight1);

    test('Test Step 1', () async {
      final result = await fhirMappingEngine(
        TLeft1.fromJson(source1).toBuilder,
        structureMapStep1,
        resourceCache,
        TRight1.empty().toBuilder,
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
        TLeft2.fromJson(source2).toBuilder,
        structureMapStep2,
        resourceCache,
        TRight2.empty().toBuilder,
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
        TLeft3.fromJson(source3).toBuilder,
        structureMapStep3a,
        resourceCache,
        TRight3.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep3aSource3),
      );
    });

    test('Test Step 3a Source 3min', () async {
      final result = await fhirMappingEngine(
        TLeft3.fromJson(source3min).toBuilder,
        structureMapStep3a,
        resourceCache,
        TRight3.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep3aSource3min),
      );
    });

    test('Test Step 3b Source 3', () async {
      final result = await fhirMappingEngine(
        TLeft3.fromJson(source3).toBuilder,
        structureMapStep3b,
        resourceCache,
        TRight3.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep3bSource3),
      );
    });

    test('Test Step 3b Source 3min', () async {
      final result = await fhirMappingEngine(
        TLeft3.fromJson(source3min).toBuilder,
        structureMapStep3b,
        resourceCache,
        TRight3.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep3bSource3min),
      );
    });

    test('Test Step 3c Source 3', () async {
      final result = await fhirMappingEngine(
        TLeft3.fromJson(source3).toBuilder,
        structureMapStep3c,
        resourceCache,
        TRight3.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep3cSource3),
      );
    });
    test('Test Step 3c Source 3min', () async {
      final result = await fhirMappingEngine(
        TLeft3.fromJson(source3min).toBuilder,
        structureMapStep3c,
        resourceCache,
        TRight3.empty().toBuilder,
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
        TLeft4.fromJson(source4).toBuilder,
        structureMapStep4a,
        resourceCache,
        TRight4.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep4aSource4),
      );
    });

    test('Test Step 4a Source 4b', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4b).toBuilder,
        structureMapStep4a,
        resourceCache,
        TRight4.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep4aSource4b),
      );
    });

    test('Test Step 4b Source 4', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4).toBuilder,
        structureMapStep4b,
        resourceCache,
        TRight4.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep4bSource4),
      );
    });

    test('Test Step 4b Source 4b', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4b).toBuilder,
        structureMapStep4b,
        resourceCache,
        TRight4.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep4bSource4b),
      );
    });

    test('Test Step 4b2 Source 4', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4).toBuilder,
        structureMapStep4b2,
        resourceCache,
        TRight4.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep4b2Source4),
      );
    });

    test('Test Step 4b2 Source 4b', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4b).toBuilder,
        structureMapStep4b2,
        resourceCache,
        TRight4.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep4b2Source4b),
      );
    });

    test('Test Step 4b3 Source 4', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4).toBuilder,
        structureMapStep4b3,
        resourceCache,
        TRight4.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep4b3Source4),
      );
    });

    test('Test Step 4b3 Source 4b', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4b).toBuilder,
        structureMapStep4b3,
        resourceCache,
        TRight4.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep4b3Source4b),
      );
    });

    test('Test Step 4c Source 4', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4).toBuilder,
        structureMapStep4c,
        resourceCache,
        TRight4.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep4cSource4),
      );
    });

    test('Test Step 4c Source 4b', () async {
      final result = await fhirMappingEngine(
        TLeft4.fromJson(source4b).toBuilder,
        structureMapStep4c,
        resourceCache,
        TRight4.empty().toBuilder,
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
        TLeft5.fromJson(source5).toBuilder,
        structureMapStep5,
        resourceCache,
        TRight5.empty().toBuilder,
      );

      expect(
        result?.toJson(),
        equals(resultStep5Source5),
      );
    });
    test('Test Step 5b', () async {
      final result = await fhirMappingEngine(
        TLeft5.fromJson(source5b).toBuilder,
        structureMapStep5,
        resourceCache,
        TRight5.empty().toBuilder,
      );
      expect(
        result?.toJson(),
        equals(resultStep5Source5b),
      );
    });
  });

  group('6', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft6)
      ..saveCanonicalResource(structureDefinitionTRight6);

    test('Test Step 6a Source 6', () async {
      final result = await fhirMappingEngine(
        TLeft6.fromJson(source6).toBuilder,
        structureMapStep6a,
        resourceCache,
        TRight6.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep6aSource6));
    });

    test('Test Step 6a Source 6b', () async {
      final result = await fhirMappingEngine(
        TLeft6.fromJson(source6b).toBuilder,
        structureMapStep6a,
        resourceCache,
        TRight6.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep6aSource6b));
    });

    test('Test Step 6b Source 6', () async {
      final result = await fhirMappingEngine(
        TLeft6.fromJson(source6).toBuilder,
        structureMapStep6b,
        resourceCache,
        TRight6.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep6bSource6));
    });

    test('Test Step 6b Source 6b', () async {
      final result = await fhirMappingEngine(
        TLeft6.fromJson(source6b).toBuilder,
        structureMapStep6b,
        resourceCache,
        TRight6.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep6bSource6b));
    });

    test('Test Step 6c Source 6', () async {
      final result = await fhirMappingEngine(
        TLeft6.fromJson(source6).toBuilder,
        structureMapStep6c,
        resourceCache,
        TRight6.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep6cSource6));
    });

    test('Test Step 6c Source 6b', () async {
      final result = await fhirMappingEngine(
        TLeft6.fromJson(source6b).toBuilder,
        structureMapStep6c,
        resourceCache,
        TRight6.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep6cSource6b));
    });

    test('Test Step 6d Source 6', () async {
      final result = await fhirMappingEngine(
        TLeft6.fromJson(source6).toBuilder,
        structureMapStep6d,
        resourceCache,
        TRight6.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep6dSource6));
    });

    test('Test Step 6d Source 6b', () async {
      final result = await fhirMappingEngine(
        TLeft6.fromJson(source6b).toBuilder,
        structureMapStep6d,
        resourceCache,
        TRight6.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep6dSource6b));
    });
  });

  group('7', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft7)
      ..saveCanonicalResource(structureDefinitionTRight7);

    FhirBaseBuilder? testEmptyFromType(String type) {
      final fhirType = type.toLowerCase();
      switch (fhirType) {
        case 'tleft7':
        case 'tleft7builder':
          return TLeft7Builder.empty();
        case 'tleft7aa':
        case 'tleft7aabuilder':
          return TLeft7AaBuilder.empty();
        case 'tright7':
        case 'tright7builder':
          return TRight7Builder.empty();
        case 'tright7aa':
        case 'tright7aabuilder':
          return TRight7AaBuilder.empty();
      }
      return null;
    }

    test('Test Step 7 Source 7', () async {
      final result = await fhirMappingEngine(
        TLeft7.fromJson(source7).toBuilder,
        structureMapStep7,
        resourceCache,
        TRight7.empty().toBuilder,
        testEmptyFromType,
      );
      expect(result?.toJson(), equals(resultStep7Source7));
    });

    test('Test Step 7b Source 7', () async {
      final result = await fhirMappingEngine(
        TLeft7.fromJson(source7).toBuilder,
        structureMapStep7b,
        resourceCache,
        TRight7.empty().toBuilder,
        testEmptyFromType,
      );
      expect(result?.toJson(), equals(resultStep7bSource7));
    });
  });

  group('8', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft8)
      ..saveCanonicalResource(structureDefinitionTRight8);

    test('Test Step 8 Source 8', () async {
      final result = await fhirMappingEngine(
        TLeft8.fromJson(source8).toBuilder,
        structureMapStep8,
        resourceCache,
        TRight8.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep8Source8));
    });
  });

  group('9', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft9)
      ..saveCanonicalResource(structureDefinitionTRight9);

    test('Test Step 9 Source 9', () async {
      final result = await fhirMappingEngine(
        TLeft9.fromJson(source9).toBuilder,
        structureMapStep9,
        resourceCache,
        TRight9.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep9Source9));
    });

    test('Test Step 9 Source 9b', () async {
      final result = await fhirMappingEngine(
        TLeft9.fromJson(source9b).toBuilder,
        structureMapStep9,
        resourceCache,
        TRight9.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep9Source9b));
    });

    test('Test Step 9check Source 9', () async {
      final result = await fhirMappingEngine(
        TLeft9.fromJson(source9).toBuilder,
        structureMapStep9check,
        resourceCache,
        TRight9.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep9checkSource9));
    });

    test('Test Step 9check Source 9b', () async {
      final result = await fhirMappingEngine(
        TLeft9.fromJson(source9b).toBuilder,
        structureMapStep9check,
        resourceCache,
        TRight9.empty().toBuilder,
      );
      expect(result?.toJson(), equals(resultStep9checkSource9b));
    });
  });

  // TODO(Dokotela): I think this is another error
  // group('10', () {
  //   resourceCache
  //     ..saveCanonicalResource(structureDefinitionTLeft10)
  //     ..saveCanonicalResource(structureDefinitionTRight10)
  //     ..saveCanonicalResource(structureDefinitionTLeftInner10)
  //     ..saveCanonicalResource(structureDefinitionTRightInner10);

  //   FhirBaseBuilder? testEmptyFromType(String type) {
  //     final fhirType = type.toLowerCase();
  //     switch (fhirType) {
  //       case 'tleft10':
  //       case 'tleft10builder':
  //         return TLeft10Builder.empty();
  //       case 'tleft10inner':
  //       case 'tleft10innerbuilder':
  //         return TLeftInner10Builder.empty();
  //       case 'tright10':
  //       case 'tright10builder':
  //         return TRight10Builder.empty();
  //       case 'trightinner10':
  //       case 'trightinner10builder':
  //         return TRightInner10Builder.empty();
  //     }
  //     return null;
  //   }

  //   test('Test Step 10 Source 10', () async {
  //     final result = await fhirMappingEngine(
  //       TLeft10.fromJson(source10).toBuilder,
  //       structureMapStep10,
  //       resourceCache,
  //       TRight10.empty().toBuilder,
  //       testEmptyFromType,
  //     );
  //     expect(result?.toJson(), equals(resultStep10Source10));
  //   });
  // });

  group('Step 11', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft11)
      ..saveCanonicalResource(structureDefinitionTRight11);

    FhirBaseBuilder? testEmptyFromType(String type) {
      final fhirType = type.toLowerCase();
      switch (fhirType) {
        case 'tleft11':
        case 'tleft11builder':
          return TLeft11Builder.empty();
        case 'tright11e':
        case 'tright11ebuilder':
          return TRight11eBuilder.empty();
        case 'tright11':
        case 'tright11builder':
          return TRight11Builder.empty();
      }
      return null;
    }

    test('Step 11 Source 11', () async {
      final result = await fhirMappingEngine(
        TLeft11.fromJson(source11).toBuilder,
        structureMapStep11,
        resourceCache,
        TRight11.empty().toBuilder,
        testEmptyFromType,
      );
      expect(result?.toJson(), equals(resultStep11Source11));
    });
  });

  group('Step 12', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft12)
      ..saveCanonicalResource(structureDefinitionTRight12);

    FhirBaseBuilder? testEmptyFromType(String type) {
      final fhirType = type.toLowerCase();
      switch (fhirType) {
        case 'tright12az1':
        case 'tright12az1builder':
          return TRight12az1Builder.empty();
      }
      return null;
    }

    test('Step 12 Source 12', () async {
      final result = await fhirMappingEngine(
        TLeft12.fromJson(source12).toBuilder,
        structureMapStep12,
        resourceCache,
        TRight12.empty().toBuilder,
        testEmptyFromType,
      );
      expect(result?.toJson(), equals(resultStep12Source12));
    });
  });

  group('Step 13', () {
    resourceCache
      ..saveCanonicalResource(structureDefinitionTLeft13)
      ..saveCanonicalResource(structureDefinitionTRight13);

    test('Step 13', () async {
      final result = await fhirMappingEngine(
        TLeft13.fromJson(source13).toBuilder,
        structureMapStep13,
        resourceCache,
        TRight13.empty().toBuilder,
      );

      print('result: ${prettyPrintJson(result?.toJson() ?? {})}');

      // Extract the generated ID from the actual result
      final f2 = result?.toJson()['f2'];
      final firstF2 = f2 is List && f2.isNotEmpty ? f2[0] : null;
      final resultBasicId =
          firstF2 is Map<String, dynamic> ? firstF2['id'] : null;

      // Update the expected result with the generated ID
      final expectedResult = Map<String, dynamic>.from(resultStep13Source13);
      // ignore: avoid_dynamic_calls
      expectedResult['f2'][0]['id'] = resultBasicId;
      expectedResult['ptr'] = ['Basic/$resultBasicId'];

      expect(result?.toJson(), equals(expectedResult));
    });
  });

  group('Step 14', () {
    test('Step 14', () async {
      final result = await fhirMappingEngine(
        QuestionnaireResponse.fromJson(source14).toBuilder,
        structureMapStep14,
        resourceCache,
        Bundle.empty().toBuilder,
      );

      print(prettyPrintJson(result?.toJson() ?? {}));

      expect(
        const DeepCollectionEquality().equals(
          result?.toJson(),
          resultStep14Source14,
        ),
        true,
      );
    });
  });

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
