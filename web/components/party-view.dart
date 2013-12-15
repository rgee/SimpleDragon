import 'package:polymer/polymer.dart';
import '../models/party.dart';

@CustomTag('party-view')
class PartyView extends PolymerElement {
  @published String partyId;
  
  PartyView.created() : super.created();
}