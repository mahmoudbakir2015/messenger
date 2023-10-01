import 'package:flutter/material.dart';
import 'package:messenger/constant/constant.dart';
import '../../../../business_logic/cubit/app_cubit/App_cubit.dart';
import '../../../../custom_widget/custom_circle_avatar.dart';
import 'chat/chat.dart';

buildSearchBar({void Function()? onTap, required AppCubit cubit}) {
  return Padding(
    padding: EdgeInsets.all(PaddingApp.appPadding),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(PaddingApp.appPadding),
      ),
      width: double.infinity,
      child: TextFormField(
        onTap: () {
          cubit.changeStateSearch();
        },
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: "search",
          fillColor: Colors.grey,
        ),
      ),
    ),
  );
}

buildStory({required String name, required String userImage}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            ImgAvt(userImage),
            Text(
              name,
              textScaleFactor: 0.8,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ],
        )
      ],
    ),
  );
}

buildCardChat({
  required String id,
  required String imageFriend,
  required String userName,
  required String date,
  required String lastMessage,
  required String isRead,
  required BuildContext context,
}) {
  return ListTile(
    leading: ImgAvt(
      imageFriend,
    ),
    title: Text(userName),
    subtitle: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(lastMessage),
        Text(date),
      ],
    ),
    trailing: ImgAvt(
      isRead,
      radius: 10,
    ),
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => ChatView(
            image: imageFriend,
            name: userName,
            receiverId: id,
            chatId: '12345',
          ),
        ),
      );
    },
  );
}
