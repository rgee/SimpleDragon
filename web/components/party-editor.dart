import 'package:polymer/polymer.dart';
import '../models/party.dart';
import 'dart:html';

@CustomTag('party-editor')
class PartyEditor extends PolymerElement {
  @observable String selectedPartyId;
  
  @observable List<Party> parties;
  
  bool get applyAuthorStyles => true;
  
  PartyEditor.created() : super.created() {
    parties = [new Party("Gowanus Raiders")];  
  }
  
  void selectedPartyChange(Event e, var details, Node target) {
    String partyId = (details as Map)['party-id'];
    selectedPartyId = partyId;
  }
}