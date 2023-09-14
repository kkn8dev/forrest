import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive/hive.dart';

import '../../../../extensions/extensions.dart';
import '../../data/data_sources/data_sources.dart';
import '../bloc/bloc.dart';
import '../widgets/widgets.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late CoreBloc coreBloc = context.read<CoreBloc>();

  onSelectLanguage(String language) async {
    coreBloc.add(UpdateUserLocaleCoreEvent(locale: language));
    var box = await Hive.openBox(coreBox);
    box.put(locale, language);
  }

  @override
  Widget build(BuildContext context) {
    var textStyles = Theme.of(context).extension<AppTextStyles>()!;
    var t = AppLocalizations.of(context)!;

    return BlocBuilder<CoreBloc, CoreState>(
      builder: (context, state) {
        return ScreenBox(
          backgroundColor: const Color(0xFFFF5F96),
          child: Column(
            children: [
              Button1(
                label: 'get request',
                onTap: () {
                  context.read<CoreBloc>().add(InitCoreEvent());
                },
              ),
              GestureDetector(
                onTap: () {
                  coreBloc.add(ToggleThemeCoreEvent());
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      CupertinoSwitch(
                        value: state.theme == 'dark',
                        onChanged: (bool value) {
                          coreBloc.add(ToggleThemeCoreEvent());
                        },
                      ),
                      const SizedBox(width: 16),
                      Text(
                        t.setting_darkTheme,
                        style: textStyles.button1,
                      ),
                    ],
                  ),
                ),
              ),
              ...languages.map(
                (e) => LanguageItem(
                  language: e.language,
                  translate: e.translate,
                  isActive: state.locale == e.locale,
                  onTap: () => onSelectLanguage(e.locale),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Language {
  Language({
    required this.language,
    required this.translate,
    required this.locale,
  });

  final String language;
  final String translate;
  final String locale;
}

var languages = [
  Language(language: 'English', translate: 'English', locale: 'en'),
  Language(language: 'Russian', translate: 'Русский', locale: 'ru'),
];
