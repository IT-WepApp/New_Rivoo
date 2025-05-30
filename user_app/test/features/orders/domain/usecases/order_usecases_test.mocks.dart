// Mocks generated by Mockito 5.4.5 from annotations
// in user_app/test/features/orders/domain/usecases/order_usecases_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:user_app/core/architecture/domain/failure.dart' as _i5;
import 'package:user_app/features/orders/domain/repositories/order_repository.dart'
    as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [OrderRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockOrderRepository extends _i1.Mock implements _i3.OrderRepository {
  MockOrderRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, List<dynamic>>> getUserOrders(
          String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUserOrders,
          [userId],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, List<dynamic>>>.value(
            _FakeEither_0<_i5.Failure, List<dynamic>>(
          this,
          Invocation.method(
            #getUserOrders,
            [userId],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<dynamic>>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, dynamic>> getOrderDetails(
          String? orderId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getOrderDetails,
          [orderId],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, dynamic>>.value(
            _FakeEither_0<_i5.Failure, dynamic>(
          this,
          Invocation.method(
            #getOrderDetails,
            [orderId],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, dynamic>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, dynamic>> createOrder({
    required String? userId,
    required List<Map<String, dynamic>>? items,
    required String? shippingAddress,
    required String? paymentMethod,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #createOrder,
          [],
          {
            #userId: userId,
            #items: items,
            #shippingAddress: shippingAddress,
            #paymentMethod: paymentMethod,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, dynamic>>.value(
            _FakeEither_0<_i5.Failure, dynamic>(
          this,
          Invocation.method(
            #createOrder,
            [],
            {
              #userId: userId,
              #items: items,
              #shippingAddress: shippingAddress,
              #paymentMethod: paymentMethod,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, dynamic>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>> cancelOrder(String? orderId) =>
      (super.noSuchMethod(
        Invocation.method(
          #cancelOrder,
          [orderId],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>.value(
            _FakeEither_0<_i5.Failure, _i2.Unit>(
          this,
          Invocation.method(
            #cancelOrder,
            [orderId],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i2.Unit>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, Map<String, dynamic>>> trackOrder(
          String? orderId) =>
      (super.noSuchMethod(
        Invocation.method(
          #trackOrder,
          [orderId],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.Failure, Map<String, dynamic>>>.value(
                _FakeEither_0<_i5.Failure, Map<String, dynamic>>(
          this,
          Invocation.method(
            #trackOrder,
            [orderId],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, Map<String, dynamic>>>);
}
