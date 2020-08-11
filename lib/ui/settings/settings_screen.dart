import 'package:flutter/material.dart';
import 'package:holder/service/authentication_service.dart';
import 'package:holder/service/preferences_service.dart';
import 'package:holder/util/locator.dart';
import 'package:logx/logx.dart';

class SettingsScreen extends StatefulWidget {
  static const route = '/settings';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> with LogMixin {
  final authenticationService = locator<AuthenticationService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: StreamBuilder<PreferencesService>(
        stream: locator<PreferencesService>().stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final preferences = snapshot.data;

            return ListView(
              children: <Widget>[
                SwitchListTile(
                  title: const Text('Biometric authentication'),
                  subtitle: const Text(
                    'Unlock app with your fingerprint or face',
                  ),
                  value: preferences.getBool(Preferences.authentication),
                  onChanged: (enabled) async {
                    final success = await authenticationService.authenticate(
                      reason: 'Confirm with your fingerprint',
                    );

                    if (success) {
                      await preferences.setBool(
                        Preferences.authentication,
                        enabled,
                      );
                    } else {
                      Scaffold.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Biometric authentication failed'),
                        ),
                      );
                    }
                  },
                ),
              ],
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
