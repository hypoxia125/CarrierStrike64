class CS
{
    class client
    {
        file = "functions\client";
        class addBoatTeleport {};
        class addItemsBasedWeather {};
        class addTraits {};
        class carrierStatsUpdate {};
        class createCameras {};
        class disableCustomChannels {};
        class disableDefaultChannels {};
        class explosionProtection {};
        class findNearestRespawn {};
        class findSpawnLocation {};
        class parachuteAddAction {};
        class parachute {};
        class radioChannelAdd {};
        class siloHudUpdate {};
    };
    class server
    {
        file = "functions\server";
        class addSiloRespawnPosition {};
        class carrierDeadScene {};
        class carrierVehicleRespawns {};
        class changeSiloFlag {};
        class createSiloAction {};
        class gameEnd {};
        class handleCarrierDamage {};
        class launchCycle {};
        class leaderCyclePool {};
        class leaderRespawnHandler {};
        class missileEventHandler {};
        class removeSiloRespawnPosition {};
        class siloActionCompleted {};
        class siloActionStarted {};
        class siloFire {};
        class siloVehicleRespawns {};
        class vehicleDefaultTextures {};
    };
    class param
    {
        file = "param";
        class paramMissileValue {};
        class paramRespawnTime {};
        class paramSiloCycleTime {};
        class paramVehicleSpawnTime {};
    };
};