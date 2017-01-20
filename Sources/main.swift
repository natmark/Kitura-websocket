import Foundation

import Kitura
import KituraWebSocket

import HeliumLogger

HeliumLogger.use()

let router = Router()

WebSocket.register(service: MyService(), onPath: "websocket")

Kitura.addHTTPServer(onPort: 8090, with: router)

Kitura.run()
