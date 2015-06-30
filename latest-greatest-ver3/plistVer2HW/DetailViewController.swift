//  DetailViewController.swift
//  FinalVer5
//
//  Created by Richard H Woolley on 6/22/15.
//  Copyright (c) 2015 Bright Quasar Software, R.Woolley.

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  @IBOutlet weak var imageView: UIImageView!

  @IBOutlet weak var cameraMissingAlert: UILabel! // Is now used to display gaming messages, too lazy to rename it.

  var selectedPerson : Person!  // Will "initialize" this through UITextFieldDelegate protocol??

  var lastPersonSelectedLastName = ""
  var lastPersonSelectedFirstName = ""

  var imageWhichMatchesSelectedPerson = ""


           // -------------------------------------

  override func viewDidLoad() {
    super.viewDidLoad()

    cameraMissingAlert.textColor = UIColor.blueColor()
    self.cameraMissingAlert.text = "Guess this man's name"

    imageWhichMatchesSelectedPerson = setupTextFields(1)  // Fun with overloading:]

    switch imageWhichMatchesSelectedPerson {
    case "Woolley":
      let imageOfme = UIImage(named: "me")
      self.imageView.image = imageOfme
      lastPersonSelectedLastName = "Woolley"
      lastPersonSelectedFirstName = "Richard"
    case "Tyson":
      let imageOfTyson = UIImage(named: "NeilTyson")
      self.imageView.image = imageOfTyson
      lastPersonSelectedLastName = "Tyson"
      lastPersonSelectedFirstName = "Neil"
    case "Sagan":
      let imageOfSagan = UIImage(named: "carlSagan")
      self.imageView.image = imageOfSagan
      lastPersonSelectedLastName = "Sagan"
      lastPersonSelectedFirstName = "Carl"
    case "Stenger":
      let imageOfVictorStenger = UIImage(named: "VictorStenger")
      self.imageView.image = imageOfVictorStenger
      lastPersonSelectedLastName = "Stenger"
      lastPersonSelectedFirstName = "Victor"
    case "Schrodinger":
      let imageOfErwinS = UIImage(named: "ErwinS")
      self.imageView.image = imageOfErwinS
      lastPersonSelectedLastName = "Schrodinger"
      lastPersonSelectedFirstName = "Erwin"
    case "Crick":
      let imageOfFransisCrick = UIImage(named: "FransisCrick")
      self.imageView.image = imageOfFransisCrick
      lastPersonSelectedLastName = "Crick"
      lastPersonSelectedFirstName = "Francis"
    case "Watson":
      let imageOfJamesWatson = UIImage(named: "JamesWatson")
      self.imageView.image = imageOfJamesWatson
      lastPersonSelectedLastName = "Watson"
      lastPersonSelectedFirstName = "James"
    case "Dawkins":
      let imageOfRichardDawkins = UIImage(named: "RichardDawkins")
      self.imageView.image = imageOfRichardDawkins
      lastPersonSelectedLastName = "Dawkins"
      lastPersonSelectedFirstName = "Richard"
    case "Feynman":
      let imageOfRichardFeynman = UIImage(named: "RichardFeynman")
      self.imageView.image = imageOfRichardFeynman
      lastPersonSelectedLastName = "Feynman"
      lastPersonSelectedFirstName = "Richard"
    case "Weinberg":
      let imageOfStevenWeinberg = UIImage(named: "StevenWeinberg")
      self.imageView.image = imageOfStevenWeinberg
      lastPersonSelectedLastName = "Weinberg"
      lastPersonSelectedFirstName = "Steven"
    case "Asimov":
      let imageOfAsimov = UIImage(named: "IsaacAsimov")
      self.imageView.image = imageOfAsimov
      lastPersonSelectedLastName = "Asimov"
      lastPersonSelectedFirstName = "Isaac"
    case "Dirac":
      let imageOfDirac = UIImage(named: "PualDirac")
      self.imageView.image = imageOfDirac
      lastPersonSelectedLastName = "Dirac"
      lastPersonSelectedFirstName = "Paul"
    case "Erdos":
      let imageOfErdos = UIImage(named: "PaulErdos")
      self.imageView.image = imageOfErdos
      lastPersonSelectedLastName = "Erdos"
      lastPersonSelectedFirstName = "Paul"
    case "Price (r)":
      let imageOfRobertPrice = UIImage(named: "RobertPrice")
      self.imageView.image = imageOfRobertPrice
      lastPersonSelectedLastName = "Price (r)"
      lastPersonSelectedFirstName = "Robert"
    case "Gibson":
      let imageOfStevenGibson = UIImage(named: "StevenGibson")
      self.imageView.image = imageOfStevenGibson
      lastPersonSelectedLastName = "Gibson"
      lastPersonSelectedFirstName = "Steven"
    case "Randi":
      let imageOfRandiTheGreat = UIImage(named: "RandiTheGreat")
      self.imageView.image = imageOfRandiTheGreat
      lastPersonSelectedLastName = "Randi"
      lastPersonSelectedFirstName = "James"
    case "deGrey":
      let imageOfdeGrey = UIImage(named: "AubreyDNJdeGrey")
      self.imageView.image = imageOfdeGrey
      lastPersonSelectedLastName = "deGrey"
      lastPersonSelectedFirstName = "Aubrey"
    case "Barker":
      let imageOfDanBarker = UIImage(named: "DanBarker")
      self.imageView.image = imageOfDanBarker
      lastPersonSelectedLastName = "Barker"
      lastPersonSelectedFirstName = "Daniel"
    case "Fresco":
      let imageOfJFresco = UIImage(named: "JFresco")
      self.imageView.image = imageOfJFresco
      lastPersonSelectedLastName = "Fresco"
      lastPersonSelectedFirstName = "Jacque"
    case "Hitchens":
      let imageOfCHitchens = UIImage(named: "CHitchens")
      self.imageView.image = imageOfCHitchens
      lastPersonSelectedLastName = "Hitchens"
      lastPersonSelectedFirstName = "Christopher"
    case "Pinker":
      let imageOfStevenPinker = UIImage(named: "StevenPinker")
      self.imageView.image = imageOfStevenPinker
      lastPersonSelectedLastName = "Pinker"
      lastPersonSelectedFirstName = "Steven"
    case "Price":
      let imageOfGRPrice = UIImage(named: "GRPrice")
      self.imageView.image = imageOfGRPrice
      lastPersonSelectedLastName = "Price"
      lastPersonSelectedFirstName = "George"
    case "Galvon":
      let imageOfDennisGalvon = UIImage(named: "DennisGalvon")
      self.imageView.image = imageOfDennisGalvon
      lastPersonSelectedLastName = "Galvon"
      lastPersonSelectedFirstName = "Dennis"
    case "Baxter":
      let imageOfSBaxter = UIImage(named: "SBaxter")
      self.imageView.image = imageOfSBaxter
      lastPersonSelectedLastName = "Baxter"
      lastPersonSelectedFirstName = "Stephen"
    case "Couple":
      let imageOfRickLooksHappy = UIImage(named: "RickLooksHappy")
      self.imageView.image = imageOfRickLooksHappy
      lastPersonSelectedLastName = "Couple"
      lastPersonSelectedFirstName = "Cute"
    case "Heinlein":
      let imageOfRAHeinlein = UIImage(named: "RAHeinlein")
      self.imageView.image = imageOfRAHeinlein
      lastPersonSelectedLastName = "Heinlein"
      lastPersonSelectedFirstName = "Robert"
    case "McClure":
      let imageOfMMcClure = UIImage(named: "MMcClure")
      self.imageView.image = imageOfMMcClure
      lastPersonSelectedLastName = "McClure"
      lastPersonSelectedFirstName = "Matthew"
    case "Collins":
      let imageOfFCollins = UIImage(named: "FCollins")
      self.imageView.image = imageOfFCollins
      lastPersonSelectedLastName = "Collins"
      lastPersonSelectedFirstName = "Francis"
    case "Turing":
      let imageOfAlanTuring = UIImage(named: "AlanTuring")
      self.imageView.image = imageOfAlanTuring
      lastPersonSelectedLastName = "Turing"
      lastPersonSelectedFirstName = "Alan"
    case "Snow":
      let imageOfAuroraSnow = UIImage(named: "AuroraSnow")
      self.imageView.image = imageOfAuroraSnow
      lastPersonSelectedLastName = "Snow"
      lastPersonSelectedFirstName = "Aurora"
    default:
      break
    }

    self.setupTextFields()

  }

