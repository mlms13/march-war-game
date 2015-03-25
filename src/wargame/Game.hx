package wargame;

import edge.World;
import edge.Engine;
import pixi.core.display.Container;
import pixi.core.renderers.SystemRenderer;

import wargame.components.*;

class Game {
  var stage : Container;
  var renderer : SystemRenderer;
  var world : World;

  public function new(stage : Container, renderer : SystemRenderer) {
    this.stage = stage;
    this.renderer = renderer;
    world = new World(40);

    for (i in 0...Config.xTiles) {
      for (j in 0...Config.yTiles) {
        var rendering = new Rendering("assets/grass.png", i * Config.tileWidth, j * Config.tileHeight);
        world.engine.create([
          rendering
        ]);
      }
    }

    world.render.add(new wargame.render.PixiStage(stage));
    world.render.add(new wargame.render.PixiRenderer(stage, renderer));
  }
  public function start() {
    world.start();
  }
}
