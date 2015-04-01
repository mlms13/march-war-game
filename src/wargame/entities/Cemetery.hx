package wargame.entities;

import edge.IComponent;
import edge.Engine;
import wargame.components.*;

// a factory for undead things
class Cemetery {
  public static function createSkeleton(engine : Engine, posX : Float, posY : Float) {
    engine.create([
      new Display("assets/skeleton.png"),
      new Position(posX, posY)
      // TODO: health
      // TODO: attack
      // TODO: defense
    ]);
  }

  public static function createZombie(engine : Engine, posX : Float, posY : Float) {
    engine.create([
      new Display("assets/zombie.png", true),
      new Position(posX, posY)
      // TODO: health
      // TODO: attack
      // TODO: defense
    ]);
  }
}
