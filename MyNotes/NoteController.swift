//
//  NoteController.swift
//  MyNotes
//
//  Created by marwa on 12/31/17.
//  Copyright © 2017 marwa. All rights reserved.
//

import UIKit
import CoreData

class NoteController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    var arrynote = [Notes]();
    @IBOutlet weak var table: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate =  self
        getnote()
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrynote.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:noteCell = tableView.dequeueReusableCell(withIdentifier: "notcell", for: indexPath) as! noteCell
        cell.loadcell(note: arrynote[indexPath.row])
      return cell
}
    func getnote() {
        let fetchreq : NSFetchRequest<Notes> = Notes.fetchRequest();
        do {
            arrynote = try context.fetch(fetchreq)
            table.reloadData()
            
        }catch{
            print("errror")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
}
