package wargame.components;

import edge.IComponent;
import pixi.core.sprites.Sprite;
import pixi.core.textures.Texture;

class Display implements IComponent {
  var sprite : Sprite;

  public function new(image : String) {
    this.sprite = new Sprite(Texture.fromImage(image));
  }
}
