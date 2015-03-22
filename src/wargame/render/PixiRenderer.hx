package wargame.render;

import edge.Entity;
import edge.ISystem;
import pixi.core.renderers.SystemRenderer;
import pixi.core.display.Container;
import wargame.components.Rendering;

class PixiRenderer implements ISystem {
  var stage : Container;
  var renderer : SystemRenderer;

  public function new(stage : Container, renderer : SystemRenderer) {
    this.stage = stage;
    this.renderer = renderer;
  }

  public function updateAdded(e : Entity, data : { r : Rendering}) {
    trace("updating");
    stage.addChild(data.r.sprite);
  }
  public function update(r : Rendering) {
    renderer.render(stage);
    r.sprite.x = r.x;
    r.sprite.y = r.y;
  }
}
