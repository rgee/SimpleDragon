import 'package:polymer/polymer.dart';
import '../models/party.dart';

@CustomTag('party-list')
class PartyList extends PolymerElement {
  @published List<Party> parties;
  
  PartyList.created() : super.created() {
    parties = [new Party("Gowanus Raiders")];
  }
}