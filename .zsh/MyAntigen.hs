{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}
module MyAntigen where

import Data.Monoid ((<>))
import Data.Text (Text)
import Antigen (
                -- Rudimentary imports
                AntigenConfiguration (..)
              , bundle
              , developFromFileSystem
              , antigen
                -- If you want to source a bit trickier plugins
              , ZshPlugin (..)
              , RepoStorage (..)
              , antigenSourcingStrategy
              , filePathsSourcingStrategy
              , strictSourcingStrategy
              )
import Shelly (shelly)

bundleFrom :: Text -> Text -> ZshPlugin
bundleFrom repo identifier = ZshPlugin {
    storage = GitRepository $ repo <> identifier,
    sourcingStrategy = strictSourcingStrategy,
    sourcingLocations = ["."]
  }

bitbucket :: Text -> ZshPlugin
bitbucket = bundleFrom "git@bitbucket.org:"

bundles =
  [ bundle "zsh-users/zsh-syntax-highlighting"

  , bitbucket "add20/zsh-peco"
  , bitbucket "add20/zsh-rbenv"
  , bitbucket "add20/zsh-nvm"
  -- , bitbucket "add20/zsh-tmux"
  -- , bitbucket "add20/zsh-texlive"
  ]

config = AntigenConfiguration bundles

main :: IO ()
main = shelly $ antigen config
