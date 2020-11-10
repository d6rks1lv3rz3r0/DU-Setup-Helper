-- Use an online converter such as https://thdoan.github.io/mr-data-converter/ to convert from Excel/Sheets to Lua.
Elements = {
  [1]={["Industry"]="smelter",["X"]=9.508877077,["Y"]=-4,["Z"]=-6.003804552,["ID"]=95,["Recipe"]="Calcium Reinforced Copper",["Mode"]="Maintain 500"},
}

NumElements = 72; -- Easily visible from the above list.
ElementIndex = 1; -- Initialize rolodex.

system.showScreen(1) -- Display the HUD.

unit.setTimer('Update',0.5) -- Set tick to update display based on current value of rolodex.

-- Rounding function for concise display.
function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end