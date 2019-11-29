package;

import flixel.FlxState;
import flixel.FlxObject;
// import flixel.text.FlxText;
import flixel.tile.FlxTilemap;

class PlayState extends FlxState {
  override public function create():Void {
    // var _map:FlxOgmoLoader;
    var _mWalls:FlxTilemap;
    var _player:Player;

    // add(new FlxText(10, 10, 100, "Hello, World!"));

    /* For OGMO Editor 3  *****************************************************/
    /**************************************************************************/

    /* For Old OGMO Editor ****************************************************/
    // var _flx_ogmo_loader:FlxOgmoLoader = new FlxOgmoLoader(AssetPaths.room_001__oel);
    // _mWalls = _flx_ogmo_loader.loadTilemap(AssetPaths.tiles__png, 16, 16, "walls");
    /**************************************************************************/

    /* For Tiled **************************************************************/
    // var _flx_ogmo_loader:FlxOgmoLoader = new TiledMap(AssetPaths.room_001__tmx);
    // _mWalls = new FlxTilemap();
    // _mWalls.loadMapFromArray(
    //   cast(_flx_ogmo_loader.getLayer("walls"), TiledTileLayer).tileArray,
    //   _flx_ogmo_loader.width, _flx_ogmo_loader.height,
    //   AssetPaths.tiles__png,
    //   _flx_ogmo_loader.tileWidth, _flx_ogmo_loader.tileHeight,
    //   FlxTilemapAutoTiling.OFF, 1, 1, 3
    // );
    /**************************************************************************/

    _mWalls.follow();
    _mWalls.setTileProperties(1, FlxObject.NONE);
    _mWalls.setTileProperties(2, FlxObject.ANY);
    add(_mWalls);

    _player = new Player(20, 20);
    _map.loadEntities(placeEntities, "entities");
    add(_player);


    super.create();
  }

  override public function update(elapsed:Float):Void {
    super.update(elapsed);
  }

  function placeEntities(entityName:String, entityData:Xml):Void {
    var x:Int = Std.parseInt(entityData.get("x"));
    var y:Int = Std.parseInt(entityData.get("y"));
    if (entityName == "player") {
      _player.x = x;
      _player.y = y;
    }
  }
}
