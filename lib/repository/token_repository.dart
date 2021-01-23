import 'dart:async';
import 'package:flutter/material.dart';
import 'package:buynsell/api/common/ps_resource.dart';
import 'package:buynsell/api/common/ps_status.dart';
import 'package:buynsell/api/ps_api_service.dart';
import 'package:buynsell/viewobject/api_status.dart';

import 'Common/ps_repository.dart';

class TokenRepository extends PsRepository {
  TokenRepository({
    @required PsApiService psApiService,
  }) {
    _psApiService = psApiService;
  }
  String primaryKey = '';
  PsApiService _psApiService;

  Future<PsResource<ApiStatus>> getToken(
      bool isConnectedToInternet, PsStatus status,
      {bool isLoadFromServer = true}) async {
    final PsResource<ApiStatus> _resource = await _psApiService.getToken();
    if (_resource.status == PsStatus.SUCCESS) {
      return _resource;
    } else {
      final Completer<PsResource<ApiStatus>> completer =
          Completer<PsResource<ApiStatus>>();
      completer.complete(_resource);
      return completer.future;
    }
  }
}