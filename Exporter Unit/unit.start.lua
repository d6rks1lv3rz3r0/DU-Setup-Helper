local coreOffset = 16;

local hp = Core.getElementHitPointsById(Core.getId())
if hp > 10000 then
    coreOffset = 128
elseif hp > 1000 then
    coreOffset = 64
elseif hp > 150 then
    coreOffset = 32
end

Elements = Core.getElementIdList();

ExportString = "Funny Handle: ";

for index, ID in ipairs(Elements) do
    
    Position = Core.getElementPositionById(ID)
    
    x = Position[1] - coreOffset
    y = Position[2] - coreOffset
    z = Position[3] - coreOffset

    ExportString = ExportString ..
        Core.getElementTypeById(ID) .. "\t" .. 
        tostring(x) .. "\t" .. 
        tostring(y) .. "\t" .. 
        tostring(z) .. "\t" .. 
        tostring(ID) .. "\n"
           
end

system.logInfo(ExportString)


