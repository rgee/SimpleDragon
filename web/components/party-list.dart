import 'package:polymer/polymer.dart';
import '../models/party.dart';
import 'dart:html';

@CustomTag('party-list')
class PartyList extends PolymerElement {
  @published String selectedPartyId;
  @published List<Party> parties;
  
  PartyList.created() : super.created();
  
  void changeSelected(Event e, var details, Node target) {
    String partyId = (target as Element).getAttribute('party-id');
    dispatchEvent(new CustomEvent('selected-party-change', detail: { 'party-id': partyId } ));
  }
}