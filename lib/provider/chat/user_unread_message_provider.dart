import 'dart:async';
import 'package:buynsell/repository/user_unread_message_repository.dart';
import 'package:buynsell/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:buynsell/api/common/ps_resource.dart';
import 'package:buynsell/api/common/ps_status.dart';
import 'package:buynsell/provider/common/ps_provider.dart';
import 'package:buynsell/viewobject/holder/user_unread_message_parameter_holder.dart';
import 'package:buynsell/viewobject/user_unread_message.dart';

class UserUnreadMessageProvider extends PsProvider {
  UserUnreadMessageProvider(
      {@required UserUnreadMessageRepository repo, int limit = 0})
      : super(repo, limit) {
    _repo = repo;
    print('UserUnreadMessageProvider : $hashCode');
    Utils.checkInternetConnectivity().then((bool onValue) {
      isConnectedToInternet = onValue;
    });

    userUnreadMessageStream =
        StreamController<PsResource<UserUnreadMessage>>.broadcast();

    subscription = userUnreadMessageStream.stream
        .listen((PsResource<UserUnreadMessage> resource) {
      // updateOffset(resource.data.length);

      _userUnreadMessage = resource;

      if (resource.status != PsStatus.BLOCK_LOADING &&
          resource.status != PsStatus.PROGRESS_LOADING) {
        isLoading = false;
      }

      if (!isDispose) {
        notifyListeners();
      }
    });
  }
  UserUnreadMessageRepository _repo;
  PsResource<UserUnreadMessage> _userUnreadMessage =
      PsResource<UserUnreadMessage>(PsStatus.NOACTION, '', null);

  PsResource<UserUnreadMessage> get userUnreadMessage => _userUnreadMessage;
  StreamSubscription<PsResource<UserUnreadMessage>> subscription;
  StreamController<PsResource<UserUnreadMessage>> userUnreadMessageStream;
  dynamic daoSubscription;

  UserUnreadMessageParameterHolder userUnreadMessageHolder;
  int totalUnreadCount = 0;
  @override
  void dispose() {
    subscription.cancel();
    if (daoSubscription != null) {
      daoSubscription.cancel();
    }
    isDispose = true;
    print('UserUnreadMessage Provider Dispose: $hashCode');
    super.dispose();
  }

  Future<dynamic> userUnreadMessageCount(
    UserUnreadMessageParameterHolder holder,
  ) async {
    isConnectedToInternet = await Utils.checkInternetConnectivity();
    isLoading = true;

    daoSubscription = await _repo.postUserUnreadMessageCount(
        userUnreadMessageStream,
        holder,
        isConnectedToInternet,
        PsStatus.PROGRESS_LOADING);
  }
}
