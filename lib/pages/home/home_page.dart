import 'package:alatoo_app/routes/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../components/visited_doctor_list_item.dart';
import '../../model/doctor.dart';
import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage> {
  final bool _noAppoints = false;

  @override
  Widget build(BuildContext context) {
    print('Enter home page');
    super.build(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: <Widget>[
                  Image.asset('assets/images/hand.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${'hello'.tr()}',
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      Text(
                        'good_luck_on_your_education'.tr(),
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            _noAppoints
                ? NoAppointmentsWidget()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: <Widget>[
                            SectionHeaderWidget(
                              title: 'news'.tr(),
                            ),
                            NextAppointmentWidget(),
                            SectionHeaderWidget(
                              title: 'your_courses'.tr(),
                              onPressed: () {
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 160,
                        child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            width: 15,
                          ),
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          itemBuilder: (context, index) {
                            return VisitedDoctorListItem(
                              doctor: doctors[index],
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SectionHeaderWidget(
                              title: 'your_homeworks'.tr(),
                              onPressed: () {},
                            ),
                            TestAndPrescriptionCardWidget(
                              title: 'Differential Equation',
                              subTitle: '${'given_by'.tr()} Isa Muslu',
                              image: 'homework.png',
                            ),
                            //test results
                            SectionHeaderWidget(
                              title: 'test_results'.tr(),
                              onPressed: () {},
                            ),
                            TestAndPrescriptionCardWidget(
                              title: 'Differential Equation',
                              subTitle: '6 February',
                              image: 'test_res.png',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
