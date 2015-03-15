package wargame;

import pixi.core.display.Container;
import pixi.core.renderers.SystemRenderer;

class Game {
  var stage : Container;
  var renderer : SystemRenderer;

  public function new(stage : Container, renderer : SystemRenderer) {
    this.stage = stage;
    this.renderer = renderer;
  }
  public function start() {

  }
}
