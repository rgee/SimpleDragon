import 'package:polymer/polymer.dart';
import 'package:route_hierarchical/client.dart';


@CustomTag('simple-dragon')
class SimpleDragon extends PolymerElement {
  final Router ROUTER = new Router();
  
  bool get applyAuthorStyles => true;
  
  SimpleDragon.created() : super.created() {
    
    ROUTER.root
      ..addRoute(
          name: 'partiesList',
          path: '/parties',
          defaultRoute: true,
          enter: (_) => print("/parties"),
          mount: (Route router) =>
            router
              ..addRoute(
                  name: 'party',
                  path: '/:partyId',
                  enter: (_) => print('/party')));
    ROUTER.listen();
    ROUTER.go('partiesList', {});
  }
}