module Model.Types where

import Codec.Picture
import Codec.Picture.Repa
import Data.Array.Repa

type HmaxImage = Img RGBA

data Cell = SimpleCell  Tuning
          | ComplexCell [Cell]
          deriving (Eq, Show)

type Tuning = HmaxImage

newtype Score = Score { unScore :: Double }
