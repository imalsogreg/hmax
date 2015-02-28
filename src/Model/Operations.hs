{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}

module Model.Operations where

import           GHC.Word
import           Codec.Picture.Repa
import           Data.Array.Repa (Z, (:.))
import qualified Data.Array.Repa as R
import qualified Data.Array.Repa.Algorithms.Convolve as Conv
  
import Model.Types



doubleImage :: R.Array R.D R.DIM3 Word8 -> HmaxImage
doubleImage = R.map fromIntegral
