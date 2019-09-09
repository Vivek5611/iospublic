import UIKit
import AVFoundation
class ViewController: UIViewController ,AVAudioPlayerDelegate{
    
    var audioPlayer = AVAudioPlayer()

    @IBAction func playBtn(_ sender: Any) {
        audioPlayer.play()
        }
    
    @IBAction func pauseBtn(_ sender: Any) {
        audioPlayer.pause()
        }
    
    @IBAction func restartbtn(_ sender: Any) {
        audioPlayer.currentTime = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL.init(fileURLWithPath: Bundle.main.path(
            forResource: "music",
            ofType: "mp3")!)
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            audioPlayer.delegate = self
            audioPlayer.prepareToPlay()
        } catch let error as NSError {
            print("audioPlayer error \(error.localizedDescription)")
        }
        func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully
            flag: Bool) {
        }
        
        func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer,
                                            error: Error?) {
        }
        
        func audioPlayerBeginInterruption(_ player: AVAudioPlayer) {
        }
        
        func audioPlayerEndInterruption(player: AVAudioPlayer) {
        }
    }

    
}
    


