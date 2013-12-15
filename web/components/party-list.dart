import 'package:polymer/polymer.dart';
import '../models/party.dart';
import 'dart:html';

import 'simple-dragon.dart';

@CustomTag('party-list')
class PartyList extends PolymerElement {
  @published List<Party> parties;
  
  PartyList.created() : super.created() {
    parties = [new Party("Gowanus Raiders")];
  }
  
  void showParty(Event e, var detail, Node target) {
    ROUTER.go('partiesList.party', { 'partyId': 'gowanus' });
  }
}