//
//  ViewController.swift
//  Caeser Cipher
//
//  Created by Aamer Essa on 19/12/2022.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var shift: NSTextField!
    @IBOutlet weak var data: NSTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

   
    
  

    @IBAction func encrypt(_ sender: Any) {
        
        let data = Array(data.stringValue)
        var encryptedData = [String]()
        
       for character in data {
           let encryptedCharacter = "\(UnicodeScalar(character.unicodeScalars[character.unicodeScalars.startIndex].value + UInt32(self.shift.stringValue)!)!)"
                encryptedData.append(encryptedCharacter)
       }
        
        self.data.stringValue = "\(encryptedData.joined())"
    }
    
    
    @IBAction func decrypt(_ sender: Any) {
        
        let data = Array(data.stringValue)
        var decryptedData = [String]()
        
        for character in data {
              let decryptedCharacter =  "\(UnicodeScalar(character.unicodeScalars[character.unicodeScalars.startIndex].value - UInt32(self.shift.stringValue)!)!)"
                decryptedData.append(decryptedCharacter)
        }
        self.data.stringValue = "\(decryptedData.joined())"
    }
}

