package wargame.components;

import edge.IComponent;
import pixi.core.sprites.Sprite;
import pixi.core.textures.Texture;

class Display implements IComponent {
  var sprite : Sprite;
  var flipX : Bool;
  var flipY : Bool;

  public function new(image : String, flipX : Bool = false, flipY : Bool = false) {
    this.sprite = new Sprite(Texture.fromImage(image));
    this.flipX = flipX;
    this.flipY = flipY;
  }
}
