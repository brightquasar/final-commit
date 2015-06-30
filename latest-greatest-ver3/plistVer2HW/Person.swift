//  Person.swift, FinalVer5
//  Created by Richard H Woolley on 6/22/15, Copyright (c) 2015 Bright Quasar Software, R.Woolley.
import UIKit

class Person: NSObject, NSCoding  {
  var firstName: String
  var lastName: String
  var title: String
  var imageName: String
  var actualImage: UIImage!

  init (first: String, last: String, sanity: String, imageStringName: String, AnImage: UIImage!) {
    self.firstName = first
    self.lastName = last
    self.title = sanity
    self.imageName = imageStringName
    self.actualImage = AnImage
  }

  required init(coder aDecoder: NSCoder) {
    self.firstName = aDecoder.decodeObjectForKey("firstName") as! String
    self.lastName = aDecoder.decodeObjectForKey("lastName") as! String
    self.title = aDecoder.decodeObjectForKey("title") as! String
    self.imageName = aDecoder.decodeObjectForKey("imageName") as! String

    let ricksData = aDecoder.decodeObjectForKey("actualImage") as! NSData
    let ricksImage = UIImage(data: ricksData)
    self.actualImage = ricksImage
  }

  func encodeWithCoder(aCoder: NSCoder) {

    if let image = self.actualImage {
      let actualImage = UIImagePNGRepresentation(image)
      aCoder.encodeObject(actualImage, forKey: "actualImage")
    }

    aCoder.encodeObject(self.firstName, forKey: "firstName")
    aCoder.encodeObject(self.lastName, forKey: "lastName")
    aCoder.encodeObject(self.title, forKey: "title")
    aCoder.encodeObject(self.imageName, forKey: "imageName")
  }

}
