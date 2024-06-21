import 'package:cars/core/errors/failure_message.dart';
import 'package:cars/features/orders/data/data_source/remote_data_source.dart';
import 'package:cars/features/orders/data/models/order_model.dart';
import 'package:cars/features/orders/domain/repos/order_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/consts/strings.dart';

class OrderRepoImpl extends OrderRepo {
  final RemoteDataSourceRepo _remoteDataSourceRepo;

  OrderRepoImpl({required RemoteDataSourceRepo remoteDataSourceRepo})
      : _remoteDataSourceRepo = remoteDataSourceRepo;

  @override
  Future<Either<FailureServ, String>> addOrder({required int carId}) async {
    try {
      String result = await _remoteDataSourceRepo.addOrder(carId: carId);
      return Right(result);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(message: StringsEn.errorMessage));
    }
  }

  @override
  Future<Either<FailureServ, String>> deleteOrder({required int carId}) async {
    try {
      String result = await _remoteDataSourceRepo.deleteOrder(carId: carId);
      return Right(result);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(message: StringsEn.errorMessage));
    }
  }

  @override
  Future<Either<FailureServ, List<OrderModel>>> getOrders() async {
    try {
      List<OrderModel> orders = await _remoteDataSourceRepo.getOrders();
      return Right(orders);
    } catch (error) {
      if (error is DioException) {
        return Left(ServerFailure.fromDioError(error));
      }
      return Left(ServerFailure(message: StringsEn.errorMessage));
    }
  }
}
