import 'dart:io';
import 'package:flutter_app/configs/configs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter_app/repos/repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:share_plus/share_plus.dart';

part 'settings_notifier.freezed.dart';
part 'settings_state.dart';

class SettingsNotifier extends StateNotifier<SettingsState> {
  SettingsNotifier(this._repository) : super(const SettingsState.initial());

  final AuthRepository _repository;

  Future<void> openNotifications() async {
    try {
      await AppSettings.openAppSettings(type: AppSettingsType.notification);
    } catch (e) {
      state = SettingsState.errorState(e.toString());
    }
  }

  Future<void> shareApp() async {
    try {
      String link =
          'https://play.google.com/store/apps/details?id=${AppConsts.appId}';
      if (Platform.isIOS) {
        link =
            'https://apps.apple.com/${AppConsts.appCountry}/app/${AppConsts.appName}/id${AppConsts.appAppleId}';
      }
      await Share.share(link);
    } catch (e) {
      state = SettingsState.errorState(e.toString());
    }
  }

  Future<void> rateUs() async {
    try {
      final InAppReview inAppReview = InAppReview.instance;
      if (await inAppReview.isAvailable()) {
        if (Platform.isIOS) {
          await inAppReview.requestReview();
        } else {
          await inAppReview.openStoreListing();
        }
      }
    } catch (e) {
      state = SettingsState.errorState(e.toString());
    }
  }

  Future<void> clearAllData() async {
    state = const SettingsState.loading();
    await _repository.clearAllData();
    state = const SettingsState.dataCleared();
  }
}
