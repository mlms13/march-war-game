package wargame.systems;

import edge.Entity;
import edge.ISystem;
import pixi.core.renderers.SystemRenderer;
import pixi.core.display.Container;
import wargame.components.Display;

class PixiStage implements ISystem {
  var stage : Container;

  public function new(stage : Container) {
    this.stage = stage;
  }

  public function updateAdded(e : Entity, data : { d : Display}) {
    stage.addChild(data.d.sprite);
  }

  public function updateRemoved(e : Entity, data : { d : Display}) {
    stage.removeChild(data.d.sprite);
  }

  public function update(d : Display) {
    d.sprite.x = d.x * Config.tileWidth;
    d.sprite.y = d.y * Config.tileHeight;
  }
}
