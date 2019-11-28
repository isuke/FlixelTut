package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.ui.FlxButton;

class MenuState extends FlxState {
  override public function create():Void {
    super.create();

    var _btnPlay:FlxButton;
    _btnPlay = new FlxButton(0, 0, "Play", clickPlay);
    _btnPlay.screenCenter();
    add(_btnPlay);
  }

  override public function update(elapsed:Float):Void {
    super.update(elapsed);
  }

  function clickPlay():Void {
    FlxG.switchState(new PlayState());
  }
}
