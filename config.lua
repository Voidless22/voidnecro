local config = {}


config.General = {
    Autoassist = true,
    AssistPct = 99,
    Mode = 1,
    Tank = false,
    AssistRange = 60,
    CampRadius = 60,
    MedAt = 20,
    DoneMedding = 100,
    ChaseDistance = 10,
    BurnAlways = false,
    DoMelee = true,

    screenNames = {
        "Auto Assist", "Assist Pct", "Mode", "Tank", "Assist Range", "Camp Radius","Med At %", "Med to %", "Chase Distance", "Burn Always", "Melee"
    }
}

config.Damage = {
    usescent = true,
    scentgem = '',
    manaMin = 40,
    -- Need to plug in
    stopdotsat = 30,
    mindotsforburns = 2
}

config.CC = {
    usecc = false,
    minmobsforcc = 2,
    minmobsforaoecc = 3,
    mincchp = 99,
    usemez = false,
    meztype = 'living',
    useroot = true,
    rootgem = '',
    usepunt = true,
    useaoecc = true,
    useignitebones = true,
    ignitegem = '', 
}




return config
