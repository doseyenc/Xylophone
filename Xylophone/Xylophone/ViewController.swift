import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        var buttonText = "C"
        switch sender.titleLabel?.text {
        case "C":
            buttonText = "C"
            break
        case "D":
            buttonText = "D"
            break
        case "E":
            buttonText = "E"
            break
        case "F":
            buttonText = "F"
            break
        case "G":
            buttonText = "G"
            break
        case "A":
            buttonText = "A"
            break
        case "B":
            buttonText = "B"
            break
        default:
            buttonText = "C"
            break
        }
        playSound(text:buttonText)
    }
    
    func playSound(text:String) {
        let url = Bundle.main.url(forResource: text, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

