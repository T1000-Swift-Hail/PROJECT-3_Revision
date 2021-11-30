//
//  ViewController2.swift
//  Note App Project3
//
//  Created by Seham الشطنان on 23/04/1443 AH.
//

import UIKit
import CoreData

class ViewController2: UIViewController,
                       UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tvListNotes: UITableView!
    
    var listNotes = [MyNotes]();
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listNotes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NotesCellTableViewCell
        print(listNotes[indexPath.row].detlas)
        cell.setCell(note: listNotes[indexPath.row])
        return cell
        }
    
    
    
    
    
    
    
    
    
    override func viewDidLoad(){
    super.viewDidLoad()
        
        tvListNotes.rowHeight = 190
        loadNotes()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    

    @IBAction func buBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func loadNotes() {
        let fetchRequest:NSFetchRequest<MyNotes> =
        MyNotes.fetchRequest()
        do{
            listNotes = try context.fetch(fetchRequest)
            tvListNotes.reloadData()
        }catch{
    }

        enum notes {
            case daily
            case weekly
            case monthly
        }
        
        
        let mynote = notes.daily

        switch mynote {
        case notes.daily:
            print("day")
        case notes.weekly:
            print("week")
        case notes.monthly:
            print("month")
        }
        
        
        
        
        
        let mynotes = ["one", "two", "three"]

        for name in mynotes {
            print(name)
        }



        var persons: [Int:String] = [1:"sami",2:"Ahmed",3:"lana"]
        print(persons[2]!)
    }
    
}



