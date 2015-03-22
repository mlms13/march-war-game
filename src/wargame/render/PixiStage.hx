package wargame.render;

import edge.Entity;
import edge.ISystem;
import pixi.core.renderers.SystemRenderer;
import pixi.core.display.Container;
import wargame.components.Rendering;

class PixiStage implements ISystem {
  var stage : Container;

  public function new(stage : Container) {
    this.stage = stage;
  }

  public function updateAdded(e : Entity, data : { r : Rendering}) {
    stage.addChild(data.r.sprite);
  }

  public function updateRemoved(e : Entity, data : { r : Rendering}) {
    stage.removeChild(data.r.sprite);
  }

  public function update(r : Rendering) {
    r.sprite.x = r.x;
    r.sprite.y = r.y;
  }
}
