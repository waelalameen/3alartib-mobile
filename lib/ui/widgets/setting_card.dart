import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ratib_project/ui/colors.dart';

typedef OnActionClicked = void Function();
typedef OnSwitchChanged = void Function(bool);

class SettingCard extends StatelessWidget {
  final AppSettings appSettings;

  SettingCard({this.appSettings});

  @override
  Widget build(BuildContext context) {
    var splashColor = Theme.of(context).splashColor;

    return Container(
      width: MediaQuery.of(context).size.width,
      child: InkWell(
        splashColor: appSettings.onActionClicked != null ? splashColor : Colors.transparent,
        highlightColor: appSettings.onActionClicked != null ? splashColor : Colors.transparent,
        onTap: () {
          if (appSettings.onActionClicked != null) {
            if (appSettings.settingsType == SettingsType.ACTION_CLICK) {
              appSettings.onActionClicked();
            }
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
          child: Row(
            children: [
              Visibility(
                  visible: appSettings.settingIconAsset != null,
                  child: SvgPicture.asset('${appSettings.settingIconAsset}',
                      width: 32.0, height: 32.0, color: primary)),
              Visibility(
                  visible: appSettings.settingIcon != null,
                  child: Icon(appSettings.settingIcon,
                      color: primary, size: 32.0)),
              SizedBox(width: 16.0),
              Text('${appSettings.settingName}', style: TextStyle(color: grey)),
              Spacer(),
              Visibility(
                visible: appSettings.settingsType == SettingsType.INFORMATION,
                child: Text('${appSettings.info}',
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.bold)),
              ),
              Visibility(
                visible: appSettings.settingsType == SettingsType.ACTION_CLICK,
                child: Icon(Icons.arrow_forward_ios_sharp,
                    size: 16.0,
                    textDirection: TextDirection.ltr,
                    color: Colors.black87),
              ),
              Visibility(
                  visible:
                      appSettings.settingsType == SettingsType.ACTION_SWITCH,
                  child: Switch(
                    value: true,
                    activeColor: primary,
                    onChanged: (newValue) {
                      if (appSettings.onSwitchChanged != null) {
                        appSettings.onSwitchChanged(newValue);
                      }
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

enum SettingsType { INFORMATION, ACTION_CLICK, ACTION_SWITCH }

class AppSettings {
  final String settingName;
  final String settingIconAsset;
  final IconData settingIcon;
  final String info;
  final SettingsType settingsType;
  final OnActionClicked onActionClicked;
  final OnSwitchChanged onSwitchChanged;

  AppSettings(
      {this.settingName,
      this.settingIconAsset,
      this.settingIcon,
      this.info,
      this.settingsType = SettingsType.ACTION_CLICK,
      this.onActionClicked,
      this.onSwitchChanged});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppSettings &&
          runtimeType == other.runtimeType &&
          settingName == other.settingName &&
          settingIconAsset == other.settingIconAsset &&
          settingIcon == other.settingIcon &&
          info == other.info &&
          settingsType == other.settingsType &&
          onSwitchChanged == other.onSwitchChanged;

  @override
  int get hashCode =>
      settingName.hashCode ^
      settingIconAsset.hashCode ^
      settingIcon.hashCode ^
      info.hashCode ^
      settingsType.hashCode ^
      onSwitchChanged.hashCode;
}
