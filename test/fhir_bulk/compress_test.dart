// ignore_for_file: invalid_annotation_target

// Dart imports:
import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

import 'ndjson/ndjson.dart';

void main() {
  group('FHIR Bulk From File/s:', () {
    test('From Accounts ndjson file', () async {
      final resources =
          await FhirBulk.fromFile('./test/fhir_bulk/ndjson/Account.ndjson');
      var stringList = '';
      for (final resource in resources) {
        stringList += '\n${jsonEncode(resource.toJson())}';
      }
      stringList = stringList.replaceFirst('\n', '');
      expect(stringList, account);
    });

    test('From MedicationRequest ndjson file', () async {
      final resources = await FhirBulk.fromFile(
        './test/fhir_bulk/ndjson/MedicationRequest.ndjson',
      );
      var stringList = '';
      for (final resource in resources) {
        stringList += '\n${jsonEncode(resource.toJson())}';
      }
      stringList = stringList.replaceFirst('\n', '');
      expect(stringList, medicationRequest);
    });
  });

  group('FHIR Bulk From Compressed File/s:', () {
    test('From Accounts zip file', () async {
      final resources = await FhirBulk.fromCompressedFile(
        './test/fhir_bulk/ndjson/account.zip',
      );
      var stringList = '';
      for (final resource in resources) {
        stringList += '\n${jsonEncode(resource.toJson())}';
      }
      stringList = stringList.replaceFirst('\n', '');
      expect(stringList, account);
    });

    test('From MedicationRequest zip file', () async {
      final resources = await FhirBulk.fromCompressedFile(
        './test/fhir_bulk/ndjson/medicationRequest.zip',
      );
      var stringList = '';
      for (final resource in resources) {
        stringList += '\n${jsonEncode(resource.toJson())}';
      }
      stringList = stringList.replaceFirst('\n', '');
      expect(stringList, medicationRequest);
    });

    test('From Accounts & MedicationRequest zip file', () async {
      final resources = await FhirBulk.fromCompressedFile(
        './test/fhir_bulk/ndjson/accountMedRequest.zip',
      );
      var stringList = '';
      for (final resource in resources) {
        stringList += '\n${jsonEncode(resource.toJson())}';
      }
      stringList = stringList.replaceFirst('\n', '');
      expect(stringList, accountMedRequest);
    });

    test('From Account gzip file', () async {
      final resources = await FhirBulk.fromCompressedFile(
        './test/fhir_bulk/ndjson/Account.ndjson.gz',
      );
      var stringList = '';
      for (final resource in resources) {
        stringList += '\n${jsonEncode(resource.toJson())}';
      }
      stringList = stringList.replaceFirst('\n', '');
      expect(stringList, account);
    });

    test('From MedicationRequest gzip file', () async {
      final resources = await FhirBulk.fromCompressedFile(
        './test/fhir_bulk/ndjson/MedicationRequest.ndjson.gz',
      );
      var stringList = '';
      for (final resource in resources) {
        stringList += '\n${jsonEncode(resource.toJson())}';
      }
      stringList = stringList.replaceFirst('\n', '');
      expect(stringList, medicationRequest);
    });

    test('From MedicationRequest tar-gzip file', () async {
      final resources = await FhirBulk.fromCompressedFile(
        './test/fhir_bulk/ndjson/tarGzip.tar.gz',
      );
      var stringList = '';
      for (final resource in resources) {
        stringList += '\n${jsonEncode(resource.toJson())}';
      }
      stringList = stringList.replaceFirst('\n', '');
      expect(stringList, medRequestAccount);
    });
  });

  group('Creating Bulk FHIR String', () {
    test('To Accounts ndjson', () async {
      final resources = FhirBulk.fromNdJson(account);
      final resourceList = <Resource>[];
      resources.forEach(resourceList.add);
      final bulkString = FhirBulk.toNdJson(resourceList);
      expect(bulkString, account);
    });

    test('To MedicationRequest ndjson', () {
      final resources = FhirBulk.fromNdJson(medicationRequest);
      final resourceList = <Resource>[];
      resources.forEach(resourceList.add);
      final bulkString = FhirBulk.toNdJson(resourceList);
      expect(bulkString, medicationRequest);
    });
  });
}
