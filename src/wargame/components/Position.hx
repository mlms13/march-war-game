package wargame.components;

import edge.IComponent;

class Position implements IComponent {
  var x : Float;
  var y : Float;

  public function new(x : Float = 0, y : Float = 0) {
    this.x = x;
    this.y = y;
  }
}
