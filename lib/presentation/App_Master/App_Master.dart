import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger/business_logic/cubit/App_cubit.dart';
import 'package:messenger/constant/constant.dart';
import 'package:messenger/presentation/App_Master/item.dart';
import 'package:messenger/presentation/App_Master/settings/change_pages.dart';
import '../../business_logic/cubit/App_states.dart';
import '../../custom_widget/custom_circle_avatar.dart';
import '../../custom_widget/custom_list_drawer.dart';

class AppMaster extends StatelessWidget {
  const AppMaster({super.key});

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppStates>(builder: (context, state) {
      return Scaffold(
        appBar: appBar(
          cubit.navigatorValue,
        ),
        drawer: drawer(context: context),
        bottomNavigationBar: bottomNavigationBar(context: context),
        body: Padding(
          padding: EdgeInsets.all(PaddingApp.appPadding),
          child: cubit.currentScreen,
        ),
      );
    });
  }

  AppBar appBar(int controller) {
    if (controller == 0) {
      return buildCustomAppBar(
        text: 'Chats',
        iconData: Icons.chat,
      );
    } else if (controller == 1) {
      return buildCustomAppBar(
        text: 'Calls',
        iconData: Icons.call,
      );
    } else {
      return buildCustomAppBar(
        text: 'Stories',
        iconData: Icons.people_alt_outlined,
      );
    }
  }

  Drawer drawer({required BuildContext context}) {
    return Drawer(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              ListTile(
                leading: ImgAvt(
                  userImage,
                  radius: 20,
                ),
                title: const Row(
                  children: [
                    Text("my name"),
                    Icon(
                      Icons.arrow_downward,
                    ),
                  ],
                ),
                trailing: const Icon(
                  Icons.settings,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ChangePages(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: ((context, int i) => GestureDetector(
                        child: CustomListDrawer(
                          title: 'الدردشات',
                        ),
                        onTap: () {},
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("المجتمعات"),
                  GestureDetector(
                    child: const Text(
                      "تعديل",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: ((context, int i) => GestureDetector(
                        child: CustomListDrawer(
                          title: 'الدردشات',
                        ),
                        onTap: () {},
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
