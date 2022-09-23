import SwiftLocale
import Vapor

extension Vapor.Request {

   public var locale: SwiftLocale.Locale {
       get throws {
           guard let header = headers.first(name: .acceptLanguage),
                 let locale = SwiftLocale.Locale.acceptLanguage(header) else {
               throw Abort(.notAcceptable)
           }
           return locale
       }
   }

}

