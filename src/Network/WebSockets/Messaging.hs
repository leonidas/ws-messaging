
module Network.WebSockets.Messaging
    ( Connection(disconnected)
    , request
    , requestAsync
    , notify
    , onRequest
    , onNotify
    , onConnect
    , onDisconnect
    , startListening
    , Request(..)
    , Notify(..)
    , Some(..)
    , deriveRequest
    , deriveNotify
    , Future
    , get
    , foldFuture

    , clientLibraryPath
    , clientLibraryCode
    ) where

import Network.WebSockets.Messaging.Connection
import Network.WebSockets.Messaging.Message
import Network.WebSockets.Messaging.Message.TH

import Paths_ws_messaging

clientLibraryPath :: IO FilePath
clientLibraryPath = getDataFileName "client/messaging.js"

clientLibraryCode :: IO String
clientLibraryCode = readFile =<< clientLibraryPath
