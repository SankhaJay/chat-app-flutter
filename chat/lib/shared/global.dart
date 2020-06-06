

import 'package:chat/models/user.dart';
import 'package:chat/services/socketUtils.dart';

class G {
  // Socket
  static SocketUtils socketUtils;
  static List<User> dummyUsers; 

  // Logged In User
  static User loggedInUser;

  // Single Chat - To Chat User
  static User toChatUser;

  static initSocket() {
    if (null == socketUtils) {
      socketUtils = SocketUtils();
    }
  }

  static void initDummyUsers() {
    User userA = new User(id: "1000", name: 'Dulaj', email: 'dulababa@gmail.com');
    User userB = new User(id: "1001", name: 'Sajith', email: 'sajithkota@gmail.com');
    User userC = new User(id: "1002", name: 'Sankha', email: 'sankha.rc@gmail.com');
    dummyUsers = List<User>();
    dummyUsers.add(userA);
    dummyUsers.add(userB);
    dummyUsers.add(userC);  
  }

  static List<User> getUsersFor(User user) {
    List<User> filteredUsers = dummyUsers
        .where((u) => (!u.id.toLowerCase().contains(user.id.toLowerCase())))
        .toList();
    return filteredUsers;
  }
}
