local _, GBB = GroupBulletinBoard_Loader.Main()

-- IMPORTANT, everything must be in low-case and with no space!

local function langSplit( source )
  local ret = {}
  for lang, pat in pairs( source ) do
    if pat ~= "-" then
      ret[ lang ] = GBB.Tool.Split( pat, " " )
    end
  end
  return ret
end

GBB.suffixTagsLoc = langSplit( {
  enGB = "s group run runs",
  deDE = "",
  ruRU = "",
  frFR = "",
  zhTW = "",
} )

GBB.searchTagsLoc = langSplit( {
  enGB =
  "group lfg lf lfm lf1m lf2m lf3m lf4m lf5m lftank lfheal lfhealer lfdps lfdd dd heal healer tank dps druid dudu huntard hunter mage pala pally paladin priest rogue rouge shaman lock warlock warrior elite quest elitequest elitequests",
  deDE = "",
  ruRU = "",
  frFR = "",
  zhTW = "",
} )

GBB.badTagsLoc = langSplit( {
  enGB = "layer boost",
  deDE = "",
  ruRU = "",
  frFR = "",
  zhTW = "",
} )

GBB.heroicTagsLoc = langSplit( {
  enGB = "h hc heroic hero",
  deDE = "",
  ruRU = "",
  frFR = "",
  zhTW = "",
} )



GBB.dungeonTagsLoc = {
  enGB = langSplit( {
    [ "RFC" ]    = "rfc ragefire chasm",
    [ "DM" ]     = "dm deadmines dead mines mine",
    [ "WC" ]     = "wc wailing caverns",
    [ "SFK" ]    = "sfk shadowfang",
    [ "STOCKS" ] = "stk stock stockade stockades",
    [ "BFD" ]    = "bfd blackfathom fathom",
    [ "GNOMER" ] = "gnomer gnomeregan",
    [ "RFK" ]    = "rfk kraul",
    [ "SM2" ]    = "sm scarlet monastery",
    [ "GY" ]     = "gy graveyard",
    [ "LIB" ]    = "lib library",
    [ "ARMS" ]   = "armory armoury arms",
    [ "CATH" ]   = "cath cathedral",
    [ "RFD" ]    = "rfd downs",
    [ "ULDA" ]   = "uld ulda uldaman",
    [ "ZF" ]     = "zf zul farrak zul'farrak zulfarrak zulfarak",
    [ "MARA" ]   = "mara maraudon",
    [ "ST" ]     = "st sunken atal temple",
    [ "BRD" ]    = "brd",
    [ "DM2" ]    = "dire maul diremaul",
    [ "DME" ]    = "dme dmeast east",
    [ "DMN" ]    = "dmn dmnorth north tribute",
    [ "DMW" ]    = "dmw dmwest west",
    [ "STRAT" ]  = "stratlive live living stratUD ud baron stratholme strath strat",
    [ "SCHOLO" ] = "scholomance scholo",
    [ "LBRS" ]   = "lower lbrs",
    [ "UBRS" ]   = "upper ubrs",
    [ "OHF" ]    = "ohf durnholde hillsbrad",
    [ "MECHA" ]  = "mecha mech mechanar",
    [ "BM" ]     = "morass bm black",
    [ "MGT" ]    = "mgt terrace magisters magister",
    [ "BOTA" ]   = "botanica bota",
    [ "KARA" ]   = "kara karazhan",
    [ "GRUULS" ] = "gl gruul gruuls gruul's",
    [ "MAGS" ]   = "mag mags magtheridon magtheridon's",
    [ "SSC" ]    = "ssc serpentshrine",
    [ "ZA" ]     = "za zulaman zul'aman",
    [ "EYE" ]    = "eye tk",
    [ "HYJAL" ]  = "hyjal mh",
    [ "BT" ]     = "bt",
    [ "ONY" ]    = "onyxia ony onaxxia",
    [ "MC" ]     = "molten core mc",
    [ "ZG" ]     = "zg gurub zul'gurub zulgurub",
    [ "AQ20" ]   = "aq20",
    [ "BWL" ]    = "blackwing bwl",
    [ "AQ40" ]   = "aq40",
    [ "NAXX" ]   = "naxxramas naxx",
    [ "WSG" ]    = "wsg",
    [ "AB" ]     = "ab",
    [ "AV" ]     = "av",
    [ "EOTS" ]   = "eots",
    [ "ARENA" ]  = "2s 3s 5s 3v3 5v5 2v2 2vs2 3vs3 5vs5",
    [ "BREW" ]   = "brewfest coren direbrew",
    [ "HOLLOW" ] = "headless horseman",
    [ "TRADE" ]  = "buy buying sell selling wts wtb hitem henchant htrade enchanter", --hlink
  } ),

  zhTW = langSplit( {

    [ "OHF" ]    = " ",
    [ "MECHA" ]  = " ",
    [ "BM" ]     = " ",
    [ "MGT" ]    = " ",
    [ "BOTA" ]   = " ",
    [ "KARA" ]   = " ",
    [ "GRUULS" ] = " ",
    [ "MAGS" ]   = " ",
    [ "SSC" ]    = " ",
    [ "ZA" ]     = " ",
    [ "EYE" ]    = " ",
    [ "HYJAL" ]  = " ",
    [ "BT" ]     = " ",
    [ "ONY" ]    = " ",
    [ "MC" ]     = " ",
    [ "ZG" ]     = " ",
    [ "AQ20" ]   = " ",
    [ "BWL" ]    = " ",
    [ "AQ40" ]   = " ",
    [ "NAXX" ]   = " ",
    [ "WSG" ]    = " ",
    [ "AB" ]     = " ",
    [ "AV" ]     = " ",
    [ "EOTS" ]   = " ",
    [ "ARENA" ]  = " ",
    [ "TRADE" ]  = " ", --hlink
  } ),
}

GBB.dungeonTagsLoc.enGB[ "DEADMINES" ] = { "dm" }

GBB.dungeonSecondTags = {
  [ "DEADMINES" ] = { "DM", "-DMW", "-DME", "-DMN" },
  [ "SM2" ] = { "GY", "LIB", "ARMS", "CATH" },
  [ "DM2" ] = { "DMW", "DME", "DMN", "-DM" },
}
