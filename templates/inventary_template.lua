--[[    Inventory Sheet Template    by: MrStump

You can set up your own character sheet if you follow these steps.

Step 1) Change the character sheet image
    -Right click on the character sheet, click Custom
    -Replace the image URL with one for your character sheet
    -Click import, make sure your sheet loads
    -SAVE THE GAME (the table setup)
    -LOAD FROM THAT SAVE YOU JUST MADE

Step 2) Edit script to fit your character sheet
    -Below you will see some general options, and then the big data table
    -The data table is what determines how many of which buttons are made
        -Checkboxes
        -Counters
        -Textboxes
    -By default, there are 3 of each. You can add more or remove entries
    -If you intend to add/remove, be sure only to add/remove ENTRIES
        -This is what an entry looks like:
            {
                pos   = {-0.977,0.1,-0.589},
                size  = 800,
                state = false
            },
        -Deleting the whole thing would remove that specific item on the sheet
        -Copy and pasting it after another entry would create another
    -Each entry type has unique data points (pos, size, state, etc)
        -Do not try to add in your own data points or remove them individually
        -There is a summary of what each point does at the top of its category

Step 3) Save and check script changes
    -Hit Save & Apply in the script window to save your code
    -You can edit your code as needed and Save+Apply as often as needed
    -When you are finished, make disableSave = false below then Save+apply
        -This enables saving, so your sheet will remember whats on it.

Bonus) Finding/Editing Positions for elements
    I have included a tool to get positions for buttons in {x,y,z} form
    Place it where you want the center of your element to be
    Then copy the table from the notes (lower right of screen)
        You can highlight it and CTRL+C
    Paste it into the data table where needed (pos=)
    If you want to manually tweek the values:
        {0,0,0} is the center of the character sheet
        {1,0,0} is right, {-1,0,0} is left
        {0,0,-1} is up, {0,0,1} is down
        0.1 for Y is the height off of the page.
            If it was 0, it would be down inside the model of the sheet

Begin editing below:    ]]

--Set this to true while editing and false when you have finished
disableSave = false
--Remember to set this to false once you are done making changes
--Then, after you save & apply it, save your game too

--Color information for button text (r,g,b, values of 0-1)
buttonFontColor = {0,0,0}
--Color information for button background
buttonColor = {1,1,1}
--Change scale of button (Avoid changing if possible)
buttonScale = {0.1,0.1,0.1}

