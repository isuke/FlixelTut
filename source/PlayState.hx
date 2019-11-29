package;

import flixel.FlxState;
// import flixel.text.FlxText;

class PlayState extends FlxState {
  override public function create():Void {
    var _player:Player;
    _player = new Player(20, 20);
    add(_player);
    // add(new FlxText(10, 10, 100, "Hello, World!"));
    super.create();
  }

  override public function update(elapsed:Float):Void {
    super.update(elapsed);
  }
}
