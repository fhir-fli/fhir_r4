// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

import 'ndjson/ndjson.dart';

void main() {
  group('FHIR Bulk From File/s:', () {
    test('From Accounts ndjson file', () async {
      final resources = await FhirBulk.fromFile('./test/ndjson/Account.ndjson');
      final buffer = StringBuffer();
      for (final resource in resources) {
        buffer.writeln(jsonEncode(resource.toJson()));
      }
      final stringList = buffer.toString().trim();
      expect(stringList, account);
    });

    test('From MedicationRequest ndjson file', () async {
      final resources = await FhirBulk.fromFile(
        './test/ndjson/MedicationRequest.ndjson',
      );
      final buffer = StringBuffer();
      for (final resource in resources) {
        buffer.writeln(jsonEncode(resource.toJson()));
      }
      final stringList = buffer.toString().trim();
      expect(stringList, medicationRequest);
    });
  });

  group('FHIR Bulk From Compressed File/s:', () {
    test('From Accounts zip file', () async {
      final resources = await FhirBulk.fromCompressedFile(
        './test/ndjson/account.zip',
      );
      final buffer = StringBuffer();
      for (final resource in resources) {
        buffer.writeln(jsonEncode(resource.toJson()));
      }
      final stringList = buffer.toString().trim();
      expect(stringList, account);
    });

    test('From MedicationRequest zip file', () async {
      final resources = await FhirBulk.fromCompressedFile(
        './test/ndjson/medicationRequest.zip',
      );
      final buffer = StringBuffer();
      for (final resource in resources) {
        buffer.writeln(jsonEncode(resource.toJson()));
      }
      final stringList = buffer.toString().trim();
      expect(stringList, medicationRequest);
    });

    test('From Accounts & MedicationRequest zip file', () async {
      final resources = await FhirBulk.fromCompressedFile(
        './test/ndjson/accountMedRequest.zip',
      );
      final buffer = StringBuffer();
      for (final resource in resources) {
        buffer.writeln(jsonEncode(resource.toJson()));
      }
      final stringList = buffer.toString().trim();
      expect(stringList, accountMedRequest);
    });

    test('From Account gzip file', () async {
      final resources = await FhirBulk.fromCompressedFile(
        './test/ndjson/Account.ndjson.gz',
      );
      final buffer = StringBuffer();
      for (final resource in resources) {
        buffer.writeln(jsonEncode(resource.toJson()));
      }
      final stringList = buffer.toString().trim();
      expect(stringList, account);
    });

    test('From MedicationRequest gzip file', () async {
      final resources = await FhirBulk.fromCompressedFile(
        './test/ndjson/MedicationRequest.ndjson.gz',
      );
      final buffer = StringBuffer();
      for (final resource in resources) {
        buffer.writeln(jsonEncode(resource.toJson()));
      }
      final stringList = buffer.toString().trim();
      expect(stringList, medicationRequest);
    });

    test('From MedicationRequest tar-gzip file', () async {
      final resources = await FhirBulk.fromCompressedFile(
        './test/ndjson/tarGzip.tar.gz',
      );
      final buffer = StringBuffer();
      for (final resource in resources) {
        buffer.writeln(jsonEncode(resource.toJson()));
      }
      final stringList = buffer.toString().trim();
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
