import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:zoomer/app/navigation/navigation_actions.dart';
import 'package:zoomer/core/bloc/bloc_action.dart';
import 'package:zoomer/core/failures.dart';
import 'package:zoomer/data/gateways/local/preferences_local_gateway.dart';
import 'package:zoomer/data/repositories/broadcast_repository.dart';
import 'package:zoomer/domain/entities/briadcast_image_entity.dart';
import 'package:zoomer/domain/entities/broadcast_entity.dart';

part 'upcoming_broadcast_event.dart';
part 'upcoming_broadcast_bloc.freezed.dart';
part 'upcoming_broadcast_state.dart';

class UpcomingBroadcastBloc extends Bloc<UpcomingBroadcastEvent, UpcomingBroadcastState> {
  UpcomingBroadcastBloc({
    required this.preferencesLocalGateway,
    required this.broadcastRepository,
}) : super(UpcomingBroadcastState()) {
    this.add(UpcomingBroadcastEvent.init());
  }

  PreferencesLocalGateway preferencesLocalGateway;
  BroadcastRepository broadcastRepository;

  @override
  Stream<UpcomingBroadcastState> mapEventToState(UpcomingBroadcastEvent event,) async* {
    yield* event.map(
      init: _init,
      profileClicked: _profileClicked,
      detailsClicked: _detailsClicked,
      streamNowClicked: _streamNowClicked,
    );
  }


  Stream<UpcomingBroadcastState> _init(Init value) async* {
    yield* _fetchBroadcast(needShowLoader:true);
  }

  Stream<UpcomingBroadcastState> _fetchBroadcast({bool needShowLoader = false}) async* {
    if (needShowLoader) {
      yield state.copyWith(action: ShowLoader());
    }

    String token = (await preferencesLocalGateway.getToken()) ?? '';
    bool haveError = false;
    Either<BroadcastEntity, Failure> getMessagesResult = await broadcastRepository.getBroadcast(
      token: token,
    );

    yield* getMessagesResult.fold(
          (data) => _handleGetBroadcast(data),
          (error) {
        haveError = true;
        return _handleError(error);
      },
    );
    if (needShowLoader) {
      yield state.copyWith(action: HideLoader());
    }
  }

  Stream<UpcomingBroadcastState> _handleGetBroadcast(BroadcastEntity data) async* {
    yield state.copyWith(broadcast: data);
  }


  Stream<UpcomingBroadcastState> _handleError(Failure? error) async* {
    // if (error is RequestFailure) {
    //   yield state.copyWith(action: ShowMessage(messageType: MessageType.serverError));
    // }
    // if (error is NetworkFailure) {
    //   yield state.copyWith(action: ShowMessage(messageType: MessageType.noConnection));
    // }
    // if (error is UndefinedFailure) {
    //   yield state.copyWith(action: ShowMessage(messageType: MessageType.serverError));
    // }
  }



  Stream<UpcomingBroadcastState> _profileClicked(ProfileClicked value) async* {}

  Stream<UpcomingBroadcastState> _detailsClicked(DetailsClicked value) async* {}

  Stream<UpcomingBroadcastState> _streamNowClicked(StreamNowClicked value) async* {
    yield state.copyWith(action: NavigateToBroadcast());
  }

}
