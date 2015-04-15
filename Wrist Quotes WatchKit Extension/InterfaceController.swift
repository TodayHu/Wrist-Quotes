//
//  InterfaceController.swift
//  Wrist Quotes WatchKit Extension
//
//  Created by Elaine Reyes on 4/14/15.
//  Copyright (c) 2015 UlyssaElaine. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var table: WKInterfaceTable!
    
    var motivationalQuotes = ["Expect problems and eat them for breakfast.","If you can dream it, you can do it."]
    
    var funnyQuotes = ["Always remember that you are absolutely unique. Just like everyone else.","Do not take life too seriously. You will never get out of it alive."]
    
    var boringQuotes = ["Some cars run on gas. Some cars run on electricity.", "How was your day Kevin?","Ok","I haven't seen that before.","The dog is brown","Will you pass the salt?"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func funnyTapped() {
        setTheTable(self.funnyQuotes)
    }
    
    @IBAction func motivationTapped() {
        setTheTable(self.motivationalQuotes)
    }
    
    @IBAction func boringTapped() {
        setTheTable(self.boringQuotes)
    }
    
    func setTheTable(quoteArray : [String]){
        self.table.setNumberOfRows(quoteArray.count, withRowType: "QuoteRow")
        
        var count = 0
        for quote in quoteArray{
            var row = self.table.rowControllerAtIndex(count) as QuoteRow
            row.quoteLabel.setText("\"\(quote)")
            count++
        }
    }
}
