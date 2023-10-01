import 'package:flutter/Material.dart';
import '../../../../../business_logic/cubit/app_cubit/App_cubit.dart';
import '../../../../../constant/constant.dart';
import '../../../../../data/model/message_model.dart';

buildAppBar({
  required BuildContext context,
  required String image,
  required String name,
}) {
  return AppBar(
    titleSpacing: 0,
    leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xff191919),
        ),
        onPressed: () {
          Navigator.pop(context);
        }),
    backgroundColor: Colors.white,
    elevation: 0,
    title: Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(image),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            name,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    ),
  );
}

buildRecievedMessage(MessageModel messageModel, {required String img}) {
  return Row(
    children: [
      const CircleAvatar(
        radius: 15,
        backgroundImage: NetworkImage(driverImage),
      ),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(
                      Margin.borderRadius,
                    ),
                    topStart: Radius.circular(
                      Margin.borderRadius,
                    ),
                    bottomEnd: Radius.circular(
                      Margin.borderRadius,
                    ),
                  ),
                ),
                child: Text(
                  messageModel.text!,
                  style: MyTextStyle.tM14,
                ),
              ),
            ),
            Text(
              messageModel.dateTime!,
              style: MyTextStyle.tR10,
            ),
          ],
        ),
      ),
    ],
  );
}

buildSenderMessage(MessageModel messageModel) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: Colors.indigo[300],
            borderRadius: BorderRadiusDirectional.only(
              topEnd: Radius.circular(
                Margin.borderRadius,
              ),
              topStart: Radius.circular(
                Margin.borderRadius,
              ),
              bottomStart: Radius.circular(
                Margin.borderRadius,
              ),
            ),
          ),
          child: Text(
            messageModel.text!,
            style: MyTextStyle.tM14.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
      Text(
        messageModel.dateTime!,
        style: MyTextStyle.tR10,
      ),
    ],
  );
}

buildFooter({
  required String chatId,
  required String receiverId,
  required BuildContext context,
  required TextEditingController controller,
}) {
  return Container(
    clipBehavior: Clip.antiAliasWithSaveLayer,
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(Margin.borderRadius),
    ),
    child: Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(10),
              border: OutlineInputBorder(),
              hintText: "Write Your message",
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {
            if (controller.text != '') {
              AppCubit.get(context).sendMessage(
                text: controller.text,
                chatId: chatId, recieverId: receiverId,
                // receiverId: receiverId,
              );
              print('sended');
              controller.text = '';
            }
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: ColorApp.primaryColor,
              borderRadius: BorderRadius.circular(Margin.borderRadius),
            ),
            child: const Icon(
              Icons.send,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
