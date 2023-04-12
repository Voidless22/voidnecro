local config = {}


config.General = {
    mode = 'chase',
    tank = false,
    autoassist = true,
    campradius = 60,
    assistpct = 99,
    chasedistance = 10,
    burnalways = false,
}

config.Damage = {
    domelee = true,
    usescent = true,
    mindmgspellmanapct = 10,
    -- Need to plug in
    stopdotsat = 30,
    mindotsforburns = 2,
    minswarmpetmanapct = 10,
    minbloodprocmanapct = 10,
    usesnareaa = true,
    useeradicateaa = true,
    waitforallburns = true
}

config.CC = {
    usecc = false,
    minmobsforcc = 2,
    minmobsforaoecc = 3,
    mincchp = 99,
    usemez = false,
    meztype = 'living',
    useroot = true,
    usepunt = true,
    useaoecc = true,
    useignitebones = true,
}

config.Pet = {
usemendcompanion = true,
usepetaegisaa = true,
usefury = true,
usefurywhen = 'on cooldown',
usefortification = true,
usefortificationwhen = 'on cooldown',
uselongpetrune = false,
longrunegem = '',
useshortpetrune = false,
shortrunegem = '',
usepetheal = false,
pethealgem = '',
pethealpct = 60,

}

config.Mana = {
    usedeathbloom = true,
    usedeathbloomwhen = 'on cooldown',
    usebloodmagic = true,
    usebloodmagicwhen = 'on cooldown',
    deathbloommanapct = 40,
    bloodmagicmanapct = 10,
    
}

config.Feign = {
    usefeign = true,
    aggrofdpct = 80,
    usespellfd = false,
    spellfdpct = 80,
    spellfdgem = '',
}


return config
