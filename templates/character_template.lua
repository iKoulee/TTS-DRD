--[[    Character Sheet Template    by: MrStump

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
        -Textboxes
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
buttonFontColor = {0,0,0,}
--Color information for button background
buttonColor = {1,1,1}
--Change scale of button (Avoid changing if possible)
buttonScale = {0.1,0.1,0.1}

--ButtonIndices
checkboxButtonStartIndex = 0
counterButtonIndex = {}

--This is the button placement information
defaultButtonData = {
    --Add checkboxes
    checkbox = {
        --[[
        pos   = the position (pasted from the helper tool)
        size  = height/width/font_size for checkbox
        state = default starting value for checkbox (true=checked, false=not)
        ]]
        --First checkbox
        noLoad =
        {
            pos   = {-1.575,0.1,0.36},
            size  = 500,
            state = false
        },
        --Second checkbox
        lightLoad = 
        {
            pos   = {-1.575,0.1,0.555},
            size  = 500,
            state = false
        },
        --Third checkbox
        mediumLoad = 
        {
            pos   = {-1.575,0.1,0.75},
            size  = 500,
            state = false
        },
        --Third checkbox
        heavyLoad =
        {
            pos   = {-1.575,0.1,0.945},
            size  = 500,
            state = false
        },
        --End of checkboxes
    },
    --Add counters that have a + and - button
    counter = {
        --[[
        pos    = the position (pasted from the helper tool)
        size   = height/width/font_size for counter
        value  = default starting value for counter
        hideBG = if background of counter is hidden (true=hidden, false=not)
        ]]
        hp = --First counter
        {
            pos    = {0.22,0.1,-1.188},
            size   = 750,
            value  = 0,
            hideBG = false
        },
        mana = --Second counter
        {
            pos    = {0.22,0.1,-1.385},
            size   = 750,
            value  = 0,
            hideBG = false
        },

        --End of counters
    },
    --Add editable text boxes
    textbox = {
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
        name = 
        {
            pos       = {-1.49,0.1,-1.492},
            rows      = 1,
            width     = 5950,
            font_size = 690,
            label     = "jméno postavy",
            value     = "",
            alignment = 3,
        },
        race = 
        {
            pos       = {-1.82,0.1,-1.295},
            rows      = 1,
            width     = 2800,
            font_size = 400,
            label     = "rasa",
            value     = "",
            alignment = 3,
        },
        occupation =
        {
            pos       = {-1.16,0.1,-1.295},
            rows      = 1,
            width     = 2800,
            font_size = 400,
            label     = "povolání",
            value     = "",
            alignment = 3,
        },
        strength = 
        {
            pos       = {-1.328,0.1,-1.06},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "10",
            value     = "",
            alignment = 3
        },
        strengthBonus = 
        {
            pos       = {-1.002,0.1,-1.06},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "+0",
            value     = "",
            alignment = 3
        },
        dexterity = 
        {
            pos       = {-1.328,0.1,-0.865},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "10",
            value     = "",
            alignment = 3
        },
        dexterityBonus = 
        {
            pos       = {-1.002,0.1,-0.865},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "+0",
            value     = "",
            alignment = 3
        },
        endurance = 
        {
            pos       = {-1.328,0.1,-0.67},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "10",
            value     = "",
            alignment = 3
        },
        enduranceBonus = 
        {
            pos       = {-1.002,0.1,-0.67},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "+0",
            value     = "",
            alignment = 3
        },
        intelligence = 
        {
            pos       = {-1.328,0.1,-0.475},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "10",
            value     = "",
            alignment = 3
        },
        intelligenceBonus = 
        {
            pos       = {-1.002,0.1,-0.475},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "+0",
            value     = "",
            alignment = 3
        },
        charisma = 
        {
            pos       = {-1.328,0.1,-0.28},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "10",
            value     = "",
            alignment = 3
        },
        charismaBonus = 
        {
            pos       = {-1.002,0.1,-0.28},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "+0",
            value     = "",
            alignment = 3
        },
        level = 
        {
            pos       = {-1.16,0.1,-0.05},
            rows      = 1,
            width     = 2800,
            font_size = 600,
            label     = "1",
            value     = "",
            alignment = 3,
        },
        experience = 
        {
            pos       = {-1.16,0.1,0.145},
            rows      = 1,
            width     = 2800,
            font_size = 600,
            label     = "0",
            value     = "",
            alignment = 3,
        },
        noLoadMovement =
        {
            pos       = {-1.328,0.1,0.385},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "10",
            value     = "",
            alignment = 3
        },
        noLoadMovementBonus =
        {
            pos       = {-1.002,0.1,0.385},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "+0",
            value     = "",
            alignment = 3
        },
        lightLoadMovement = 
        {
            pos       = {-1.328,0.1,0.580},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "10",
            value     = "",
            alignment = 3
        },
        lightLoadMovementBonus = 
        {
            pos       = {-1.002,0.1,0.580},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "+0",
            value     = "",
            alignment = 3
        },
        mediumLoadMovement = 
        {
            pos       = {-1.328,0.1,0.775},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "10",
            value     = "",
            alignment = 3
        },
        mediumLoadMovementBonus = 
        {
            pos       = {-1.002,0.1,0.775},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "+0",
            value     = "",
            alignment = 3
        },
        heavyLoadMovement =
        {
            pos       = {-1.328,0.1,0.970},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "10",
            value     = "",
            alignment = 3
        },
        heavyLoadMovementBonus = 
        {
            pos       = {-1.002,0.1,0.970},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "+0",
            value     = "",
            alignment = 3
        },
        perceptionRandomObject = 
        {
            pos       = {-1.328,0.1,1.3},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "0",
            value     = "",
            alignment = 3
        },
        perceptionRandomMechanism = 
        {
            pos       = {-1.002,0.1,1.3},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "0",
            value     = "",
            alignment = 3
        },
        perceptionSearchedObject = 
        {
            pos       = {-1.328,0.1,1.495},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "0",
            value     = "",
            alignment = 3
        },
        perceptionSearchedMechanism = 
        {
            pos       = {-1.002,0.1,1.495},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "0",
            value     = "",
            alignment = 3
        },

        hpMax = 
        {
            pos       = {-0.190,0.1,-1.385},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "0",
            value     = "",
            alignment = 3
        },

        manaMax = 
        {
            pos       = {-0.190,0.1,-1.188},
            rows      = 1,
            width     = 1250,
            font_size = 690,
            label     = "0",
            value     = "",
            alignment = 3
        },
        defenseNumberBase = 
        {
            pos       = {1.71,0.1,-1.382},
            rows      = 1,
            width     = 3800,
            font_size = 600,
            label     = "0",
            value     = "",
            alignment = 3,
        },
        defenseNumberDetails = 
        {
            pos       = {1.331,0.1,-1.1872},
            rows      = 2,
            width     = 7500,
            font_size = 350,
            label     = "",
            value     = "",
            alignment = 3,
        },
--------------------------------------------------
--[[
   |\                     /)
 /\_\\__               (_//
|   `>\-`     _._       //`)
 \ /` \\  _.-`:::`-._  //
  `    \|`    :::    `|/
        |     :::     |
        |.....:::.....|
        |:::::::::::::|
        |     :::     |
        \     :::     /
         \    :::    /
          `-. ::: .-'
           //`:::`\\
          //   '   \\
         |/         \\
]]
--Souboj tvari v tvar
--------------------------------------------------
        closeCombat01Name = --UC_btvt_zbran_01
        {
            pos       = {-0.374,0.1,-0.648},
            rows      = 2,
            width     = 3600,
            font_size = 350,
            label     = "chladná zbraň 01",
            value     = "",
            alignment = 3,
        },
        closeCombat01Location = --UC_btvt_kde_01
        {
            pos       = {0.168,0.1,-0.648},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "batoh",
            value     = "",
            alignment = 3,
        },
        closeCombat01AttackNumber = --UC_btvt_UC_01
        {
            pos       = {0.461,0.1,-0.648},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat01Attack = --UC_btvt_Utoc_01
        {
            pos       = {0.726,0.1,-0.648},
            rows      = 1,
            width     = 980,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat01Defense = --UC_btvt_OZ_01
        {
            pos       = {0.965,0.1,-0.648},
            rows      = 1,
            width     = 980,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat01Properties = --UC_btvt_Vlastnosti_01
        {
            pos       = {1.46,0.1,-0.648},
            rows      = 2,
            width     = 3440,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat01Weight = --UC_btvt_Vaha_01
        {
            pos       = {1.979,0.1,-0.648},
            rows      = 1,
            width     = 1240,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
--------------------------------------------------
        closeCombat02Name = --UC_btvt_zbran_02
        {
            pos       = {-0.374,0.1,-0.451},
            rows      = 2,
            width     = 3600,
            font_size = 350,
            label     = "chladná zbraň 02",
            value     = "",
            alignment = 3,
        },
        closeCombat02Location = --UC_btvt_kde_02
        {
            pos       = {0.168,0.1,-0.451},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "batoh",
            value     = "",
            alignment = 3,
        },
        closeCombat02AttackNumber =  --UC_btvt_UC_02
        {
            pos       = {0.461,0.1,-0.451},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat02Attack =  --UC_btvt_Utoc_02
        {
            pos       = {0.726,0.1,-0.451},
            rows      = 1,
            width     = 980,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat02Defense =  --UC_btvt_OZ_02
        {
            pos       = {0.965,0.1,-0.451},
            rows      = 1,
            width     = 980,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat02Properties =  --UC_btvt_Vlastnosti_02
        {
            pos       = {1.46,0.1,-0.451},
            rows      = 2,
            width     = 3440,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat02Weight =  --UC_btvt_Vaha_02
        {
            pos       = {1.979,0.1,-0.451},
            rows      = 1,
            width     = 1240,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
--------------------------------------------------
        closeCombat03Name = --UC_btvt_zbran_03
        {
            pos       = {-0.374,0.1,-0.255},
            rows      = 2,
            width     = 3600,
            font_size = 350,
            label     = "chladná zbraň 03",
            value     = "",
            alignment = 3,
        },
        closeCombat03Location =  --UC_btvt_kde_03
        {
            pos       = {0.168,0.1,-0.255},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "batoh",
            value     = "",
            alignment = 3,
        },
        closeCombat03AttackNumber =  --UC_btvt_UC_03
        {
            pos       = {0.461,0.1,-0.255},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat03Attack =  --UC_btvt_Utoc_03
        {
            pos       = {0.726,0.1,-0.255},
            rows      = 1,
            width     = 980,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat03Defense =  --UC_btvt_OZ_03
        {
            pos       = {0.965,0.1,-0.255},
            rows      = 1,
            width     = 980,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat03Properties =  --UC_btvt_Vlastnosti_03
        {
            pos       = {1.46,0.1,-0.255},
            rows      = 2,
            width     = 3440,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat03Weight =  --UC_btvt_Vaha_03
        {
            pos       = {1.979,0.1,-0.255},
            rows      = 1,
            width     = 1240,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
--------------------------------------------------
        closeCombat04Name =  --UC_btvt_zbran_04
        {
            pos       = {-0.374,0.1,-0.059},
            rows      = 2,
            width     = 3600,
            font_size = 350,
            label     = "chladná zbraň 04",
            value     = "",
            alignment = 3,
        },
        closeCombat04Location =  --UC_btvt_kde_04
        {
            pos       = {0.168,0.1,-0.059},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "batoh",
            value     = "",
            alignment = 3,
        },
        closeCombat04AttackNumber =  --UC_btvt_UC_04
        {
            pos       = {0.461,0.1,-0.059},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat04Attack =  --UC_btvt_Utoc_04
        {
            pos       = {0.726,0.1,-0.059},
            rows      = 1,
            width     = 980,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat04Defense =  --UC_btvt_OZ_04
        {
            pos       = {0.965,0.1,-0.059},
            rows      = 1,
            width     = 980,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat04Properties =  --UC_btvt_Vlastnosti_04
        {
            pos       = {1.46,0.1,-0.059},
            rows      = 2,
            width     = 3440,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat04Weight =  --UC_btvt_Vaha_04
        {
            pos       = {1.979,0.1,-0.059},
            rows      = 1,
            width     = 1240,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
--------------------------------------------------
        closeCombat05Name = --UC_btvt_zbran_05
        {
            pos       = {-0.374,0.1,0.137},
            rows      = 2,
            width     = 3600,
            font_size = 350,
            label     = "chladná zbraň 05 - jestli ti to nestačí, tak si Thar",
            value     = "",
            alignment = 3,
        },
        closeCombat03Location =  --UC_btvt_kde_05
        {
            pos       = {0.168,0.1,0.137},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "batoh",
            value     = "",
            alignment = 3,
        },
        closeCombat05AttackNumber =  --UC_btvt_UC_05
        {
            pos       = {0.461,0.1,0.137},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat05Attack =  --UC_btvt_Utoc_05
        {
            pos       = {0.726,0.1,0.137},
            rows      = 1,
            width     = 980,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat05Defense =  --UC_btvt_OZ_05
        {
            pos       = {0.965,0.1,0.137},
            rows      = 1,
            width     = 980,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat05Properties =  --UC_btvt_Vlastnosti_05
        {
            pos       = {1.46,0.1,0.137},
            rows      = 2,
            width     = 3440,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        closeCombat05Weight =  --UC_btvt_Vaha_05
        {
            pos       = {1.979,0.1,0.137},
            rows      = 1,
            width     = 1240,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
--------------------------------------------------
--[[
                                                       |
                                                        \.
                                                        /|.
                                                      /  `|.
                                                    /     |.
                                                  /       |.
                                                /         `|.
                                              /            |.
                                            /              |.
                                          /                |.
     __                                 /                  `|.
      -\                              /                     |.
        \\                          /                       |.
          \\                      /                         |.
           \|                   /                           |\
             \#####\          /                             ||
         ==###########>     /                               ||
          \##==      \    /                                 ||
     ______ =       =|__/___                                ||
 ,--' ,----`-,__ ___/'  --,-`-==============================##==========>
\               '        ##_______ ______   ______,--,____,=##,__
 `,    __==    ___,-,__,--'#'  ==='      `-'              | ##,-/
   `-,____,---'       \####\              |        ____,--\_##,/
       #_              |##   \  _____,---==,__,---'         ##
        #              ]===--==\                            ||
        #,             ]         \                          ||
         #_            |           \                        ||
          ##_       __/'             \                      ||
           ####='     |                \                    |/
            ###       |                  \                  |.
            ##       _'                    \                |.
           ###=======]                       \              |.
          ///        |                         \           ,|.
          //         |                           \         |.
                                                   \      ,|.
                                                     \    |.
                                                       \  |.
                                                         \|.
                                                         /.
                                                        |
]]
--Souboj na dalku
--------------------------------------------------
        rangedCombat01Name = --UC_snd_zbran_01
        {
            pos       = {-0.4335,0.1,0.711},
            rows      = 2,
            width     = 3080,
            font_size = 350,
            label     = "střelná zbraň 01",
            value     = "",
            alignment = 3,
        },
        rangedCombat01Location =  --UC_snd_kde_01
        {
            pos       = {0.048,0.1,0.711},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "batoh",
            value     = "",
            alignment = 3,
        },
        rangedCombat01AttackNumber = --UC_snd_UC_01
        {
            pos       = {0.342,0.1,0.711},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat01Attack = --UC_snd_Utoc_01
        {
            pos       = {0.618,0.1,0.711},
            rows      = 1,
            width     = 980,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat01Range =  --UC_snd_Dostrel_01
        {
            pos       = {0.916,0.1,0.711},
            rows      = 1,
            width     = 1420,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat01Defense = --UC_snd_OZ_01
        {
            pos       = {1.202,0.1,0.711},
            rows      = 1,
            width     = 950,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat01Properties =  --UC_snd_Vlastnosti_01
        {
            pos       = {1.6052,0.1,0.711},
            rows      = 2,
            width     = 2540,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat01Weight = --UC_snd_Vaha_01
        {
            pos       = {2.005,0.1,0.711},
            rows      = 1,
            width     = 960,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
--------------------------------------------------
        rangedCombat02Name =  --UC_snd_zbran_02
        {
            pos       = {-0.4335,0.1,0.907},
            rows      = 2,
            width     = 3080,
            font_size = 350,
            label     = "střelná zbraň 02",
            value     = "",
            alignment = 3,
        },
        rangedCombat02Location =  --UC_snd_kde_02
        {
            pos       = {0.048,0.1,0.907},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "batoh",
            value     = "",
            alignment = 3,
        },
        rangedCombat02AttackNumber =  --UC_snd_UC_02
        {
            pos       = {0.342,0.1,0.907},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat02Attack =  --UC_snd_Utoc_02
        {
            pos       = {0.618,0.1,0.907},
            rows      = 1,
            width     = 980,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat02Range =  --UC_snd_Dostrel_02
        {
            pos       = {0.916,0.1,0.907},
            rows      = 1,
            width     = 1420,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat02Defense =  --UC_snd_OZ_02
        {
            pos       = {1.202,0.1,0.907},
            rows      = 1,
            width     = 950,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat02Properties =   --UC_snd_Vlastnosti_02
        {
            pos       = {1.6052,0.1,0.907},
            rows      = 2,
            width     = 2540,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat02Weight =  --UC_snd_Vaha_02
        {
            pos       = {2.005,0.1,0.907},
            rows      = 1,
            width     = 960,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
--------------------------------------------------
        rangedCombat03Name =  --UC_snd_zbran_03
        {
            pos       = {-0.4335,0.1,1.103},
            rows      = 2,
            width     = 3080,
            font_size = 350,
            label     = "střelná zbraň 03",
            value     = "",
            alignment = 3,
        },
        rangedCombat03Location =  --UC_snd_kde_03
        {
            pos       = {0.048,0.1,1.103},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "batoh",
            value     = "",
            alignment = 3,
        },
        rangedCombat03AttackNumber =  --UC_snd_UC_03
        {
            pos       = {0.342,0.1,1.103},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat03Attack =  --UC_snd_Utoc_03
        {
            pos       = {0.618,0.1,1.103},
            rows      = 1,
            width     = 980,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat03Range =  --UC_snd_Dostrel_03
        {
            pos       = {0.916,0.1,1.103},
            rows      = 1,
            width     = 1420,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat03Defense =  --UC_snd_OZ_03
        {
            pos       = {1.202,0.1,1.103},
            rows      = 1,
            width     = 950,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat03Properties =   --UC_snd_Vlastnosti_03
        {
            pos       = {1.6052,0.1,1.103},
            rows      = 2,
            width     = 2540,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat03Weight =  --UC_snd_Vaha_03
        {
            pos       = {2.005,0.1,1.103},
            rows      = 1,
            width     = 960,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
--------------------------------------------------
        rangedCombat04Name =  --UC_snd_zbran_04
        {
            pos       = {-0.4335,0.1,1.299},
            rows      = 2,
            width     = 3080,
            font_size = 350,
            label     = "střelná zbraň 04",
            value     = "",
            alignment = 3,
        },
        rangedCombat04Location =  --UC_snd_kde_04
        {
            pos       = {0.048,0.1,1.299},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "batoh",
            value     = "",
            alignment = 3,
        },
        rangedCombat04AttackNumber =  --UC_snd_UC_04
        {
            pos       = {0.342,0.1,1.299},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat04Attack =  --UC_snd_Utoc_04
        {
            pos       = {0.618,0.1,1.299},
            rows      = 1,
            width     = 980,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat04Range =  --UC_snd_Dostrel_04
        {
            pos       = {0.916,0.1,1.299},
            rows      = 1,
            width     = 1420,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat04Defense =  --UC_snd_OZ_04
        {
            pos       = {1.202,0.1,1.299},
            rows      = 1,
            width     = 950,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat04Properties =   --UC_snd_Vlastnosti_04
        {
            pos       = {1.6052,0.1,1.299},
            rows      = 2,
            width     = 2540,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat04Weight =  --UC_snd_Vaha_04
        {
            pos       = {2.005,0.1,1.299},
            rows      = 1,
            width     = 960,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
--------------------------------------------------
        rangedCombat05Name =  --UC_snd_zbran_05
        {
            pos       = {-0.4335,0.1,1.495},
            rows      = 2,
            width     = 3080,
            font_size = 350,
            label     = "zbraň 05 - jestli ti to nestačí, tak jsi Chip",
            value     = "",
            alignment = 3,
        },
        rangedCombat05Location =  --UC_snd_kde_05
        {
            pos       = {0.048,0.1,1.495},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "batoh",
            value     = "",
            alignment = 3,
        },
        rangedCombat05AttackNumber =  --UC_snd_UC_05
        {
            pos       = {0.342,0.1,1.495},
            rows      = 2,
            width     = 1250,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat05Attack =  --UC_snd_Utoc_05
        {
            pos       = {0.618,0.1,1.495},
            rows      = 1,
            width     = 980,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat05Range =  --UC_snd_Dostrel_05
        {
            pos       = {0.916,0.1,1.495},
            rows      = 1,
            width     = 1420,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat05Defense =  --UC_snd_OZ_05
        {
            pos       = {1.202,0.1,1.495},
            rows      = 1,
            width     = 950,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat05Properties =   --UC_snd_Vlastnosti_05
        {
            pos       = {1.6052,0.1,1.495},
            rows      = 2,
            width     = 2540,
            font_size = 350,
            label     = "-",
            value     = "",
            alignment = 3,
        },
        rangedCombat05Weight =  --UC_snd_Vaha_05
        {
            pos       = {2.005,0.1,1.495},
            rows      = 1,
            width     = 960,
            font_size = 400,
            label     = "-",
            value     = "",
            alignment = 3,
        },

        --End of textboxes
    },
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
    if saved_data ~= "" then
        local loaded_data = JSON.decode(saved_data)
        ref_buttonData = loaded_data
    else
        ref_buttonData = defaultButtonData
    end

    --reset FIMXE run on data structure change
    --ref_buttonData = defaultButtonData

    spawnedButtonCount = 0
    createCheckboxes()
    createCounters()
    createTextboxes()
end

-- calls to number with failsafe 0
function toNumber0(value) 
    local number = tonumber(value)
    if number == nil then
        return 0    
    end
    return number
end    

-- set all load checkboxes to false
function resetLoadCheckboxes()
    setCheckbox('noLoad', false)
    setCheckbox('lightLoad', false)
    setCheckbox('mediumLoad', false)
    setCheckbox('heavyLoad', false)
end

-- checks if load is over the load value
function isLoadOver(load, thresholdValue)
    log('testing load ' .. load .. ' over ' .. thresholdValue)
    return load > toNumber0(thresholdValue)
end 

-- recalculate all weight
function recalculateWeight()
    local o = ref_buttonData.textbox
    local totalWeight = toNumber0(o.closeCombat01Weight.value) + toNumber0(o.closeCombat02Weight.value) + toNumber0(o.closeCombat03Weight.value) + toNumber0(o.closeCombat04Weight.value) + toNumber0(o.closeCombat05Weight.value) + 
            toNumber0(o.rangedCombat01Weight.value) + toNumber0(o.rangedCombat02Weight.value) + toNumber0(o.rangedCombat03Weight.value) + toNumber0(o.rangedCombat04Weight.value) + toNumber0(o.rangedCombat05Weight.value);

    resetLoadCheckboxes() 
    if ( isLoadOver(totalWeight, ref_buttonData.textbox.heavyLoadMovement.value) ) then
       setCheckbox('heavyLoad', true)
    elseif ( isLoadOver(totalWeight, ref_buttonData.textbox.mediumLoadMovement.value) ) then 
        setCheckbox('mediumLoad', true)
    elseif ( isLoadOver(totalWeight, ref_buttonData.textbox.lightLoadMovement.value) ) then
        setCheckbox('lightLoad', true)
    else 
        setCheckbox('noLoad', true)
    end 

    log("total weight " .. totalWeight);
end

-- event listener for a textbox update
function onTextboxUpdate(key)
    log("textbox update " .. key)
    if ( string.match(key, 'Weight') ) then 
        recalculateWeight()
    end
end

--Helper bruteforce function to get map index
function getIndex(object, key, offset)
    local index = 0
    for k in pairs(object) do
        if ( key == k ) then
            return index + offset
        end
        index = index + 1
    end 
end

-- sets checkbox to desired state
function setCheckbox(key, newState)
    local char
    if newState then 
        char = string.char(10008)
    else 
        char = ""
    end

    ref_buttonData.checkbox[key].state = newState
    i = getIndex(ref_buttonData.checkbox, key, checkboxButtonStartIndex)
    self.editButton({index=i, label=char})
    updateSave()
end 

--Checks or unchecks the given box
function click_checkbox(key)
    local state = ref_buttonData.checkbox[key].state;
    setCheckbox(key, state) 
end

--Applies value to given counter display
function click_counter(key, amount)
    ref_buttonData.counter[key].value = ref_buttonData.counter[key].value + amount
    i = counterButtonIndex
[key]
    self.editButton({index=i, label=ref_buttonData.counter[key].value})
    updateSave()
end

--Updates saved value for given text box
function click_textbox(key, value, selected)
    log('clicking textbox ' .. key)
    if selected == false then
        ref_buttonData.textbox[key].value = value
        onTextboxUpdate(key)
        updateSave()
    end
end

--Dud function for if you have a background on a counter
function click_none() end

--Makes counters
function createCounter(data, key)
    --Sets up button offset
    log('counter offset ' .. key .. ' is ' .. spawnedButtonCount)
    counterButtonIndex
[key] = spawnedButtonCount
    --Sets up label
    local label = data.value
    --Sets height/width for display
    local size = data.size
    if data.hideBG == true then size = 0 end
    --Creates button and counts it
    self.createButton({
        label=label, click_function="click_none", function_owner=self,
        position=data.pos, height=size, width=size,
        font_size=data.size, scale=buttonScale,
        color=buttonColor, font_color=buttonFontColor
    })
    spawnedButtonCount = spawnedButtonCount + 1

    --Sets up add 1
    local funcName = "counterAdd"..key
    local func = function() click_counter(key, 1) end
    self.setVar(funcName, func)
    --Sets up label
    local label = "+"
    --Sets up position
    local offsetDistance = (data.size/2 + data.size/4) * (buttonScale[1] * 0.002)
    local pos = {data.pos[1] + offsetDistance, data.pos[2], data.pos[3]}
    --Sets up size
    local size = data.size / 2
    --Creates button and counts it
    self.createButton({
        label=label, click_function=funcName, function_owner=self,
        position=pos, height=size, width=size,
        font_size=size, scale=buttonScale,
        color=buttonColor, font_color=buttonFontColor
    })
    spawnedButtonCount = spawnedButtonCount + 1

    --Sets up subtract 1
    local funcName = "counterSub"..key
    local func = function() click_counter(key, -1) end
    self.setVar(funcName, func)
    --Sets up label
    local label = "-"
    --Set up position
    local pos = {data.pos[1] - offsetDistance, data.pos[2], data.pos[3]}
    --Creates button and counts it
    self.createButton({
        label=label, click_function=funcName, function_owner=self,
        position=pos, height=size, width=size,
        font_size=size, scale=buttonScale,
        color=buttonColor, font_color=buttonFontColor
    })
    spawnedButtonCount = spawnedButtonCount + 1
end

-- creates single checkbox
function createCheckbox(data, key)
--Sets up reference function
    
    local funcName = "checkbox"..key
    local func = function() click_checkbox(key) end
    self.setVar(funcName, func)
    --Sets up label
    local label = ""
    if data.state==true then label=string.char(10008) end
    --Creates button and counts it
    self.createButton({
        label=label, click_function=funcName, function_owner=self,
        position=data.pos, height=data.size, width=data.size,
        font_size=data.size, scale=buttonScale,
        color=buttonColor, font_color=buttonFontColor
    })
    spawnedButtonCount = spawnedButtonCount + 1
end

-- creates single textbox
function createTextbox(data, key)
    --Sets up reference function
    local funcName = "textbox"..key
    local func = function(_,_,val,sel) click_textbox(key, val, sel) end
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

function createCounters()
    local object = ref_buttonData.counter
    
    for key in pairs(object) do
        createCounter(object[key], key)
    end
end 

--Creates every textbox
function createTextboxes()
    local object = ref_buttonData.textbox
    
    for key in pairs(object) do
        createTextbox(object[key], key)
    end
end

--Makes checkboxes
function createCheckboxes()
    --sets up checkbox start offset
    checkboxButtonStartIndex = spawnedButtonCount

    local object = ref_buttonData.checkbox
    
    for key in pairs(object) do
        createCheckbox(object[key], key)
    end 
end