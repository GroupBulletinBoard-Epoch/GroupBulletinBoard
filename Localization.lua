local _, GBB = GroupBulletinBoard_Loader.Main()

GBB.locales = {
  enGB = {
    ["lfg_channel"] = "LookingForGroup", -- must be the default chat-name!
    ["world_channel"] = "",         -- must be the default chat-name!
    ["GuildChannel"] = "Guild Channel",

    ["msgNbRequest"] = "%d request(s) - click to whisper - shift+click to 'who' - ctrl+click to 'invite'",
    ["msgRequestHere"] = "Enter your LFG/LFM message here.",
    ["msgStartWho"] = "request who on %s...",
    ["msgNewRequest"] = "New request by %s for dungeon %s.",
    ["msgInit"] = "GroupBulletinBoard %s is loaded. Type '/gbb help' to get started.",
    ["msgTimeFormat"] = "%dm %02ds",
    ["msgLevelRange"] = "(Level %d - %d)",
    ["msgLevelRangeShort"] = "(%d-%d)",
    ["msgTotalTime"] = "Total time %s",
    ["msgLastTime"] = "Last update %s",
    ["msgLocalRestart"] = "The setting is not transferred until after a restart (/reload)",
    ["msgCustomList"] = "Enter your own unique search patterns here. If blank, patterns are displayed as a grayed out example.",
    ["msgAddNote"] = "%s note",
    ["msgLastSeen"] = "Last Seen:",
    ["heroicAbr"] = "H",
    ["normalAbr"] = "N",
    ["raidAbr"] = "R",
    ["msgFontSize"] = "Font Size (Requires /reload)",

    -- option panel

    ["HeaderSettings"] = "Settings",
    ["PanelFilter"] = "Vanilla Filter",
    ["TBCPanelFilter"] = "Filter",
    ["HeaderTags"] = "Search patterns",
    ["HeaderTagsCustom"] = "Custom search patterns",
    ["PanelTags"] = "Search patterns",
    ["PanelLocales"] = "Localization",
    ["HeaderChannel"] = "Channel",
    ["PanelAbout"] = "About",
    ["HeaderSlashCommand"] = "Slash Commands",
    ["HeaderCredits"] = "Credits",
    ["HeaderInfo"] = "Information",
    ["HeaderUsage"] = "Usage",
    ["HeaderDungeon"] = "Dungeon",

    ["Cboxshowminimapbutton"] = "Show minimap button",
    ["CboxLockMinimapButton"] = "Lock minimap button position",
    ["CboxLockMinimapButtonDistance"] = "Minimize minimap button distance",
    ["CboxShowTotalTime"] = "Show total time instead last update",
    ["CboxOnDebug"] = "Show debug information",
    ["CboxNotifyChat"] = "On new request make a chat notification",
    ["CboxNotifySound"] = "On new request make a sound notification",
    ["CboxCharFilterLevel"] = "Filter on recommended level ranges",
    ["CboxColorOnLevel"] = "Highlight dungeons on recommended level ranges",
    ["CboxTagsEnglish"] = "English",
    ["CboxTagsCustom"] = "Custom",
    ["CboxRemoveRaidSymbols"] = "Remove raid symbols like {rt1}",
    ["CboxFilterNonAsciiMessages"] = "Filter messages that contain non-ascii characters",
    ["CboxOrderNewTop"] = "Sort new requests above",
    ["CboxColorByClass"] = "Colorize name by class",
    ["CboxShowClassIcon"] = "and show icon",
    ["CboxUseAllInLFG"] = "Show all messages from lfg-channel",
    ["CboxEscapeQuit"] = "ESC close main window (Restart needed)",
    ["CboxEnableShowOnly"] = "Show a fixed number of requests per dungeon",
    ["CboxDisplayLFG"] = "Display LFG Bar (requires /reload)",
    ["CboxChatStyle"] = "Use more chat style design",
    ["CboxCharDontFilterOwn"] = "Don't filter own request",
    ["CboxCharHeroicOnly"] = "Heroic only filter",
    ["CboxCharNormalOnly"] = "Normal only filter",
    ["CboxDontTrunicate"] = "Don't truncate message",
    ["CboxOneLineNotification"] = "Small one line chat notification",
    ["CboxCompactStyle"] = "Use two line design",
    ["CboxEnableGroup"] = "Remember past group members",
    ["CboxEnableGuild"] = "Add guild in player tooltip",
    ["CboxCombineSubDungeons"] = "Combine sub-dungeons like Dire Maul (only new request)",
    ["CboxAdditionalInfo"] = "Add more info to chat on /who and when somebody comes online",

    ["CboxNotfiyInnone"] = "Enable in open world",
    ["CboxNotfiyInpvp"] = "Enable in battleground",
    ["CboxNotfiyInparty"] = "Enable in dungeon",
    ["CboxNotfiyInraid"] = "Enable in raid dungeon",

    ["EditShowOnlyNb"] = "Number of requests:",
    ["EditTimeOut"] = "Time before removing (sec):",
    ["EditCustom_Search"] = "Search words (lfg, lfm,...)",
    ["EditCustom_Bad"] = "Blacklist words",
    ["EditCustom_Suffix"] = "Suffixes",
    ["EditCustom_Heroic"] = "Heroic",

    ["BtnUnselectAll"] = "Unselect all",
    ["BtnSelectAll"] = "Select all",

    ["BtnWhisper"] = "Whisper %s",
    ["BtnInvite"] = "Invite %s",
    ["BtnWho"] = "Who %s",
    ["BtnIgnore"] = "Ignore %s",
    ["BtnFold"] = "Fold",
    ["BtnFoldAll"] = "Fold all",
    ["BtnUnFoldAll"] = "Unfold all",
    ["BtnCancel"] = "Cancel",
    ["BtnEntryColor"] = "Message",
    ["BtnHeroicDungeonColor"] = "Heroic dungeon tooltip",
    ["BtnNormalDungeonColor"] = "Normal dungeon tooltip",
    ["BtnTimeColor"] = "Time",
    ["BtnNotifyColor"] = "Notification message",
    ["BtnPlayerNoteColor"] = "Player note",
    ["BtnColorGuild"] = "Guild text",
    ["BtnPostMsg"] = "Post",

    ["SlashReset"] = "Reset main window position",
    ["SlashConfig"] = "Open configuration",
    ["SlashDefault"] = "open main window",
    ["SlashAbout"] = "open about",
    ["SlashChatOrganizer"] = "Creates a new chat tab if one doesn't already exist, named \"LFG\" with all channels subscribed. Removes LFG heavy spam channels from default chat tab",

    ["TabRequest"] = "Requests",
    ["TabGroup"] = "Members",

    ["AboutUsage"] = "GBB searches the chat messages for dungeon requests in the background. To whisper a person, simply click on the entry with the left mouse button. For a '/who' a shift + left click is enough. The dungeon list can be filtered in the settings. You can also fold this by left-clicking on the dungeon name.|nOld entries are filtered out after 150 seconds.",

    ["AboutSlashCommand"] = "<value> can be true, 1, enable, false, 0, disable. If <value> is omitted, the current status switches.",


    ["AboutInfo"] = "GBB provides an overview of the endless requests in the chat channels. It detects all requests to the classic dungeons, sorts them and presents them clearly way. Numerous filtering options reduce the gigantic number to exactly the dungeons that interest you. And if that's not enough, GBB will let you know about any new request via a sound or chat notification. And finally, GBB can post your request repeatedly.",
    ["AboutCredits"] = "Original by GPI / Erytheia-Razorfen.",
    ["AboutCreditsClassic"] = "Classic version by Vyscî-Whitemane.",
	["AboutPort"] = "Ported to WotLK by fondlez"
  },

  deDE = {
  },
  esMX = {
  },
  frFR = {
  },
  ruRU = {
  },
  zhTW = {
  },

}

GBB.locales.esES = GBB.locales.esMX
GBB.locales.enUS = GBB.locales.enGB

function GBB.LocalizationInit()
  local locale = GetLocale()
  local l = GBB.locales[locale] or {}

  if GroupBulletinBoardDB and GroupBulletinBoardDB.CustomLocales and type(GroupBulletinBoardDB.CustomLocales) == "table" then
    for key, value in pairs(GroupBulletinBoardDB.CustomLocales) do
      if value ~= nil and value ~= "" then
        l[key .. "_org"] = l[key] or GBB.locales.enGB[key]
        l[key] = value
      end
    end
  end

  -- Needed to not cause overflow when using english
  if (locale ~= "enGB" and locale ~= "enUS") then
    setmetatable(l, {
      __index = function(t, k)
        if GBB.l and GBB.l[k] then
          return GBB.l[k]
        elseif GBB.locales.enGB and GBB.locales.enGB[k] then
          return GBB.locales.enGB[k]
        else
          return "[" .. k .. "]"
        end
      end
    })
  end
  return l
end