--This is the button placement information
defaultButtonData = {
    --Add checkboxes
    checkbox = {
        --[[
        pos   = the position (pasted from the helper tool)
        size  = height/width/font_size for checkbox
        state = default starting value for checkbox (true=checked, false=not)
        ]]
--[[
        --First checkbox
        {
            pos   = {-0.977,0.1,-0.589},
            size  = 800,
            state = false
        },

        --End of checkboxes
]]
    },
    --Add counters that have a + and - button
    counter = {
        --[[
        pos    = the position (pasted from the helper tool)
        size   = height/width/font_size for counter
        value  = default starting value for counter
        hideBG = if background of counter is hidden (true=hidden, false=not)
        ]]
--[[
        --First counter
        {
            pos    = {-0.995,0.1,0.057},
            size   = 800,
            value  = 0,
            hideBG = true
        },

        --End of counters
]]
    },
    --Add editable text boxes

    headerTextBoxes = {
        --[[
        pos       = the position (pasted from the helper tool)
        rows      = how many lines of text you want for this box
        width     = how wide the text box is
        font_size = size of text. This and "rows" effect overall height
        label     = what is shown when there is no text. "" = nothing
        value     = text entered into box. "" = nothing
        alignment = Number to indicate how you want text aligned
                    (1=Automatic, 2=Left, 3=Center, 4=Right, 5=Justified)
        ]]
        --zlataky
        {
            pos       = {-1.357,0.1,-1.9},
            rows      = 1,
            width     = 2000,
            font_size = 750,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --stribrnaky
        {
            pos       = {-0.871,0.1,-1.9},
            rows      = 1,
            width     = 2000,
            font_size = 750,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --medaky
        {
            pos       = {-0.379,0.1,-1.9},
            rows      = 1,
            width     = 2000,
            font_size = 750,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --nosnost
        {
            pos       = {0.460,0.1,-1.9},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "0/0/0/0",
            value     = "",
            alignment = 3
        },
        --zatížení
        {
            pos       = {1.333,0.1,-1.9},
            rows      = 1,
            width     = 2280,
            font_size = 750,
            label     = "0",
            value     = "",
            alignment = 3
        }
    },


    items = {
        --[[
        pos       = the position (pasted from the helper tool)
        rows      = how many lines of text you want for this box
        width     = how wide the text box is
        font_size = size of text. This and "rows" effect overall height
        label     = what is shown when there is no text. "" = nothing
        value     = text entered into box. "" = nothing
        alignment = Number to indicate how you want text aligned
                    (1=Automatic, 2=Left, 3=Center, 4=Right, 5=Justified)
        ]]
        --zlataky
        {
            pos       = {-1.357,0.1,-1.9},
            rows      = 1,
            width     = 2000,
            font_size = 750,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --stribrnaky
        {
            pos       = {-0.871,0.1,-1.9},
            rows      = 1,
            width     = 2000,
            font_size = 750,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --medaky
        {
            pos       = {-0.379,0.1,-1.9},
            rows      = 1,
            width     = 2000,
            font_size = 750,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --nosnost
        {
            pos       = {0.460,0.1,-1.9},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "0/0/0/0",
            value     = "",
            alignment = 3
        },
        --zatížení
        {
            pos       = {1.333,0.1,-1.9},
            rows      = 1,
            width     = 2280,
            font_size = 750,
            label     = "0",
            value     = "",
            alignment = 3
        },
-----------------------
--INVENTORY
-----------------------
        --vec_01
        {
            pos       = {-1.03,0.1,-1.5405},
            rows      = 1,
            width     = 5180,
            font_size = 550,
            label     = "item",
            value     = "",
            alignment = 3
        },
        --vlastnosti_01
        {
            pos       = {0.104,0.1,-1.5405},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kde_01
        {
            pos       = {0.9385,0.1,-1.5405},
            rows      = 1,
            width     = 2300,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnost_01
        {
            pos       = {1.39,0.1,-1.5405},
            rows      = 1,
            width     = 1750,
            font_size = 550,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --vec_02
        {
            pos       = {-1.03,0.1,-1.3875},
            rows      = 1,
            width     = 5180,
            font_size = 550,
            label     = "item",
            value     = "",
            alignment = 3
        },
        --vlastnosti_02
        {
            pos       = {0.104,0.1,-1.3875},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kde_02
        {
            pos       = {0.9385,0.1,-1.3875},
            rows      = 1,
            width     = 2300,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnost_02
        {
            pos       = {1.39,0.1,-1.3875},
            rows      = 1,
            width     = 1750,
            font_size = 550,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --vec_03
        {
            pos       = {-1.03,0.1,-1.2345},
            rows      = 1,
            width     = 5180,
            font_size = 550,
            label     = "item",
            value     = "",
            alignment = 3
        },
        --vlastnosti_03
        {
            pos       = {0.104,0.1,-1.2345},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kde_03
        {
            pos       = {0.9385,0.1,-1.2345},
            rows      = 1,
            width     = 2300,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnost_03
        {
            pos       = {1.39,0.1,-1.2345},
            rows      = 1,
            width     = 1750,
            font_size = 550,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --vec_04
        {
            pos       = {-1.03,0.1,-1.0815},
            rows      = 1,
            width     = 5180,
            font_size = 550,
            label     = "item",
            value     = "",
            alignment = 3
        },
        --vlastnosti_04
        {
            pos       = {0.104,0.1,-1.0815},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kde_04
        {
            pos       = {0.9385,0.1,-1.0815},
            rows      = 1,
            width     = 2300,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnost_04
        {
            pos       = {1.39,0.1,-1.0815},
            rows      = 1,
            width     = 1750,
            font_size = 550,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --vec_06
        {
            pos       = {-1.03,0.1,-0.9285},
            rows      = 1,
            width     = 5180,
            font_size = 550,
            label     = "item",
            value     = "",
            alignment = 3
        },
        --vlastnosti_06
        {
            pos       = {0.104,0.1,-0.9285},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kde_06
        {
            pos       = {0.9385,0.1,-0.9285},
            rows      = 1,
            width     = 2300,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnost_06
        {
            pos       = {1.39,0.1,-0.9285},
            rows      = 1,
            width     = 1750,
            font_size = 550,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --vec_07
        {
            pos       = {-1.03,0.1,-0.7755},
            rows      = 1,
            width     = 5180,
            font_size = 550,
            label     = "item",
            value     = "",
            alignment = 3
        },
        --vlastnosti_07
        {
            pos       = {0.104,0.1,-0.7755},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kde_07
        {
            pos       = {0.9385,0.1,-0.7755},
            rows      = 1,
            width     = 2300,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnost_07
        {
            pos       = {1.39,0.1,-0.7755},
            rows      = 1,
            width     = 1750,
            font_size = 550,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --vec_08
        {
            pos       = {-1.03,0.1,-0.6225},
            rows      = 1,
            width     = 5180,
            font_size = 550,
            label     = "item",
            value     = "",
            alignment = 3
        },
        --vlastnosti_08
        {
            pos       = {0.104,0.1,-0.6225},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kde_08
        {
            pos       = {0.9385,0.1,-0.6225},
            rows      = 1,
            width     = 2300,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnost_08
        {
            pos       = {1.39,0.1,-0.6225},
            rows      = 1,
            width     = 1750,
            font_size = 550,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --vec_09
        {
            pos       = {-1.03,0.1,-0.4695},
            rows      = 1,
            width     = 5180,
            font_size = 550,
            label     = "item",
            value     = "",
            alignment = 3
        },
        --vlastnosti_09
        {
            pos       = {0.104,0.1,-0.4695},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kde_09
        {
            pos       = {0.9385,0.1,-0.4695},
            rows      = 1,
            width     = 2300,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnost_09
        {
            pos       = {1.39,0.1,-0.4695},
            rows      = 1,
            width     = 1750,
            font_size = 550,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --vec_10
        {
            pos       = {-1.03,0.1,-0.3165},
            rows      = 1,
            width     = 5180,
            font_size = 550,
            label     = "item",
            value     = "",
            alignment = 3
        },
        --vlastnosti_10
        {
            pos       = {0.104,0.1,-0.3165},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kde_10
        {
            pos       = {0.9385,0.1,-0.3165},
            rows      = 1,
            width     = 2300,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnost_10
        {
            pos       = {1.39,0.1,-0.3165},
            rows      = 1,
            width     = 1750,
            font_size = 550,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --vec_11
        {
            pos       = {-1.03,0.1,-0.1635},
            rows      = 1,
            width     = 5180,
            font_size = 550,
            label     = "item",
            value     = "",
            alignment = 3
        },
        --vlastnosti_11
        {
            pos       = {0.104,0.1,-0.1635},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kde_11
        {
            pos       = {0.9385,0.1,-0.1635},
            rows      = 1,
            width     = 2300,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnost_11
        {
            pos       = {1.39,0.1,-0.1635},
            rows      = 1,
            width     = 1750,
            font_size = 550,
            label     = "0",
            value     = "",
            alignment = 3
        },
        --vec_12
        {
            pos       = {-1.03,0.1,-0.0105},
            rows      = 1,
            width     = 5180,
            font_size = 550,
            label     = "item",
            value     = "",
            alignment = 3
        },
        --vlastnosti_12
        {
            pos       = {0.104,0.1,-0.0105},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kde_12
        {
            pos       = {0.9385,0.1,-0.0105},
            rows      = 1,
            width     = 2300,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnost_12
        {
            pos       = {1.39,0.1,-0.0105},
            rows      = 1,
            width     = 1750,
            font_size = 550,
            label     = "0",
            value     = "",
            alignment = 3
        },
         --vec_05
        {
            pos       = {-1.03,0.1,0.1425},
            rows      = 1,
            width     = 5180,
            font_size = 550,
            label     = "item",
            value     = "",
            alignment = 3
        },
        --vlastnosti_05
        {
            pos       = {0.104,0.1,0.1425},
            rows      = 1,
            width     = 5400,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kde_05
        {
            pos       = {0.9385,0.1,0.1425},
            rows      = 1,
            width     = 2300,
            font_size = 550,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnost_05
        {
            pos       = {1.39,0.1,0.1425},
            rows      = 1,
            width     = 1750,
            font_size = 550,
            label     = "0",
            value     = "",
            alignment = 3
        },
-------------------------------------------------
--INVENTORY - BIG
-------------------------------------------------
         --vecBig_01
        {
            pos       = {-1.03,0.1,0.33},
            rows      = 2,
            width     = 5180,
            font_size = 490,
            label     = "Item",
            value     = "",
            alignment = 3
        },
        --vlastnostiBig_01
        {
            pos       = {0.104,0.1,0.33},
            rows      = 2,
            width     = 5400,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kdeBig_01
        {
            pos       = {0.9385,0.1,0.33},
            rows      = 2,
            width     = 2300,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnostBig_01
        {
            pos       = {1.39,0.1,0.33},
            rows      = 2,
            width     = 1750,
            font_size = 490,
            label     = "0",
            value     = "",
            alignment = 3
        },
         --vecBig_02
        {
            pos       = {-1.03,0.1,0.568},
            rows      = 2,
            width     = 5180,
            font_size = 490,
            label     = "Item",
            value     = "",
            alignment = 3
        },
        --vlastnostiBig_02
        {
            pos       = {0.104,0.1,0.568},
            rows      = 2,
            width     = 5400,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kdeBig_02
        {
            pos       = {0.9385,0.1,0.568},
            rows      = 2,
            width     = 2300,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnostBig_02
        {
            pos       = {1.39,0.1,0.568},
            rows      = 2,
            width     = 1750,
            font_size = 490,
            label     = "0",
            value     = "",
            alignment = 3
        },
         --vecBig_03
        {
            pos       = {-1.03,0.1,0.806},
            rows      = 2,
            width     = 5180,
            font_size = 490,
            label     = "Item",
            value     = "",
            alignment = 3
        },
        --vlastnostiBig_03
        {
            pos       = {0.104,0.1,0.806},
            rows      = 2,
            width     = 5400,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kdeBig_03
        {
            pos       = {0.9385,0.1,0.806},
            rows      = 2,
            width     = 2300,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnostBig_03
        {
            pos       = {1.39,0.1,0.806},
            rows      = 2,
            width     = 1750,
            font_size = 490,
            label     = "0",
            value     = "",
            alignment = 3
        },
         --vecBig_04
        {
            pos       = {-1.03,0.1,1.044},
            rows      = 2,
            width     = 5180,
            font_size = 490,
            label     = "Item",
            value     = "",
            alignment = 3
        },
        --vlastnostiBig_04
        {
            pos       = {0.104,0.1,1.044},
            rows      = 2,
            width     = 5400,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kdeBig_04
        {
            pos       = {0.9385,0.1,1.044},
            rows      = 2,
            width     = 2300,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnostBig_04
        {
            pos       = {1.39,0.1,1.044},
            rows      = 2,
            width     = 1750,
            font_size = 490,
            label     = "0",
            value     = "",
            alignment = 3
        },
         --vecBig_05
        {
            pos       = {-1.03,0.1,1.282},
            rows      = 2,
            width     = 5180,
            font_size = 490,
            label     = "Item",
            value     = "",
            alignment = 3
        },
        --vlastnostiBig_05
        {
            pos       = {0.104,0.1,1.282},
            rows      = 2,
            width     = 5400,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kdeBig_05
        {
            pos       = {0.9385,0.1,1.282},
            rows      = 2,
            width     = 2300,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnostBig_05
        {
            pos       = {1.39,0.1,1.282},
            rows      = 2,
            width     = 1750,
            font_size = 490,
            label     = "0",
            value     = "",
            alignment = 3
        },
         --vecBig_06
        {
            pos       = {-1.03,0.1,1.520},
            rows      = 2,
            width     = 5180,
            font_size = 490,
            label     = "Item",
            value     = "",
            alignment = 3
        },
        --vlastnostiBig_06
        {
            pos       = {0.104,0.1,1.520},
            rows      = 2,
            width     = 5400,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kdeBig_06
        {
            pos       = {0.9385,0.1,1.520},
            rows      = 2,
            width     = 2300,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnostBig_06
        {
            pos       = {1.39,0.1,1.520},
            rows      = 2,
            width     = 1750,
            font_size = 490,
            label     = "0",
            value     = "",
            alignment = 3
        },
         --vecBig_07
        {
            pos       = {-1.03,0.1,1.758},
            rows      = 2,
            width     = 5180,
            font_size = 490,
            label     = "Item",
            value     = "",
            alignment = 3
        },
        --vlastnostiBig_07
        {
            pos       = {0.104,0.1,1.758},
            rows      = 2,
            width     = 5400,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kdeBig_07
        {
            pos       = {0.9385,0.1,1.758},
            rows      = 2,
            width     = 2300,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnostBig_07
        {
            pos       = {1.39,0.1,1.758},
            rows      = 2,
            width     = 1750,
            font_size = 490,
            label     = "0",
            value     = "",
            alignment = 3
        },
         --vecBig_08
        {
            pos       = {-1.03,0.1,1.996},
            rows      = 2,
            width     = 5180,
            font_size = 490,
            label     = "Item",
            value     = "",
            alignment = 3
        },
        --vlastnostiBig_08
        {
            pos       = {0.104,0.1,1.996},
            rows      = 2,
            width     = 5400,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --kdeBig_08
        {
            pos       = {0.9385,0.1,1.996},
            rows      = 2,
            width     = 2300,
            font_size = 490,
            label     = "-",
            value     = "",
            alignment = 3
        },
        --hmotnostBig_08
        {
            pos       = {1.39,0.1,1.996},
            rows      = 2,
            width     = 1750,
            font_size = 490,
            label     = "0",
            value     = "",
            alignment = 3
        },

        --End of textboxes
    }
}



--Lua beyond this point, I recommend doing something more fun with your life



--Save function
function updateSave()
    saved_data = JSON.encode(ref_buttonData)
    if disableSave==true then saved_data="" end
    self.script_state = saved_data
end

--Startup procedure
function onload(saved_data)
    if disableSave==true then saved_data="" end
    --[[
    if saved_data ~= "" then
        local loaded_data = JSON.decode(saved_data)
        ref_buttonData = loaded_data
    else
        ref_buttonData = defaultButtonData
    end
    ]]

    spawnedButtonCount = 0
    createTextbox(ref_buttonData.headerTextBoxes)
end

--Updates saved value for given text box
function click_textbox(i, value, selected)
    if selected == false then
        ref_buttonData.textbox[i].value = value
        updateSave()
    end
end

--Dud function for if you have a background on a counter
function click_none() end




function createTextbox(textBoxTable)
    for i, data in ipairs(textBoxTable) do
        --Sets up reference function
        local funcName = "textbox"..i
        local func = function(_,_,val,sel) click_textbox(i,val,sel) end
        self.setVar(funcName, func)

        self.createInput({
            input_function = funcName,
            function_owner = self,
            label          = data.label,
            alignment      = data.alignment,
            position       = data.pos,
            scale          = buttonScale,
            width          = data.width,
            height         = (data.font_size*data.rows)+24,
            font_size      = data.font_size,
            color          = buttonColor,
            font_color     = buttonFontColor,
            value          = data.value,
        })
    end
end
