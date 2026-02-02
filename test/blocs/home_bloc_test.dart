import 'dart:async';

import 'package:code_test_flutter/blocs/home_bloc.dart';
import 'package:code_test_flutter/core/contracts/home_contract.dart';
import 'package:code_test_flutter/core/load_state.dart';
import 'package:code_test_flutter/data/api/entities/common.dart';
import 'package:code_test_flutter/data/api/photos_api.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import '../data/photo_fakes.dart';

@GenerateNiceMocks([
  MockSpec<PhotosApi>(),
])
import 'home_bloc_test.mocks.dart';

void main() {
  final photos = [photoApiModel];

  late MockPhotosApi service;
  late HomeBloc bloc;

  void init() {
    resetMockitoState();
    service = MockPhotosApi();
  }

  setUp(init);

 
  group('HomeBloc', () {
    test('emits photos when initialized and service provides data', () async {
      when(service.getPhotos())
          .thenAnswer((_) => Cancellable(Future.value(photos), CancelToken()));

      bloc = HomeBloc(service);

      final emittedStates = <HomeData>[];
      final subscription = bloc.stream.listen(emittedStates.add);

      await bloc.initialize();

      // Wait for async operations to complete
      await Future.delayed(Duration(milliseconds: 100));

      expect(emittedStates.length, greaterThanOrEqualTo(1));
      
      final lastState = emittedStates.last;
      expect(lastState.loadState, LoadState.data);
      expect(lastState.photos, photos);
      expect(lastState.errorMessage, isNull);

      verify(service.getPhotos()).called(1);

      await subscription.cancel();
    });
  });
}