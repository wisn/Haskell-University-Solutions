{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_exercise1 (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/wisnu/Repos/wisn/Haskell-University-Solutions/semester-1/exercise1/.stack-work/install/x86_64-linux/lts-9.14/8.0.2/bin"
libdir     = "/home/wisnu/Repos/wisn/Haskell-University-Solutions/semester-1/exercise1/.stack-work/install/x86_64-linux/lts-9.14/8.0.2/lib/x86_64-linux-ghc-8.0.2/exercise1-0.1.0.0-7bAbtm6tHPS587I51PvjTx"
dynlibdir  = "/home/wisnu/Repos/wisn/Haskell-University-Solutions/semester-1/exercise1/.stack-work/install/x86_64-linux/lts-9.14/8.0.2/lib/x86_64-linux-ghc-8.0.2"
datadir    = "/home/wisnu/Repos/wisn/Haskell-University-Solutions/semester-1/exercise1/.stack-work/install/x86_64-linux/lts-9.14/8.0.2/share/x86_64-linux-ghc-8.0.2/exercise1-0.1.0.0"
libexecdir = "/home/wisnu/Repos/wisn/Haskell-University-Solutions/semester-1/exercise1/.stack-work/install/x86_64-linux/lts-9.14/8.0.2/libexec"
sysconfdir = "/home/wisnu/Repos/wisn/Haskell-University-Solutions/semester-1/exercise1/.stack-work/install/x86_64-linux/lts-9.14/8.0.2/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "exercise1_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "exercise1_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "exercise1_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "exercise1_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "exercise1_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "exercise1_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
