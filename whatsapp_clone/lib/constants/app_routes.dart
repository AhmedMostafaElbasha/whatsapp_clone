import 'package:whatsapp_clone/presentation/presentation.dart';

class AppRoutes {
  static String home = '/home_page';
  static String calls = '/calls_page';
  static String camera = '/camera_page';
  static String chats = '/chats_page';
  static String status = '/status_page';
  static String storyVuew = '/story_view_page';

  static var routes = {
    home: (_) => HomePage(),
    calls: (_) => CallsPage(),
    camera: (_) => CameraPage(),
    chats: (_) => ChatsPage(),
    status: (_) => StatusPage(),
    storyVuew: (_) => StoryViewPage(),
  };
}
