# DU-Setup-Helper
Provides a simple helper to direct industry setup instructions for newly deployed factory blueprints in Dual Universe. 

![Example HUD](https://github.com/d6rks1lv3rz3r0/DU-Setup-Helper/raw/main/HUD%20example.png)

# Rough Draft for Setup by Factory Owner

## Export Stage

1) Deploy a PB and connect to Core. Name the slot Core. Copy the Export Unit code into the PB.

2) Run the PB. Remove the PB from the factory.

3) Go to your log files, and open the latest log. Search for "Funny Handle" and locate the exported table. Copy that table into Excel or Sheets.

4) Add a header row so your export looks like the following in Excel or Sheets:


| Industry | X | Y | Z | ID | Recipe | Mode |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| smelter  | 9.508877077  | -4 | -6.003804552  | 95  |   |  |


5) Use an online converter to convert this table to Lua, such as the one at https://thdoan.github.io/mr-data-converter/

## Scribing Stage

1) Deploy a PB and connect to Core. Name the slot Core. Copy the Helper Unit code into the PB.

2) Replace the "Elements" variable in uniit.start() with your converted table. It should look identical in format.

3) Use the helper with empty instructions to guide you through your factory. The order in which the helper will go is the same order in the Excel sheets.

4) As you use the helper to cycle through the industries in your factory, manually fill out the Recipe and Mode fields in your Excel sheet foe each industry.

5) Run thetable conversion from Excel to Lua on your fully completed table, and replace the Elements variable again.

6) Play test the finished product for bugs and typos.

