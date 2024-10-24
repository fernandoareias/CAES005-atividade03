module LuciansLusciousLasagna exposing (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes)

-- Define the expectedMinutesInOven constant
expectedMinutesInOven : Int
expectedMinutesInOven =
    40

-- Define the preparationTimeInMinutes function
preparationTimeInMinutes : Int -> Int
preparationTimeInMinutes layers =
    layers * 2

-- Define the elapsedTimeInMinutes function
elapsedTimeInMinutes : Int -> Int -> Int
elapsedTimeInMinutes layers minutesInOven =
    preparationTimeInMinutes layers + minutesInOven