package wargame.components;

import edge.IComponent;
import pixi.core.sprites.Sprite;
import pixi.core.textures.Texture;

class Display implements IComponent {
  var sprite : Sprite;
  var x : Float;
  var y : Float;

  public function new(image : String, x : Float = 0, y : Float = 0) {
    this.sprite = new Sprite(Texture.fromImage(image));
    this.sprite.interactive = true;
    this.sprite.on("mousedown", function (_) {
      trace('clicked on sprite with coords $x, $y');
    });
    this.x = x;
    this.y = y;
  }
}
