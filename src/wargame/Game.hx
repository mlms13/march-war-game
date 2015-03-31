package wargame;

import edge.World;
import edge.Engine;
import pixi.core.display.Container;
import pixi.core.renderers.SystemRenderer;

import wargame.components.*;
import wargame.systems.*;
import wargame.entities.*;

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
        world.engine.create([
          new Display("assets/grass.png"),
          new Position(i, j)
        ]);
      }
    }

    for (i in 0...Config.yTiles) {
      Cemetery.createSkeleton(world.engine, 0, i);
    }

    for (i in 0...Config.yTiles) {
      Cemetery.createZombie(world.engine, Config.yTiles - 1, i);
    }

    world.physics.add(new MouseInteraction(stage));
    world.render.add(new PixiStage(stage));
    world.render.add(new PixiRenderer(stage, renderer));
  }
  public function start() {
    world.start();
  }
}
