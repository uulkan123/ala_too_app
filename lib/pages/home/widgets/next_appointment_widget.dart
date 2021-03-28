import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../components/round_icon_button.dart';
import '../../../utils/constants.dart';

class NextAppointmentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: kColorBlue,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'tomorrow'.tr(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '11 January 2019, 10:00 AM',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              RoundIconButton(
                onPressed: () {},
                icon: Icons.new_releases_rounded,
              ),
            ],
          ),
          Divider(
            color: Colors.grey,
            height: 40,
            thickness: 0.5,
          ),
          Row(
            children: <Widget>[
              Flexible(
                  child: Text(
                      'Наши кафедры проводят вебинары на очень интересные темы, например программа "Международные отношения" рассказала на той неделе как '
                          'поступить на магистратуру за рубеж и спикером выступила наша выпускница, а сегодня в 2:40 наш выпускник расскажет '
                          'почему стоит подавать на магистратуру в Академию ОБСЕ, подробности на сайте, присоединяйтесь!',
                  style: TextStyle(color: Colors.white),))
            ],
          )
        ],
      ),
    );
  }
}
