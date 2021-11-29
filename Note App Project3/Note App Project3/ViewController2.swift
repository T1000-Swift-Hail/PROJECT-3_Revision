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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listNotes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
    var listNotes=[MyNotes]();
    override func viewDidLoad(){
    super.viewDidLoad()
      // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated.
    }
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    func tableview(_tableview: UITableView,numberOfRowsInsection section:Int) -> Int{
        return listNotes.count
    }
    func tableview(_tableview: UITableView, cellforRowAt indexpath: IndexPath) -> UITableView{
        let cell: NoteCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexpath) as! NoteCell
        cell.setCell(note: listNotes(indexPath.row))
        return Cell
        }
    }
func loadNotes() {
    let fetchRequest:NSFetchRequest<MyNotes> =
    MyNotes.fetchRequest()
}




