/// Tests for rate limiting
library;

import 'package:fhir_r4_auth/fhir_r4_auth.dart';
import 'package:test/test.dart';

void main() {
  group('RateLimitConfig', () {
    test('creates token endpoint config', () {
      final config = RateLimitConfig.tokenEndpoint();

      expect(config.maxRequests, equals(5));
      expect(config.window, equals(const Duration(minutes: 1)));
      expect(config.burstSize, equals(2));
    });

    test('creates auth attempts config', () {
      final config = RateLimitConfig.authAttempts();

      expect(config.maxRequests, equals(3));
      expect(config.window, equals(const Duration(minutes: 5)));
      expect(config.burstSize, equals(1));
    });

    test('creates API requests config', () {
      final config = RateLimitConfig.apiRequests();

      expect(config.maxRequests, equals(100));
      expect(config.window, equals(const Duration(minutes: 1)));
      expect(config.burstSize, equals(20));
    });
  });

  group('RateLimiter - sliding window', () {
    late RateLimiter rateLimiter;
    const testKey = 'test-user';

    setUp(() {
      rateLimiter = RateLimiter(
        config: const RateLimitConfig(
          maxRequests: 3,
          window: Duration(seconds: 10),
        ),
      );
    });

    test('allows requests within limit', () async {
      expect(await rateLimiter.isAllowed(testKey), isTrue);
      await rateLimiter.recordRequest(testKey);

      expect(await rateLimiter.isAllowed(testKey), isTrue);
      await rateLimiter.recordRequest(testKey);

      expect(await rateLimiter.isAllowed(testKey), isTrue);
    });

    test('blocks requests exceeding limit', () async {
      // Use up all requests
      for (int i = 0; i < 3; i++) {
        expect(await rateLimiter.isAllowed(testKey), isTrue);
        await rateLimiter.recordRequest(testKey);
      }

      // Next request should be blocked
      expect(await rateLimiter.isAllowed(testKey), isFalse);
    });

    test('returns retry-after duration', () async {
      // Use up all requests
      for (int i = 0; i < 3; i++) {
        await rateLimiter.recordRequest(testKey);
      }

      final retryAfter = await rateLimiter.checkLimit(testKey);

      expect(retryAfter, isNotNull);
      expect(retryAfter!.inSeconds, greaterThan(0));
      expect(retryAfter.inSeconds, lessThanOrEqualTo(10));
    });

    test('tracks requests per key independently', () async {
      const key1 = 'user1';
      const key2 = 'user2';

      // User 1 uses all requests
      for (int i = 0; i < 3; i++) {
        await rateLimiter.recordRequest(key1);
      }

      // User 2 should still be allowed
      expect(await rateLimiter.isAllowed(key2), isTrue);
    });

    test('gets current request count', () async {
      expect(rateLimiter.getRequestCount(testKey), equals(0));

      await rateLimiter.recordRequest(testKey);
      expect(rateLimiter.getRequestCount(testKey), equals(1));

      await rateLimiter.recordRequest(testKey);
      expect(rateLimiter.getRequestCount(testKey), equals(2));
    });

    test('gets remaining requests', () async {
      expect(rateLimiter.getRemainingRequests(testKey), equals(3));

      await rateLimiter.recordRequest(testKey);
      expect(rateLimiter.getRemainingRequests(testKey), equals(2));

      await rateLimiter.recordRequest(testKey);
      expect(rateLimiter.getRemainingRequests(testKey), equals(1));
    });

    test('clears key data', () async {
      await rateLimiter.recordRequest(testKey);
      expect(rateLimiter.getRequestCount(testKey), equals(1));

      rateLimiter.clearKey(testKey);
      expect(rateLimiter.getRequestCount(testKey), equals(0));
    });

    test('clears all data', () async {
      await rateLimiter.recordRequest('user1');
      await rateLimiter.recordRequest('user2');

      rateLimiter.clearAll();

      expect(rateLimiter.getRequestCount('user1'), equals(0));
      expect(rateLimiter.getRequestCount('user2'), equals(0));
    });

    test('execute wraps function with rate limiting', () async {
      int callCount = 0;

      // Should succeed 3 times
      for (int i = 0; i < 3; i++) {
        await rateLimiter.execute(testKey, () async {
          callCount++;
          return 'success';
        });
      }

      expect(callCount, equals(3));

      // 4th attempt should throw
      expect(
        () => rateLimiter.execute(testKey, () async => 'fail'),
        throwsA(isA<RateLimitException>()),
      );
    });

    test('execute counts failed requests', () async {
      // First request succeeds
      await rateLimiter.execute(testKey, () async => 'success');

      // Second request fails but still counts
      try {
        await rateLimiter.execute(testKey, () async {
          throw Exception('Request failed');
        });
      } catch (e) {
        // Expected
      }

      // Should have 2 requests recorded
      expect(rateLimiter.getRequestCount(testKey), equals(2));
    });

    test('provides statistics', () async {
      await rateLimiter.recordRequest('user1');
      await rateLimiter.recordRequest('user2');

      final stats = rateLimiter.getStats();

      expect(stats['tracked_keys'], equals(2));
      expect(stats['total_requests'], equals(2));
      expect(stats['config'], isA<Map>());
    });
  });

  group('RateLimiter - token bucket', () {
    late RateLimiter rateLimiter;
    const testKey = 'test-user';

    setUp(() {
      rateLimiter = RateLimiter(
        config: const RateLimitConfig(
          maxRequests: 10,
          window: Duration(seconds: 10),
          burstSize: 3,
        ),
      );
    });

    test('allows burst up to limit', () async {
      // Should allow 3 rapid requests (burst)
      for (int i = 0; i < 3; i++) {
        expect(await rateLimiter.isAllowed(testKey), isTrue);
        await rateLimiter.recordRequest(testKey);
      }

      // 4th rapid request should be blocked by burst limit
      expect(await rateLimiter.isAllowed(testKey), isFalse);
    });
  });

  group('RateLimiterRegistry', () {
    late RateLimiterRegistry registry;

    setUp(() {
      registry = RateLimiterRegistry();
    });

    test('creates limiter for endpoint', () {
      final config = RateLimitConfig.tokenEndpoint();
      final limiter = registry.getOrCreate('token', config);

      expect(limiter, isNotNull);
      expect(limiter.config, equals(config));
    });

    test('returns same limiter for same endpoint', () {
      final config = RateLimitConfig.tokenEndpoint();
      final limiter1 = registry.getOrCreate('token', config);
      final limiter2 = registry.getOrCreate('token', config);

      expect(identical(limiter1, limiter2), isTrue);
    });

    test('gets existing limiter', () {
      final config = RateLimitConfig.tokenEndpoint();
      registry.getOrCreate('token', config);

      final limiter = registry.get('token');
      expect(limiter, isNotNull);
    });

    test('returns null for non-existent limiter', () {
      final limiter = registry.get('nonexistent');
      expect(limiter, isNull);
    });

    test('removes limiter', () {
      final config = RateLimitConfig.tokenEndpoint();
      registry.getOrCreate('token', config);

      registry.remove('token');

      expect(registry.get('token'), isNull);
    });

    test('clears all limiters', () {
      final config = RateLimitConfig.tokenEndpoint();
      registry.getOrCreate('token', config);
      registry.getOrCreate('auth', config);

      registry.clearAll();

      expect(registry.get('token'), isNull);
      expect(registry.get('auth'), isNull);
    });

    test('provides all statistics', () {
      final config = RateLimitConfig.tokenEndpoint();
      registry.getOrCreate('token', config);
      registry.getOrCreate('auth', config);

      final stats = registry.getAllStats();

      expect(stats['endpoints'], equals(2));
      expect(stats['limiters'], isA<Map>());
    });
  });

  group('RateLimitException', () {
    test('creates with message', () {
      const exception = RateLimitException('Rate limit exceeded');

      expect(exception.message, equals('Rate limit exceeded'));
      expect(exception.retryAfter, isNull);
    });

    test('creates with retry after', () {
      const retryAfter = Duration(seconds: 30);
      const exception = RateLimitException(
        'Rate limit exceeded',
        retryAfter: retryAfter,
      );

      expect(exception.retryAfter, equals(retryAfter));
    });

    test('has string representation', () {
      const exception = RateLimitException('Rate limit exceeded');

      expect(
        exception.toString(),
        equals('RateLimitException: Rate limit exceeded'),
      );
    });
  });
}
