import SwiftLocale
import Vapor

extension Vapor.Response {

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

