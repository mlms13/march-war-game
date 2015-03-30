package wargame.systems;

import edge.ISystem;
import pixi.core.display.Container;
import pixi.core.utils.EventData;
import pixi.core.math.Point;

class MouseInteraction implements ISystem {
  var stage : Container;
  var mouseCoords: { x : Float, y : Float };
  var mouseIsDown : Bool;

  public function new(stage : Container) {
    this.stage = stage;
    this.stage.interactive = true;
    mouseCoords = { x : 0.0, y : 0.0 };
    mouseIsDown = false;

    this.stage.on("mousemove", mouseMove);
    this.stage.on("mousedown", mouseDown);
    this.stage.on("mouseup", mouseUp);
  }

  function mouseMove(e : EventData) {
    var pt = (e.data.global : Point);
    mouseCoords.x = pt.x;
    mouseCoords.y = pt.y;
  }

  function mouseDown(_) {
    mouseIsDown = true;
  }

  function mouseUp(_) {
    mouseIsDown = false;
  }

  public function update() {
    if (mouseIsDown) {
      trace('Mouse Down at ${mouseCoords.x}, ${mouseCoords.y}');
    } else {
        trace('Mouse not down at ${mouseCoords.x}, ${mouseCoords.y}');
    }
  }
}