// Fun with overloading:]
  func setupTextFields(shortVer: Int) -> String {
    self.lastNameTextField.delegate = self
    return self.selectedPerson.lastName
  }
  func setupTextFields() {
    self.firstNameTextField.delegate = self
    self.lastNameTextField.delegate = self
    self.firstNameTextField.tag = 0
    self.lastNameTextField.tag = 1
  }

   func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()  // dismiss keyboard
    return false // true or false
  }

   func textFieldDidEndEditing(textField: UITextField) {  // Used more-clear switch to asign per tags.
    switch textField.tag {
    case 0:
      self.selectedPerson.firstName = textField.text
    case 1:
      self.selectedPerson.lastName = textField.text
    default:
      break
    }

      if textField.tag == 1 {
        cameraMissingAlert.textColor = UIColor.blueColor()
        cameraMissingAlert.text = "Guess this man's name"
        if selectedPerson.lastName == lastPersonSelectedLastName {

          if selectedPerson.firstName == lastPersonSelectedFirstName {
            cameraMissingAlert.textColor = UIColor.greenColor()
            cameraMissingAlert.text = "You got it!"

          } else {
            cameraMissingAlert.textColor = UIColor.redColor()
            cameraMissingAlert.text = "Opps, try again"
          }
        }
      }
    if textField.tag == 0 {
      cameraMissingAlert.textColor = UIColor.blueColor()
      cameraMissingAlert.text = "Guess this man's name"
      if selectedPerson.firstName == lastPersonSelectedFirstName {
        if selectedPerson.lastName == lastPersonSelectedLastName {

          cameraMissingAlert.textColor = UIColor.greenColor()
          cameraMissingAlert.text = "You got it!"

        } else {
          cameraMissingAlert.textColor = UIColor.redColor()
          cameraMissingAlert.text = "Opps, try again"
        }
      }
    }
  }


  @IBAction func photoButtonPressed(sender: AnyObject) {
    cameraMissingAlert.textColor = UIColor.blueColor()
    self.cameraMissingAlert.text = "Guess this man's name"

    let imagePickerController = UIImagePickerController()
    imagePickerController.delegate = self
    imagePickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
    imagePickerController.allowsEditing = true

    if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {
      self.presentViewController(imagePickerController, animated: true, completion: nil)
    } else {  // Warn the user of the missing photos (highly unlikely, nearly imposible)
        self.cameraMissingAlert.text = "No Photos found"
    }
  }

                              // Added optional binding.
   func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject: AnyObject]) {
    if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
      self.imageView.image = image
      self.selectedPerson.actualImage = image  // This adds the image from the PhotoLibrary to the selectedPerson: Person!  up top.
      // Thusly setting the stage for saving the aforementioned image to Documents/archive. 
      picker.dismissViewControllerAnimated(true, completion: nil)
    }
  }

}
