//
//  NewTaskVC.swift
//  ProjectToDoList
//
//  Created by Njoud Alrshidi on 24/04/1443 AH.
//

import UIKit
import CoreData

class NewTaskVC: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var typeOfTask : Task!
    
    var newTask : [NewTask] = []
    var newTaskShopping : [NewTaskShopping] = []
    var newTaskWork : [NewTaskWork] = []
    
   // let context = persistentContainer.viewContext
  
    let persistentContainer :NSPersistentContainer = {
        let container = NSPersistentContainer(name: "ToDoCoreData")
        container.loadPersistentStores(completionHandler: { desc, error in
            if let error = error {
                print(error)
            }
        })
        
        return container
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        reloadAllData()
        
        
    }
    
    
    func reloadAllData(){
        switch typeOfTask.taskName {
        case "To Do":
            fetchNewTsak()
        case "Shopping":
            fetchNewTsakShopping()
        case "Work":
            fetchNewTsakWork()
        default:
            fetchNewTsak()
        }
        
        tableView.reloadData()
    }
    
    
    func fetchNewTsak() {
        let context = persistentContainer.viewContext
        do {
        newTask =  try context.fetch(NewTask.fetchRequest())
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        catch {
            print(error)
        }
    }
    
    func createNewTask(task : String) {
        
        let context = persistentContainer.viewContext
        context.performAndWait {
            let newTaskk = NewTask(context: context)
            newTaskk.task = task
        }
        
        do {
         try context.save()
        } catch {
            print(error)
        }
        
    }
    
    
    
    
    func fetchNewTsakShopping() {
        let context = persistentContainer.viewContext
        do {
        newTaskShopping =  try context.fetch(NewTaskShopping.fetchRequest())
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        catch {
            print(error)
        }
    }
    
    func createNewTaskShopping(task : String) {
        
        let context = persistentContainer.viewContext
        context.performAndWait {
            let newTaskk = NewTaskShopping(context: context)
            newTaskk.task = task
        }
        
        do {
         try context.save()
        } catch {
            print(error)
        }
        
    }
    
    
    func fetchNewTsakWork() {
        let context = persistentContainer.viewContext
        do {
        newTaskWork =  try context.fetch(NewTaskWork.fetchRequest())
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        catch {
            print(error)
        }
    }
    
    func createNewTaskWork(task : String) {
        
        let context = persistentContainer.viewContext
        context.performAndWait {
            let newTaskk = NewTaskWork(context: context)
            newTaskk.task = task
        }
        
        do {
         try context.save()
        } catch {
            print(error)
        }
        
    }
    
    
    
    
    
    
    
    
    func deleteTask(task : NewTask?) {
        if let task = task {
            let context = persistentContainer.viewContext
             context.delete(task)
            do {
             try context.save()
                fetchNewTsak()
            }
            catch {
                print(error)
            }
        }


    }

    func ubdateTask(task : NewTask , newTask :String) {
        let context = persistentContainer.viewContext

        task.task = newTask
        do {
         try context.save()
            fetchNewTsak()
        }
        catch {
            print(error)
        }

    }
    
    func deleteTaskShopping(task : NewTaskShopping?){
        if let task = task {
            let context = persistentContainer.viewContext
             context.delete(task)
            do {
             try context.save()
                fetchNewTsak()
            }
            catch {
                print(error)
            }
        }


    }

    func ubdateTaskShopping(task : NewTaskShopping , newTask :String){
        let context = persistentContainer.viewContext

        task.task = newTask
        do {
         try context.save()
            fetchNewTsak()
        }
        catch {
            print(error)
        }

    }
    func deleteTaskWork(task : NewTaskWork?){
        if let task = task {
            let context = persistentContainer.viewContext
             context.delete(task)
            do {
             try context.save()
                fetchNewTsak()
            }
            catch {
                print(error)
            }
        }


    }

    func ubdateTaskwork(task : NewTaskWork , newTask :String){
        let context = persistentContainer.viewContext

        task.task = newTask
        do {
         try context.save()
            fetchNewTsak()
        }
        catch {
            print(error)
        }

    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch typeOfTask.taskName {
        case "To Do":
            return newTask.count
        case "Shopping":
            return newTaskShopping.count
        case "Work":
            return newTaskWork.count
        default:
            return 0
        }
        
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var theTask : AnyObject
        
        switch typeOfTask.taskName {
        case "To Do":
            theTask = newTask[indexPath.row]
        case "Shopping":
            theTask = newTaskShopping[indexPath.row]
        case "Work":
            theTask = newTaskWork[indexPath.row]
        default:
            theTask = newTask[indexPath.row]
        }
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = theTask.task

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
       // let item = newTask[indexPath.row]
        let sheet = UIAlertController(title: "Edit", message: nil, preferredStyle:.actionSheet)
        sheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        sheet.addAction(UIAlertAction(title: "Edit", style: .default, handler: { _ in
            let alert = UIAlertController(title: "Edit Task", message: nil, preferredStyle: .alert)

            alert.addTextField(configurationHandler: nil)
         //   alert.textFields?.first?.text = item.task
            alert.addAction(UIAlertAction(title: "Save", style: .default, handler: { [weak self] _ in
                guard let field = alert.textFields?.first , let newText = field.text , !newText.isEmpty else {
                    return
                }
                switch self?.typeOfTask.taskName {
                case "To Do":
                    self?.ubdateTask(task: self?.newTask[indexPath.row] ?? NewTask()  , newTask: newText)
                case "Shopping":
                    self?.ubdateTaskShopping(task: self?.newTaskShopping[indexPath.row] ?? NewTaskShopping() , newTask: newText)
                case "Work":
                    self?.ubdateTaskwork(task: self?.newTaskWork[indexPath.row] ?? NewTaskWork(), newTask: newText)
                default:
                    self?.ubdateTask(task: self?.newTask[indexPath.row] ?? NewTask()  , newTask: newText)
                }
                
                self?.reloadAllData()
                
         //       self?.ubdateTask(task: item, newTask: newText)

            }))
            self.present(alert, animated: true)
            }))
            //
      
        sheet.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { [weak self] _ in
            
      //      self?.deleteTask(task: item)
            switch self?.typeOfTask.taskName {
            case "To Do":
                self?.deleteTask(task: self?.newTask[indexPath.row] )
            case "Shopping":
                self?.deleteTaskShopping(task: self?.newTaskShopping[indexPath.row] )
            case "Work":
                self?.deleteTaskWork(task: self?.newTaskWork[indexPath.row] )
            default:
                self?.deleteTask(task: self?.newTask[indexPath.row] )
            }
            
            self?.reloadAllData()
            

        }))
        self.present(sheet, animated: true)
    }


@IBAction func addNewTask(_ sender: UIBarButtonItem) {
    
    let alert = UIAlertController(title: "New Task", message: nil, preferredStyle: .alert)

    alert.addTextField(configurationHandler: { textField in
        textField.placeholder = "Task ..."
    })
    
    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak self] _ in
        guard let field = alert.textFields?.first , let text = field.text , !text.isEmpty else {
            return
        }
        
        switch self?.typeOfTask.taskName {
        case "To Do":
            self?.createNewTask(task : text)
        case "Shopping":
            self?.createNewTaskShopping(task : text)
        case "Work":
            self?.createNewTaskWork(task : text)
        default:
            self?.createNewTask(task : text)
        }
        
        self?.reloadAllData()
        
        
        
    }))

        
    self.present(alert, animated: true)
}
        
    }
    
        
    
