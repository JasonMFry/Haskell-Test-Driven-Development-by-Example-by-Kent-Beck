-- file Spec.hs
import Test.Hspec (describe, hspec, it, shouldBe)

main :: IO ()
main = hspec $ do
  describe "test multiplication" $ do
    it "multiplies dollars" $ do
      let fiveBucks = Dollar 5
      let tenBucks = times fiveBucks $ Dollar 2
      Dollar 10 `shouldBe` tenBucks

newtype Dollar = Dollar Int
  deriving (Eq, Show)

times :: Dollar -> Dollar -> Dollar
times (Dollar a) (Dollar b) = Dollar (a * b)
