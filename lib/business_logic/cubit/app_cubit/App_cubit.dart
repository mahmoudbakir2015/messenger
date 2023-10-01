import 'dart:convert';
import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:messenger/business_logic/cubit/app_cubit/App_states.dart';
import '../../../data/model/message_model.dart';
import '../../../presentation/App_Master/calls/calls_page.dart';
import '../../../presentation/App_Master/home/main_screen/home_chats.dart';
import '../../../presentation/App_Master/settings/story_page.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit()
      : super(
          InitialState(),
        );
  static AppCubit get(context) => BlocProvider.of(context);

  Widget currentScreen = const HomeChats();
  int navigatorValue = 0;
  void changeStateSearch() {
    emit(ChangeStateSearch());
  }

  String senderId = '5678';
  void sendMessage({
    required String recieverId,
    required String chatId,
    required String text,
  }) {
    final DocumentReference documentReference =
        FirebaseFirestore.instance.collection('messages').doc(chatId);
    FirebaseFirestore.instance
        .collection('messages')
        .doc(chatId)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        final Map<String, dynamic> elementToAdd = {
          "recieverId": recieverId,
          "senderId": senderId,
          "text": text,
          "dateTime": DateFormat.jm().format(DateTime.now()).toString(),
        };

        documentReference.update({
          'messages': FieldValue.arrayUnion([elementToAdd]),
        }).then((_) {
          // getMessages();
          emit(SendMessageSuccessedState());
          print('Element added to the array field successfully');
        }).catchError((error) {
          print('Error adding element to the array field: $error');
          emit(SendMessageFailedState());
        });
      } else {
        FirebaseFirestore.instance.collection('messages').doc(chatId).set(
          {
            "messages": [
              {
                "senderId": senderId,
                "recieverId": recieverId,
                "text": text,
                "dateTime": DateFormat.jm().format(DateTime.now()).toString(),
              },
            ]
          },
        );
        // getMessages();
      }
    });
  }

  List<MessageModel> list = [];
  void getMessages({required String chatId}) {
    list = [];
    FirebaseFirestore.instance
        .collection('messages')
        .doc(chatId)
        .snapshots()
        .listen((querySnapshot) {
      list = [];
      print("querySnapshot.docs.length $querySnapshot");
      var parsedData = json.decode(jsonEncode(querySnapshot.data()));
      print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA $parsedData");
      var messages = parsedData['messages'];
      print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA $messages");
      MessageModel messageModel;
// print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA $messageModel");
      for (int i = 0; i < messages!.length; i++) {
        messageModel = MessageModel.fromJson(messages[i]);

        print("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA $messages");
        list.add(messageModel);
        log("$i ${messageModel.text}");
        print(list.length);
      }

      emit(GetMessageSuccessedState());
    });
  }

  void changeSelectedValue(int selectedValue) {
    navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          currentScreen = const HomeChats();
          break;
        }
      case 1:
        {
          currentScreen = const CallsPage();
          break;
        }
      case 2:
        {
          currentScreen = const Stories();
          break;
        }
    }
    emit(ChangeState());
  }
}
