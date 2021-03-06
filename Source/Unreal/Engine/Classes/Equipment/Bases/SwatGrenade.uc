class SwatGrenade extends ThrownWeapon;

var() config vector PlayerViewOffset;
var() config bool PlayerUsable;

////////////////////////////////////////////////////////////////////////////////
//
// IHaveWeight implementation

var() public config float Weight;
var() public config float Bulk;
var() public config float StartCount;

static function float GetInitialWeight() {
  return default.Weight * default.StartCount;
}

static function float GetInitialBulk() {
  return default.Bulk * default.StartCount;
}

simulated function float GetItemWeight() {
  return Weight;
}

simulated function float GetItemBulk() {
  return Bulk;
}

simulated function vector GetPlayerViewOffset()
{
    return PlayerViewOffset;
}

simulated function int GetDefaultAvailableCount()
{
  return StartCount;
}

static function bool IsUsableByPlayer()
{
	return default.PlayerUsable;
}

defaultproperties
{
  PlayerViewOffset = (X=-22,Y=7,Z=-12)
  StartCount=1
}
