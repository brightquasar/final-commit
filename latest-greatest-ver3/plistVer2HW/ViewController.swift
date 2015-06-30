//  ViewController.swift
//  FinalVer5
//
//  Created by Richard H Woolley on 6/22/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley.

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
  @IBOutlet weak var tableView: UITableView!
  var people = [Person]()
  var myInfo = [String : Person]()


          // --------------------------------

// Firstly, to get any of this to run AT ALL, I was forced to hand-code from scratch my entire People.plist file.
// ====  Xcode bites! ===========================================================================================

  override func viewDidLoad() {
    super.viewDidLoad()
      if let peopleFromArchive = self.loadFromArchive() {
        self.people = peopleFromArchive  // THIS IS THE FAULT, THE ARCHIVE GIVES ME NO IMAGES, EXCEPT THOSE STORED FROM PHOTO ALBUM. 
      } else {
        self.loadPeopleFromPlist()
        self.saveToArchive()
      }
    self.tableView.dataSource = self
  }
  // -- end of viewDidLoad()


  func loadPeopleFromPlist() {
    if let peoplePath = NSBundle.mainBundle().pathForResource("People", ofType: "plist"),
      peopleObjects = NSArray(contentsOfFile: peoplePath) as? [[String: String]] {

        // loop through the data from the plist (an array of dictionaries)
        for object in peopleObjects {

          if let firstName = object["FirstName"], lastName = object["LastName"], title = object["Title"], imageName = object["image"] {

            switch imageName {
            case "me":
              let imageOfme = UIImage(named: "me")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "me", AnImage: imageOfme!)
              self.people.append(person)
            case "NeilTyson":
              let imageOfHe = UIImage(named: "NeilTyson")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "NeilTyson", AnImage: imageOfHe!)
              self.people.append(person)
            case "carlSagan":
              let imageOfHe = UIImage(named: "carlSagan")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "carlSagan", AnImage: imageOfHe!)
              self.people.append(person)
            case "VictorStenger":
              let imageOfHe = UIImage(named: "VictorStenger")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "VictorStenger", AnImage: imageOfHe!)
              self.people.append(person)
            case "ErwinS":
              let imageOfHe = UIImage(named: "ErwinS")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "ErwinS", AnImage: imageOfHe!)
              self.people.append(person)
            case "FransisCrick":
              let imageOfHe = UIImage(named: "FransisCrick")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "FransisCrick", AnImage: imageOfHe!)
              self.people.append(person)
            case "JamesWatson":
              let imageOfHe = UIImage(named: "JamesWatson")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "JamesWatson", AnImage: imageOfHe!)
              self.people.append(person)
            case "RichardDawkins":
              let imageOfHe = UIImage(named: "RichardDawkins")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "RichardDawkins", AnImage: imageOfHe!)
              self.people.append(person)
            case "RichardFeynman":
              let imageOfHe = UIImage(named: "RichardFeynman")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "RichardFeynman", AnImage: imageOfHe!)
              self.people.append(person)
            case "StevenWeinberg":
              let imageOfHe = UIImage(named: "StevenWeinberg")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "StevenWeinberg", AnImage: imageOfHe!)
              self.people.append(person)
            case "IsaacAsimov":
              let imageOfHe = UIImage(named: "IsaacAsimov")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "IsaacAsimov", AnImage: imageOfHe!)
              self.people.append(person)
            case "PualDirac":
              let imageOfHe = UIImage(named: "PualDirac")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "PaulDirac", AnImage: imageOfHe!)
              self.people.append(person)
            case "PaulErdos":
              let imageOfHe = UIImage(named: "PaulErdos")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "PaulErdos", AnImage: imageOfHe!)
              self.people.append(person)
            case "RobertPrice":
              let imageOfHe = UIImage(named: "RobertPrice")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "RobertPrice", AnImage: imageOfHe!)
              self.people.append(person)
            case "StevenGibson":
              let imageOfHe = UIImage(named: "StevenGibson")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "StevenGibson", AnImage: imageOfHe!)
              self.people.append(person)
            case "RandiTheGreat":
              let imageOfHe = UIImage(named: "RandiTheGreat")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "RandiTheGreat", AnImage: imageOfHe!)
              self.people.append(person)
            case "AubreyDNJdeGrey":
              let imageOfHe = UIImage(named: "AubreyDNJdeGrey")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "AubreyDNJdeGrey", AnImage: imageOfHe!)
              self.people.append(person)
            case "DanBarker":
              let imageOfHe = UIImage(named: "DanBarker")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "DanBarker", AnImage: imageOfHe!)
              self.people.append(person)
            case "JFresco":
              let imageOfHe = UIImage(named: "JFresco")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "JFresco", AnImage: imageOfHe!)
              self.people.append(person)
            case "CHitchens":
              let imageOfHe = UIImage(named: "CHitchens")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "CHitchens", AnImage: imageOfHe!)
              self.people.append(person)
            case "StevenPinker":
              let imageOfHe = UIImage(named: "StevenPinker")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "StevenPinker", AnImage: imageOfHe!)
              self.people.append(person)
            case "GRPrice":
              let imageOfHe = UIImage(named: "GRPrice")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "GRPrice", AnImage: imageOfHe!)
              self.people.append(person)
            case "DennisGalvon":
              let imageOfHe = UIImage(named: "DennisGalvon")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "DennisGalvon", AnImage: imageOfHe!)
              self.people.append(person)
            case "SBaxter":
              let imageOfHe = UIImage(named: "SBaxter")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "SBaxter", AnImage: imageOfHe!)
              self.people.append(person)
            case "RickLooksHappy":
              let imageOfHe = UIImage(named: "RickLooksHappy")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "RickLooksHappy", AnImage: imageOfHe!)
              self.people.append(person)
            case "RAHeinlein":
              let imageOfHe = UIImage(named: "RAHeinlein")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "RAHeinlein", AnImage: imageOfHe!)
              self.people.append(person)
            case "MMcClure":
              let imageOfHe = UIImage(named: "MMcClure")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "MMcClure", AnImage: imageOfHe!)
              self.people.append(person)
            case "FCollins":
              let imageOfHe = UIImage(named: "FCollins")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "FCollins", AnImage: imageOfHe!)
              self.people.append(person)
            case "AlanTuring":
              let imageOfHe = UIImage(named: "AlanTuring")
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "AlanTuring", AnImage: imageOfHe!)
              self.people.append(person)
            case "AuroraSnow":
              let imageOfHe = UIImage(named: "AuroraSnow")
              //let newImageOfHe = UIImagePNGRepresentation(imageOfHe)
              let person = Person(first: firstName, last: lastName, sanity: title, imageStringName: "AuroraSnow", AnImage: imageOfHe)
              self.people.append(person)
            default:
              break
            } // switch
          } // if let
        } // for in loop
    } // if let
  } // func



  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.saveToArchive()
    self.tableView.reloadData()
    // Same-old short-version, finds datasource above via tableView protocol
    // ... I have yet to get the longer more efficient version to work.
  }


  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.people.count
  }

  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! PersonCell
    cell.backgroundColor = UIColor.whiteColor()
    cell.personImageView.layer.cornerRadius = 15
    cell.personImageView.layer.masksToBounds = true;
    cell.personImageView.layer.borderWidth = 2
    cell.personImageView.layer.borderColor = UIColor.blueColor().CGColor

    let personToDisplay = self.people[indexPath.row]

    if let tempI = personToDisplay.actualImage {
      cell.personImageView.image = tempI
    }

    cell.firstNameLabel.text = personToDisplay.firstName     // Set the names on the cell.
    cell.lastNameLabel.text = personToDisplay.lastName      // These three "always" work.
    cell.charTitle.text = personToDisplay.title            //

    let userDefaults = NSUserDefaults.standardUserDefaults()  // "continued" below, userDefaults.objectForKey("LastSelected") ...

    cell.backgroundColor = UIColor.whiteColor() // --- re-set whiteColor -------------------------------------
    if let lastSelectedName = userDefaults.objectForKey("LastSelected") as? String where lastSelectedName == personToDisplay.lastName
    {
      cell.backgroundColor = UIColor.lightGrayColor() // -- lightGrayColor -- HAD A FUNNY MINOR BUG -------------------- fixed ^^^^^^
    }
    return cell
  }

