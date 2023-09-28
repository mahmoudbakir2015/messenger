import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger/presentation/App_Master/home/main_screen/chat/item.dart';
import '../../../../../business_logic/cubit/App_cubit.dart';
import '../../../../../business_logic/cubit/App_states.dart';

class ChatView extends StatefulWidget {
  final String receiverId;
  final String name;
  final String image;
  final String chatId;

  const ChatView({
    super.key,
    required this.image,
    required this.name,
    required this.receiverId,
    required this.chatId,
  });

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  TextEditingController sendMessages = TextEditingController();

  @override
  void initState() {
    BlocProvider.of<AppCubit>(context).getMessages(chatId: '1234');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = AppCubit.get(context);
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return Scaffold(
          appBar: buildAppBar(
            context: context,
            image: widget.image,
            name: widget.name,
          ),
          body: BlocBuilder<AppCubit, AppStates>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    // if (ConnectivityResult == CheckNet.none)
                    //   Container(
                    //     color: Colors.black87,
                    //     height: 20.h,
                    //     child: const Center(
                    //         child: Text(
                    //       "No internet please check Your internet",
                    //       style: TextStyle(
                    //         color: Colors.white,
                    //       ),
                    //     )),
                    //   ),
                    Column(
                      children: [
                        Expanded(
                          child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              if (cubit.list.isNotEmpty) {
                                var message = cubit.list;
                                if (cubit.senderId == message[index].senderId) {
                                  return buildSenderMessage(cubit.list[index]);
                                } else {
                                  return buildRecievedMessage(
                                    cubit.list[index],
                                    img: '',
                                  );
                                }
                              }

                              return null;
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                height: 10,
                              );
                            },
                            itemCount: cubit.list.length,
                          ),
                        ),
                        buildFooter(
                          context: context,
                          controller: sendMessages,
                          chatId: widget.chatId,
                          receiverId: widget.receiverId,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
