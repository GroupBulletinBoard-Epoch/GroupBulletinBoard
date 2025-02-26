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
  deDE = "gruppe",
  ruRU = "группран фарм фарма фармить",
  frFR = "groupe",
  zhTW = "",
} )

GBB.searchTagsLoc = langSplit( {
  enGB =
  "group lfg lf lfm lf1m lf2m lf3m lf4m lf5m lftank lfheal lfhealer lfdps lfdd dd heal healer tank dps druid dudu huntard hunter mage pala pally paladin priest rogue rouge shaman lock warlock warrior elite quest elitequest elitequests",

  deDE =
  "gesucht suche suchen sucht such gruppe grp sfg sfm druide dudu jäger magier priester warri schurke rschami schamane hexer hexenmeister hm krieger heiler xheiler go run",

  ruRU = "лфг ищет ищу нид нужны лфм лф2м ищем пати похилю лф танк хил нужен дд рдд мдд ршам рога вар прист армс пал",
  frFR = "groupe cherche chasseur druide mage paladin pretre voleur chaman quete",

  zhTW = "缺 來 找 徵 坦 補 DD 輸出 戰 聖 薩 獵 德 賊 法 牧 術",
} )

GBB.badTagsLoc = langSplit( {
  enGB = "layer boost",
  deDE = "fc",
  ruRU = "гильдию гильдия слой",
  frFR = "",
  zhTW = "影布 回流",
} )

GBB.heroicTagsLoc = langSplit( {
  enGB = "h hc heroic hero",
  deDE = "h hc heroic hero",
  ruRU = "гер героик",
  frFR = "h hc heroic hm hero",
  zhTW = "h 英雄",
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
    [ "RFC" ]    = "怒焰裂谷 怒驗 怒焰",
    [ "DM" ]     = "死亡礦坑 死況 死礦",
    [ "WC" ]     = "哀嚎洞穴 哀號 哀嚎",
    [ "SFK" ]    = "影牙城堡 影牙",
    -- ["STOCKS"] = 	"" ,
    [ "BFD" ]    = "黑暗深淵",
    [ "GNOMER" ] = "諾姆瑞根",
    [ "RFK" ]    = "剃刀沼澤",
    [ "SM2" ]    = "血色",
    [ "GY" ]     = "血色墓地",
    [ "LIB" ]    = "血色圖書館",
    [ "ARMS" ]   = "軍械",
    [ "CATH" ]   = "教堂",
    [ "RFD" ]    = "剃刀高地",
    [ "ULDA" ]   = "奧達曼",
    [ "ZF" ]     = "ZF 組爾法 祖爾法",
    [ "MARA" ]   = "馬拉 瑪拉",
    [ "ST" ]     = "神廟 阿塔哈卡",
    [ "BRD" ]    = "黑深 深淵",
    [ "DM2" ]    = "厄運 惡運 噩運",
    [ "DME" ]    = "厄東 惡東 噩東",
    [ "DMN" ]    = "厄北 惡北 噩北 完美厄運 完美惡運 完美噩運",
    [ "DMW" ]    = "厄西 惡西 噩西",
    [ "STRAT" ]  = "斯坦",
    [ "SCHOLO" ] = "通靈",
    [ "LBRS" ]   = "黑下 黑石塔下",
    [ "UBRS" ]   = "黑上 黑石塔上",
    [ "OHF" ]    = "索爾 丘陵",
    [ "MECHA" ]  = "麥克",
    [ "BM" ]     = "18波 黑色沼澤 黑沼 沼澤",
    [ "MGT" ]    = "博學",
    [ "BOTA" ]   = "波塔 波卡",
    [ "KARA" ]   = "卡拉 卡啦",
    [ "GRUULS" ] = "戈魯 魯爾 戈乳 哥魯 哥乳",
    [ "MAGS" ]   = "馬肥 瑪色 馬瑟 瑪瑟",
    [ "SSC" ]    = "毒蛇",
    [ "ZA" ]     = "ZA 阿曼",
    [ "EYE" ]    = "風暴 要塞 鳳凰",
    [ "HYJAL" ]  = "海珊 海山 海加爾",
    [ "BT" ]     = "黑暗神廟 黑廟",
    [ "ONY" ]    = "黑妹 龍妹 奧妮 ONYX",
    [ "MC" ]     = "MC 熔火 螺絲",
    [ "ZG" ]     = "ZG 祖爾格 組爾格 龍虎",
    [ "AQ20" ]   = "RAQ AQ20 廢墟",
    [ "BWL" ]    = "BWL 黑翼",
    [ "AQ40" ]   = "TAQ AQ40 安琪拉 安其拉",
    [ "NAXX" ]   = "NAXXX 老克 納克",
    [ "WSG" ]    = "戰哥 戰歌",
    [ "AB" ]     = "阿拉溪 阿拉希 阿拉西",
    [ "AV" ]     = "奧山 奧特蘭",
    [ "EOTS" ]   = "暴風眼 暴風之眼",
    [ "ARENA" ]  = "競技 22 33 3v3 5v5 2v2 2vs2 3vs3 5vs5",
    [ "TRADE" ]  = "買 賣 售 收 代工 出售 附魔 COD", --hlink
  } ),
}

GBB.dungeonTagsLoc.enGB[ "DEADMINES" ] = { "dm" }

GBB.dungeonSecondTags = {
  [ "DEADMINES" ] = { "DM", "-DMW", "-DME", "-DMN" },
  [ "SM2" ] = { "GY", "LIB", "ARMS", "CATH" },
  [ "DM2" ] = { "DMW", "DME", "DMN", "-DM" },
}
