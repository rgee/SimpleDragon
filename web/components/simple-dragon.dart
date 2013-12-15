import 'package:polymer/polymer.dart';
import 'package:route_hierarchical/client.dart';

@CustomTag('simple-dragon')
class SimpleDragon extends PolymerElement {
  final Router _router = new Router();
  
  SimpleDragon.created() : super.created() {
    _router.root
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
    _router.listen();
    _router.go('partiesList.party', { 'partyId': 'gowanus'});
  }
}