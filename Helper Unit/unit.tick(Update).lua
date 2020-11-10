-- Get Current Row
Data = Elements[ElementIndex];

-- Unfold Data
CurrentIndustry = Data["Industry"];
X = Data["X"];
Y = Data["Y"];
Z = Data["Z"];

-- Offset for improved visibility.
X = X - X/10;
Y = Y - Y/10;
Z = Z - Z/10;

-- Draw Arrow Stickers pointing to current industry.
for ArrowIndex = 1,20,1 do  
    Core.deleteSticker(ArrowIndex)
end

UInd = Core.spawnArrowSticker(X,Y,Z,"up");
DInd = Core.spawnArrowSticker(X,Y,Z,"down");
NInd = Core.spawnArrowSticker(X,Y,Z,"north");
SInd = Core.spawnArrowSticker(X,Y,Z,"south");
EInd = Core.spawnArrowSticker(X,Y,Z,"east");
WInd = Core.spawnArrowSticker(X,Y,Z,"west");

-- HUD Content
HTML = [[

<style>
.box {
  border: 2px solid rgb(200,29,29);
  background-color: rgba(200,29,29,.2);
  border-radius: 10px;
}

.a {
  width: 50vw;
  height: 14vh;
}

.text {
  margin: 2vh 2vw 2vh 2vw;
  font-size: 1.75vh;
}

.disclaimer {
  margin: 2vh 2vw 2vh 2vw;
  font-size: 1.2vh;
  color:#d3d3d3;
}  

</style>

<div class="box a">

<p class="text">
Set
<strong>]] ..
CurrentIndustry ..
[[</strong> 
at 
(<span style="color:#ffa500;">]] ..
tostring(round(Data["X"]*4,1)).. 
[[</span>,
<span style="color:#ffa500;">]] ..
tostring(round(Data["Y"]*4,1)) ..
[[</span>,
<span style="color:#ffa500;">]] ..
tostring(round(Data["Z"]*4,1)) .. 
[[</span>) 
to produce 
<strong><span style="color:#cc00cc;">]] ..
Data["Recipe"] ..
[[</span></strong> 
and 
<strong><span style="color:#00ff00;">]] ..
Data["Mode"] ..
[[</span></strong>
</p>

<p class="disclaimer"> 

Press <strong>Alt + 1 (Option 1 Keybind)</strong> for previous Industry.
<br>
Press <strong>Alt + 2 (Option 2 Keybind)</strong> for next Industry.
<br>
<strong> 6 Arrow Stickers </strong> will attempt to show the location of the current industry.
<br>
Press <strong>Alt + 4 (Option 4 Keybind)</strong> to kill the guide in case it causes an issue.
</p>

</div>

]]

-- Update HUD
system.setScreen(HTML)