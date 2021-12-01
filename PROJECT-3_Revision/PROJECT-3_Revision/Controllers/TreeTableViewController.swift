//
//  TreeTableViewController.swift
//  PROJECT-3_Revision
//
//  Created by Munira abdullah on 23/04/1443 AH.
//

import UIKit
import CoreData

class TreeTableViewController: UITableViewController {
    
    @IBOutlet weak var segment: UISegmentedControl!
    
  
    
    var selectedTree: Types?
    var selectRow: Leaves?
    
    
    
    let types = [Types(name: "Coconut Plam", image: "Unknown-6", description: "The coconut palm plant (Cocos nucifera) is characterized by a tall, gray-brown, slightly curved single trunk, sprawling green palm fronds, and, of course, coconuts. It also loves lots of warmth, sun, and humidity. This can be difficult but not impossible to replicate for an indoor palm."),
                 
                 Types(name: "Orang", image: "Unknown-1", description: "Orange plants and other citrus plants can make a beautiful houseplant for your home. They bring brilliant colour and scent to your home, with the flowers and fruit they produce. As long as the basic factors are met, caring for a citrus plant is relatively easily. Follow our top tips on caring for a citrus plant to produce a healthy plant with some healthy fruit.Citrus plants like quite humid environments."),
                 
                 Types(name: "Rose Mary", image:  "Unknown-7", description: "Rosemary Christmas trees (or any other herbal topiary) have been grown in virtually perfect conditions, just waiting to be placed on retail shelves across the country. The smell alone is enough to convince any shoppers that one of these beauties needs to come home and live on the table. However, the moment they leave the warm, perfect greenhouses that they were grown in, problems can occur."),
                 
                 Types(name: "Cactus", image:  "Unknown-5", description: "A cactus (plural cacti, cactuses, or less commonly, cactus)[3] is a member of the plant family Cactaceae,[Note 1] a family comprising about 127 genera with some 1750 known species of the order Caryophyllales.[4] The word derives, through Latin, from the Ancient Greek κάκτος, kaktos, a name originally used by Theophrastus for a spiny plant whose identity is now not certain.[5] Cacti occur in a wide range of shapes and sizes."),
                 
                 Types(name: "Grapes", image: "Unknown-4", description: "Grapevines belong to Vitaceae family, while the most commonly used varieties belong to Vitis vinifera species (European vine). Other Euvitis subspecies are used as rootstocks in areas with extended Phylloxera problem.Grapevine is a perennial plant bush, characterized by helices – tendrils and trailing growth."),
                 
                 Types(name: "Blueberry", image: "images-3", description: "Blueberries include several species of flowering, fruiting shrubs within the Vaccinium genus, all native to North America. Relatives within the Vaccinium genus include the bilberry, cranberry, huckleberry, and lingonberry. Blueberry bushes have pointed, oblong leaves that are leathery to the touch and turn a brilliant red color in the fall."),
                 
                 Types(name: "Pineapple", image: "Unknown-3", description: "The pineapple is the leading edible member of the family Bromeliaceae which embraces about 2,000 species, mostly epiphytic and many strikingly ornamental. Now known botanically as Ananas comosus Merr. (syns. A. sativus Schult. f., Ananassa sativa Lindl., Bromelia ananas L., B. comosa L.), the fruit has acquired few vernacular names.")
                 
    ]
    
    
    
    let leaves = [Leaves(nameLeaves: "Ash", imageLeaves: "download", describLeaves: "Ash is used for furniture, flooring, doors, cabinetry, architectural moulding and millwork, tool handles, baseball bats, hockey sticks, oars, turnings, and is also sliced for veneer. It is a popular species for food. "),
                  
                  Leaves(nameLeaves: "Maple", imageLeaves: "download-1", describLeaves: " A maple tree must be 30 years old before it can have its sap extracted and made into syrup. It takes somewhere between 40 and 50 gallons of maple sap to produce just 1 gallon of syrup."),
                  
                  Leaves(nameLeaves: "Alm", imageLeaves: "images", describLeaves: "The elm bark beetle dwells on the elm tree, thereby infecting it with the Dutch Elm Disease due to bacterial growth in the wood. Other elm varieties also harbor the beetles, but do not get infected by the disease. Furthermore, the American elm has a shallow root system, which invades sewage pipelines and foundations."),
                  
                  Leaves(nameLeaves: "Chestnut", imageLeaves: "download-2", describLeaves: "In short, chestnuts were part of everyday American life. Until they weren't. Finding a mature American chestnut in the wild is so rare today that discoveries are reported in the national press. The trees are “technically extinct,” according to The American Chestnut Foundation."),
                  
                  Leaves(nameLeaves: "Plam", imageLeaves: "images-1", describLeaves: "Most palms are distinguished by their large, compound, evergreen leaves, known as fronds, arranged at the top of an unbranched stem. The lifespan of a palm tree is up to 100 years, depending on the species. The trunk of a palm tree is the structure that holds the leafy vegetation above the ground.")]
    
    
    
    @IBAction func selectTrees(_ sender: Any) {
        
        tableView.reloadData()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 120
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       
        
        if segment.selectedSegmentIndex == 0 {
            return types.count
        } else if segment.selectedSegmentIndex == 1  {
            
            return leaves.count
            
        }
        
        return 0
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath) as! ListTableViewCell
        
            
        
        if segment.selectedSegmentIndex == 0 {
            cell.treesName?.text = types[indexPath.row].name
            
            cell.imageTrees?.image = UIImage(named: types[indexPath.row].image)
        } else {
            
            if segment.selectedSegmentIndex == 1{
                
                cell.treesName.text = leaves[indexPath.row].nameLeaves
                
                cell.imageTrees?.image = UIImage(named: leaves[indexPath.row].imageLeaves)
            }
            
            // Configure the cell...
            
        }
        
        return cell
        
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        if segment.selectedSegmentIndex == 0 {
            self.selectedTree = types[indexPath.row]
            print(selectedTree?.name as Any)
        } else {
            self.selectRow = leaves[indexPath.row]
            print(selectRow?.nameLeaves as Any)
        }
        
        performSegue(withIdentifier: "TreeDescrib", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        
        if segment.selectedSegmentIndex == 0 {
            
            let destination = segue.destination as!
            TreeDescViewController
            destination.types = selectedTree
            
        } else {
            
            let describ = segue.destination as!
            TreeDescViewController
            describ.leaves = selectRow
            
            
        }
        
        
    }
    
   
    }
    
    
    





