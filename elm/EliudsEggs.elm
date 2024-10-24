module EliudsEggs exposing (eggCount)

import Basics exposing (remainderBy)

eggCount : Int -> Int
eggCount n =
    let
        countOnes bits remaining =
            if remaining == 0 then
                bits
            else
                let
                    currentBit = remainderBy 2 remaining
                    updatedBits = bits + currentBit
                in
                countOnes updatedBits (remaining // 2)
    in
    countOnes 0 n