import 'package:polymer/polymer.dart';
import '../models/party.dart';

@CustomTag('party-view')
class PartyView extends PolymerElement {
  @published String partyId;
  
  bool get applyAuthorStyles => true;
  
  PartyView.created() : super.created();
}