abstract class AppStates {}

class InitialState extends AppStates {}

class ChangeState extends AppStates {}
class ChangeStateSearch extends AppStates {}

class SendMessageSuccessedState extends AppStates {}

class SendMessageFailedState extends AppStates {}

class GetMessageSuccessedState extends AppStates {}