/*
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "ShowDetailViewController" {
      if let detailViewController = segue.destinationViewController as? DetailViewController,
         let myIndexPath = self.tableView.indexPathForSelectedRow(),
         let indexPath = self.tableView.indexPathForSelectedRow()
      {
         let selectedRow = indexPath.row
         let selectedPerson = self.people[selectedRow]
           //println(selectedPerson.firstName)
         detailViewController.selectedPerson = selectedPerson
         let userDefaults = NSUserDefaults.standardUserDefaults()
         userDefaults.setObject(selectedPerson.lastName, forKey: "LastSelected")  // BUG FIX, firstName not unique in my plist.
         userDefaults.synchronize()
      }
    }
  }
*/

//  Sample code below: (this seems to be a mess of illogically nested ... stuff, 3 in all), the above seems to be a better construct??
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "ShowDetailViewController" {
      if let detailViewController = segue.destinationViewController as? DetailViewController {
                                                                                               // #1 ---vvvvvvvvvvvvvv
        let myIndexPath = self.tableView.indexPathForSelectedRow()   // would be #2 (but is not itself conditioinal)
          if let indexPath = self.tableView.indexPathForSelectedRow() {
                                                                     // #3 is meaningless, as it is nested.
            let selectedRow = indexPath.row
            let selectedPerson = self.people[selectedRow]
              //println(selectedPerson.firstName)
            detailViewController.selectedPerson = selectedPerson
            let userDefaults = NSUserDefaults.standardUserDefaults()
            userDefaults.setObject(selectedPerson.lastName, forKey: "LastSelected")
            userDefaults.synchronize()
            // detailViewController.setupTextFields()  // From a previous version??
            
          }
      }
    }

  }


  func saveToArchive() {
    if let archivePath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last as? String {
        println(archivePath)
      NSKeyedArchiver.archiveRootObject(self.people, toFile: archivePath + "/archive")
    }
  }

// Brad's demo code: (contains a nested if let in the following func)
  func loadFromArchive() -> [Person]? {
    if let archivePath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last as? String {
      if let peopleFromArchive = NSKeyedUnarchiver.unarchiveObjectWithFile(archivePath + "/archive") as? [Person] {
        return peopleFromArchive
      }
    }
    return nil
  }

// The following (seems to be) a better construct. (by virtue of the use of chained optional bindings)??
/*
  func loadFromArchive() -> [Person]? {
    if let archivePath = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true).last as? String, peopleFromArchive = NSKeyedUnarchiver.unarchiveObjectWithFile(archivePath + "/archive") as? [Person]
    {
      return peopleFromArchive
    }
    return nil
  }
*/

}
