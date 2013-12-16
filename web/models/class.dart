library models.clazz;

class Class {
  final String _value;
  const Class._internal(this._value);
  toString() => 'Class.$_value';
  toJson() => this._value;
  
  static const ROGUE = const Class._internal('ROGUE');
  static const CLERIC = const Class._internal('CLERIC');
}