module Model.Types where

import Codec.Picture
import Codec.Picture.Repa
import Data.Array.Repa

type Layer = [Cell]

type HmaxImage = Array D DIM3 Double

data Cell = SimpleCell  Tuning
          | ComplexCell [Cell]

type Tuning = HmaxImage

newtype Score = Score { unScore :: Double }
              deriving (Eq, Show)
