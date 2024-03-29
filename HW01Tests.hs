-- CIS 194, Spring 2015
--
-- Test cases for HW 01

module HW01Tests where

import HW01
import Testing

-- Exercise 1 -----------------------------------------

testLastDigit :: (Integer, Integer) -> Bool
testLastDigit (n, d) = lastDigit n == d

testDropLastDigit :: (Integer, Integer) -> Bool
testDropLastDigit (n, d) = dropLastDigit n == d

ex1Tests :: [Test]
ex1Tests = [ Test "lastDigit test" testLastDigit
             [(123, 3), (1234, 4), (5, 5), (10, 0), (0, 0)]
           , Test "dropLastDigit test" testDropLastDigit
             [(123, 12), (1234, 123), (5, 0), (10, 1), (0,0)]
           ]

-- Exercise 2 -----------------------------------------

check :: Eq b => (a -> b) -> (a,b) -> Bool
check f (input, expected) = f input == expected

ex2Tests :: [Test]
ex2Tests =
  [
    Test "toRevDigits" (check toRevDigits)
        [ (1234, [4,3,2,1]), (0, []), (-17, []) ]
  ]

-- Exercise 3 -----------------------------------------

ex3Tests :: [Test]
ex3Tests =
  [ Test "doubleEveryOther" (check doubleEveryOther)
        [ ([4,9,5,5], [4,18,5,10]), ([0], [0]), ([1],[1]), ([],[]) ]
  ]

-- Exercise 4 -----------------------------------------

ex4Tests :: [Test]
ex4Tests =
  [ Test "sumDigits" (check sumDigits) [ ([10,5,18,4], 19) ] ]

-- Exercise 5 -----------------------------------------

ex5Tests :: [Test]
ex5Tests = []

-- Exercise 6 -----------------------------------------

ex6Tests :: [Test]
ex6Tests = []

-- All Tests ------------------------------------------

allTests :: [Test]
allTests = concat [ ex1Tests
                  , ex2Tests
                  , ex3Tests
                  , ex4Tests
                  , ex5Tests
                  , ex6Tests
                  ]
