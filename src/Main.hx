import wargame.Game;

import pixi.core.display.Container;
import pixi.core.renderers.Detector;
import js.Browser;
import pixi.core.renderers.SystemRenderer;

class Main {
  public static function main() {
    var stage = new Container();
    var renderer : SystemRenderer = Detector.autoDetectRenderer(Config.width, Config.height, {
      antialias: true,
      resolution: 1,
      transparent: false
    });
    Browser.document.body.appendChild(renderer.view);

    var game = new Game(stage, renderer);
    game.start();
  }
}
