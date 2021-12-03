//
//  SecondVC.swift
//  project_3
//
//  Created by mona aleid on 25/04/1443 AH.
//

import UIKit

class TopRatedMoviesVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    
    var arrTopMovies = [TopMoviesSet]()
    
    @IBOutlet weak var tableView: UITableView!
    
   
    var posterImageSet: UIImage?
    var movieTitleSet: String?
    var movieDesSet: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
   
    
    guard let image = UIImage(named: "Lord Of The Rings")else {return}
        arrTopMovies.append(TopMoviesSet.init(image: image, name: "Lord Of The Rings".localaized))
    guard let image = UIImage(named: "spiritedAway")else {return}
        arrTopMovies.append(TopMoviesSet.init(image: image, name: "Spirited Away".localaized))
    guard let image = UIImage(named: "forrestGump")else {return}
        arrTopMovies.append(TopMoviesSet.init(image: image, name: "Forrest Gump".localaized))
    guard let image = UIImage(named: "Brave Heart")else {return}
        arrTopMovies.append(TopMoviesSet.init(image: image, name: "Braveheart".localaized))
    
    guard let image = UIImage(named: "Saving Private Ryan")else {return}
        arrTopMovies.append(TopMoviesSet.init(image: image, name: "Saving Private Ryan".localaized))

    guard let image = UIImage(named: "Howl's Moving Castle")else {return}
        arrTopMovies.append(TopMoviesSet.init(image: image, name: "Howl's Moving Castle".localaized))
    }
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTopMovies.count
      }
    
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "homeCell", for: indexPath) as! TopMovieTableViewCell
        let data = arrTopMovies[indexPath.row]
          cell.setupCell(photo:data.image, name: data.name)
        return cell
        }

      func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(arrTopMovies[indexPath.row])
       

            switch indexPath.row {
            case 0:
                posterImageSet = UIImage(named: "Lord Of The Rings")
                movieTitleSet = "Lord Of The Rings".localaized
                movieDesSet = " The Lord of the Rings is a series of three epic fantasy adventure films directed by Peter Jackson, based on the novel written by J. R. R. Tolkien. The films are subtitled The Fellowship of the Ring (2001), The Two Towers (2002), and The Return of the King (2003)".localaized
            case 1:
                posterImageSet = UIImage(named: "spiritedAway")
                movieTitleSet = "Spirited Away".localaized
                movieDesSet = "Spiriting Away is a Japanese animated fantasy film(2001) written and directed by Hayao Miyazaki, Studio Ghibli. It tells the story of Chihiro Ogino (Hiiragi), a ten-year-old girl who, while moving to a new neighborhood, enters the world of Kami (spirits of Japanese Shinto folklore), after her parents are turned into pigs by the witch Yubaba, Chihiro takes a job working in Yubaba's bathhouse to find a way to free herself and her parents and return to the human world.".localaized
            case 2:
                posterImageSet = UIImage(named: "forrestGump")
                movieTitleSet = "Forrest Gump".localaized
                movieDesSet = "Forrest Gump is a 1994 American comedy-drama film. The story depicts several decades in the life of Forrest Gump (Hanks), a slow-witted and kindhearted man from Alabama who witnesses and unwittingly influences several defining historical events in the 20th-century United States. ".localaized
            case 3:
                posterImageSet = UIImage(named: "Brave Heart")
                movieTitleSet = "Braveheart".localaized
                movieDesSet = "Braveheart is a 1995 American historical drama film, directed and co-produced by Mel Gibson, who portrays Sir William Wallace, a late-13th-century Scottish warrior.The film depicts the life of Wallace leading the Scots in the First War of Scottish Independence against King Edward I of England.".localaized
            case 4:
                posterImageSet = UIImage(named: "Saving Private Ryan")
                movieTitleSet = "Saving Private Ryan".localaized
                movieDesSet = "Saving Private Ryan is a 1998 American epic war film directed by Steven Spielberg. The story is about US soldiers are trying to save their comrade, paratrooper Private Ryan, who's stationed behind enemy lines".localaized
            case 5:
                posterImageSet = UIImage(named: "Howl's Moving Castle")
                movieTitleSet = "Howl's Moving Castle".localaized
                movieDesSet = "Howl's Moving Castle is a 2004 Japanese animated fantasy film written by Studio Ghibli.The film is set in a fictional kingdom where both magic and technology are prevalent, against the backdrop of a war with another kingdom. It tells the story of a young, content milliner named Sophie who is turned into an old woman by a witch".localaized
            default:
                print(" ")
            }
      
            performSegue(withIdentifier: "details", sender: nil)
      }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! SecondVC
        vc.movieTitleSet = movieTitleSet
        vc.posterImageSet = posterImageSet
        vc.movieDesSet = movieDesSet
       
    }
       
}
