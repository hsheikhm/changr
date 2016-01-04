
import UIKit
import Firebase


class ViewReceiverProfileController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var fullNameDisplay: UILabel!
    @IBOutlet weak var emailDisplay: UILabel!
    @IBOutlet weak var dateOfBirthDisplay: UILabel!
    @IBOutlet weak var genderDisplay: UILabel!
    
    var ref: Firebase!
    var beaconData: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Firebase(url: "https://changr.firebaseio.com/users")
        getReceiverFromDatabaseAndDisplayData()
    }
    
    func getReceiverFromDatabaseAndDisplayData() {
        
        // Get receiver from database:
        
        ref.observeEventType(.Value, withBlock: { snapshot in
            for item in snapshot.children {
                let child = item as! FDataSnapshot
                let value = child.value as! NSDictionary
                    if value["beaconMinor"] as! String == self.beaconData {
                        let currentReceiver = child.value as! NSDictionary
                        
                        // Display the receiver's details:
                        
                        self.displayReceiverProfileImage((currentReceiver["profileImage"] as? String)!)
                        self.fullNameDisplay.text = currentReceiver["fullName"] as? String
                        self.emailDisplay.text = currentReceiver["email"] as? String
                        self.dateOfBirthDisplay.text = currentReceiver["dateOfBirth"] as? String
                        self.genderDisplay.text = currentReceiver["gender"] as? String
                    }
            }
        })
    }
    
    // This decodes the base64string into an UIImage:
    
    func displayReceiverProfileImage(imageString: String) {
        let decodedData = NSData(base64EncodedString: imageString, options: NSDataBase64DecodingOptions.IgnoreUnknownCharacters)
        let decodedImage = UIImage(data: decodedData!)
        self.profileImageView.image = decodedImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}