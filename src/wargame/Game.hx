package wargame;

import edge.World;
import edge.Engine;
import pixi.core.display.Container;
import pixi.core.renderers.SystemRenderer;

class Game {
  var stage : Container;
  var renderer : SystemRenderer;
  var world : World;
  var engine : Engine;

  public function new(stage : Container, renderer : SystemRenderer) {
    this.stage = stage;
    this.renderer = renderer;

    world = new World();
    engine = world.engine;

    world.render.add(new wargame.render.PixiRenderer(stage, renderer));
  }
  public function start() {
    world.start();
  }
}
