
//
//  ViewController.swift
//  MyNotes
//
//  Created by marwa on 12/31/17.
//  Copyright © 2017 marwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titlelabel: UITextField!
    @IBOutlet weak var detailnote: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func savenote(_ sender: Any) {
        let newNote = Notes(context: context)
        newNote.title = titlelabel.text
        newNote.note = detailnote.text
        newNote.date_save = NSDate() as Date
        do{
            ad.saveContext()
            titlelabel.text = ""
            detailnote.text = ""
            print("saved")
        }catch{
            print("not saved")
        }
       
        
        
    }
}

