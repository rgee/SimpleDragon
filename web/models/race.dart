library models.race;

class Race {
  final String _value;
  const Race._internal(this._value);
  toString() => 'Race.$_value';
  toJson() => this._value;
  
  static const HUMAN = const Race._internal('HUMAN');
  static const DWARF = const Race._internal('DWARF');
  static const ELF = const Race._internal('ELF');
  static const GNOME = const Race._internal('GNOME');
  static const HALFLING = const Race._internal('HALFLING');
  static const HALF_ORC = const Race._internal('HALF-ORC');
  static const HALF_ELF = const Race._internal('HALF-ELF');
}