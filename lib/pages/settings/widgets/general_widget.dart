import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../routes/routes.dart';

class GeneralWidget extends StatefulWidget {
  final bool isDark;
  final Function onDarkPressed;

  const GeneralWidget(
      {Key key, @required this.isDark, @required this.onDarkPressed})
      : super(key: key);
  @override
  _GeneralWidgetState createState() => _GeneralWidgetState();
}

class _GeneralWidgetState extends State<GeneralWidget> {
  var _darkTheme;
  @override
  void initState() {
    super.initState();
    _darkTheme = widget.isDark;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: double.infinity,
          color: _darkTheme ? Colors.white.withOpacity(0.12) : Colors.grey[200],
          padding: EdgeInsets.all(15),
          child: Text(
            'general'.tr(),
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ListTile(
          leading: Text(
            'language'.tr(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () => Navigator.of(context).pushNamed(Routes.changeLanguage),
        ),
        ListTile(
          leading: Text(
            'about_app'.tr(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Text(
            'help_and_support'.tr(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {},
        ),
        SwitchListTile(
          value: _darkTheme,
          onChanged: (_) {
            setState(() {
              _darkTheme = !_darkTheme;
              widget.onDarkPressed(_darkTheme);
            });
          },
          title: Text(
            'dark_theme'.tr(),
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
