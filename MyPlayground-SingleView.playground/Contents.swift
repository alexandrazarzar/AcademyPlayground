//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import AVFoundation
import AVKit

var player: AVAudioPlayer?
func tocaAsCoisa(som: String){
    print("somm")
    let filePath = Bundle.main.path(forResource: som, ofType: "mp3")
    let audioURL = URL(string: filePath!)
    do{
        player = try AVAudioPlayer(contentsOf: audioURL!)
        player?.volume = 40
        player?.prepareToPlay()
        player?.play()
        player?.isPlaying
    } catch{
        print("Error info: \(error)")
    }
    
}


class FirstViewController : UIViewController {

    override func loadView() {

        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 100, y: 60, width: 200, height: 50)
        label.font = UIFont(name:"Arial", size: 48.0)
        label.text = "Melodia"
        label.textColor = .black
        
        let JogarButtonIm = "imagem_jogar.png"
        let JogarButtonImage = UIImage(named: JogarButtonIm)
        let button = UIButton()
      button.frame = CGRect(x: 14, y: 571, width: 347, height: 63)

        button.setImage(JogarButtonImage, for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)

        let fundo = "fundoazul.png"
        let image = UIImage(named: fundo)
        let fundoView = UIImageView(image: image!)
        fundoView.frame = CGRect(x: 0, y: 0, width: 375, height: 1000)
        
        let notasmusicais = "notasmusicais.png"
        let image2 = UIImage(named: notasmusicais)
        let notasView = UIImageView(image: image2!)
               notasView.frame = CGRect(x: 0, y: 21, width: 375, height: 219)
        
        let piPAULca = "piPAULca_pronto.png"
        let imagePi = UIImage(named: piPAULca)
        let piPAULcaView = UIImageView(image: imagePi!)
        piPAULcaView.frame = CGRect(x: 29, y: 220, width: 332, height: 365)
        
                
        view.addSubview(fundoView)
        view.addSubview(notasView)
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(piPAULcaView)
        self.view = view
    }

    //var chompPlayer: AVAudioPlayer?
        //createPlayer(from: "somFliperama")
 
    @objc func tapButton() {
           print("Apertou botão da FirstViewController")
           tocaAsCoisa(som: "somFliperama")
           show(secondViewController, sender: nil)
           
    }

}

let firstViewController = FirstViewController()
//--------------------------------------------------------------------------------------------------------------------

class SecondViewController: UIViewController {
    var certo = false
    var butaumA =  UIButton(frame: CGRect(x: 31, y: 344, width: 55, height: 55))
    var butaumP =  UIButton(frame: CGRect(x: 31, y: 344, width: 55, height: 55))
    var butaumM =  UIButton(frame: CGRect(x: 31, y: 344, width: 55, height: 55))
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        //checkButton
        let checkButtonIm = "check.png"
        let checkButtonImage = UIImage(named: checkButtonIm)
        let checkButton = UIButton(frame: CGRect(x: 79, y: 569, width: 191, height: 127))
        checkButton.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        checkButton.setImage(checkButtonImage, for: .normal)
        
        
        //backButton
        let backButtonIm = "returnButton.png"
        let backButtonImage = UIImage(named: backButtonIm)
        
        let backButton = UIButton(frame: CGRect(x: 9, y: 1.89, width: 100, height: 67.21))
        backButton.addTarget(nil, action: #selector(tapBackButton), for: .touchUpInside)
        backButton.setImage(backButtonImage, for: .normal)
        
        let testeButton = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        testeButton.addTarget(nil, action: #selector(tapTestButton), for: .touchUpInside)
        testeButton.setTitle("play", for: .normal)
        testeButton.setTitleColor(.black, for: .normal)

        
        let fundo = "fundoazul.png"
        let image = UIImage(named: fundo)
        let fundoView = UIImageView(image: image!)
        fundoView.frame = CGRect(x: 0, y: 0, width: 375, height: 1000)
        
        let componentes = "Componentes1.png"
        let image2 = UIImage(named: componentes)
        let compoView = UIImageView(image: image2!)
        compoView.frame = CGRect(x: 28, y: 83, width: 318, height: 472)
        
        let aranha = "aranha.png"
        let aranhaIm = UIImage(named: aranha)
        let aranhaButton = UIButton(frame: CGRect(x: 31, y: 344, width: 55, height: 55))
        aranhaButton.addTarget(nil, action: #selector(tapAranhaButton), for: .touchUpInside)
        aranhaButton.setImage(aranhaIm, for: .normal)
        butaumA = aranhaButton
        
        let passaro = "passaro.png"
        let passaroIm = UIImage(named: passaro)
        let passaroButton = UIButton(frame: CGRect(x: 31, y: 421, width: 55, height: 55))
        passaroButton.addTarget(nil, action: #selector(tapPassaroButton), for: .touchUpInside)
        passaroButton.setImage(passaroIm, for: .normal)
        butaumP = passaroButton
        
        let minhoca = "minhoca.png"
        let minhocaIm = UIImage(named: minhoca)
        let minhocaButton = UIButton(frame: CGRect(x: 31, y: 498, width: 53, height: 53))
        minhocaButton.addTarget(nil, action: #selector(tapMinhocaButton), for: .touchUpInside)
        minhocaButton.setImage(minhocaIm, for: .normal)
        butaumM = minhocaButton
        
        
        view.addSubview(fundoView)
        view.addSubview(compoView)
        view.addSubview(backButton)
        view.addSubview(checkButton)
        view.addSubview(testeButton)
        view.addSubview(aranhaButton)
        view.addSubview(passaroButton)
        view.addSubview(minhocaButton)
        
        self.view = view
    }
    
    @objc func tapButton() {
        //tocaAsCoisa(som: "somFliperama")
        print("Apertou botão da SecondViewController")
        if (certo == true){
            show(thirdViewController, sender: nil)
            tocaAsCoisa(som: "somSucesso")
        }else{
            show(fourthViewController, sender: nil)
            tocaAsCoisa(som: "somFail")
        }
        

    }
    @objc func tapBackButton() {
        print("Voltou tela principal")
        dismiss(animated: true, completion: nil)
        tocaAsCoisa(som: "somFliperama")

    }
    @objc func tapTestButton() {
        print("play")
        if let path = Bundle.main.path(forResource: "heartbeat", ofType: "mov"){
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            self.present(videoPlayer, animated: true, completion: {
                video.play()
                
            })
        }
    }
    let rotate = CGAffineTransform(rotationAngle: 360)
    let scale = CGAffineTransform(scaleX: 1.2, y: 1.2)
    
    @objc func tapAranhaButton() {
        print("Apertou aranha")
        tocaAsCoisa(som: "somHeartbeat")
        UIButton.animate(withDuration: 6, animations: {
            self.butaumA.frame.origin.x += 205
        }, completion: { (value: Bool) in
            self.butaumA.frame.origin.x -= 205
            UIButton.animate(withDuration: 0.5,
            animations: {
                self.butaumA.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)},completion: { _ in
                         UIButton.animate(withDuration: 0.5) {
                         self.butaumA.transform = CGAffineTransform.identity
                        }
            })
        })
        certo = true
    }
    @objc func tapPassaroButton() {
        print("Apertou passaro")
        tocaAsCoisa(som: "somHappy")
        UIButton.animate(withDuration: 5, animations: {
                self.butaumP.frame.origin.x += 205
            }, completion: { (value: Bool) in
                self.butaumP.frame.origin.x -= 205
                UIButton.animate(withDuration: 0.5,
                animations: {
                    self.butaumP.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)},completion: { _ in
                             UIButton.animate(withDuration: 0.5) {
                             self.butaumP.transform = CGAffineTransform.identity
                            }
                })
            })
        certo = false
    }
    @objc func tapMinhocaButton() {
        print("Apertou minhoca")
        tocaAsCoisa(som: "somJaws")
        UIButton.animate(withDuration: 5, animations: {
                 self.butaumM.frame.origin.x += 220
             }, completion: { (value: Bool) in
                 self.butaumM.frame.origin.x -= 220
                 UIButton.animate(withDuration: 0.5,
                 animations: {
                     self.butaumM.transform = CGAffineTransform(scaleX: 1.4, y: 1.4)},completion: { _ in
                              UIButton.animate(withDuration: 0.5) {
                              self.butaumM.transform = CGAffineTransform.identity
                             }
                 })
             })
        certo = false
    }
}
class ThirdViewController: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        
        let fundo = "fundoazul.png"
        let image = UIImage(named: fundo)
        let fundoView = UIImageView(image: image!)
        fundoView.frame = CGRect(x: 0, y: 0, width: 375, height: 1000)
        
        let confetti = "confetti.png"
        let imageCon = UIImage(named: confetti)
        let confettiView = UIImageView(image: imageCon!)
        confettiView.frame = CGRect(x: 0, y: 0, width: 388, height: 375)
        
        let muitoBem = "muitoBem.png"
        let imageMb = UIImage(named: muitoBem)
        let muitoBemView = UIImageView(image: imageMb)
        muitoBemView.frame = CGRect(x: -11, y: 87, width: 380, height: 50)
        
        let button = UIButton(frame: CGRect(x: 14, y: 532, width: 347, height: 88))
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        let ContinuarButtonIm = "continuar_imagem.png"
        let ContinuarButtonImage = UIImage(named: ContinuarButtonIm)
        button.setImage(ContinuarButtonImage, for: .normal)
        
        let piPAULca = "piPAULca_pronto.png"
        let imagePi = UIImage(named: piPAULca)
        let piPAULcaView = UIImageView(image: imagePi!)
               piPAULcaView.frame = CGRect(x: 28, y: 211, width: 319, height: 351)
        
        view.addSubview(fundoView)
        view.addSubview(confettiView)
        view.addSubview(muitoBemView)
        view.addSubview(piPAULcaView)
        view.addSubview(button)
        self.view = view
    }
    
    @objc func tapButton() {
        print("Apertou botão da ThirdViewController")
        dismiss(animated: true, completion: nil)
        tocaAsCoisa(som: "somFliperama")
    }
}
class FourthViewController: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let fundo = "fundoazul.png"
        let image = UIImage(named: fundo)
        let fundoView = UIImageView(image: image!)
        fundoView.frame = CGRect(x: 0, y: 0, width: 375, height: 1000)
        
        let button = UIButton(frame: CGRect(x: 14, y: 532, width: 347, height: 88))
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        let ContinuarButtonIm = "continuar_imagem.png"
        let ContinuarButtonImage = UIImage(named: ContinuarButtonIm)
        button.setImage(ContinuarButtonImage, for: .normal)
        
        let piPAULcaErro = "piPAULca_erro.png"
        let imagePiE = UIImage(named: piPAULcaErro)
        let piPAULcaViewErro = UIImageView(image: imagePiE!)
        piPAULcaViewErro.frame = CGRect(x: 0, y: 230, width: 375, height: 328)
        
        let porPouco = "porPouco.png"
        let porPoucoIm = UIImage(named: porPouco)
        let porPoucoView = UIImageView(image: porPoucoIm)
        porPoucoView.frame = CGRect(x: 7, y: 80, width: 361, height: 99)
        
        
        view.addSubview(fundoView)
        view.addSubview(button)
        view.addSubview(piPAULcaViewErro)
        view.addSubview(porPoucoView)
        self.view = view
    }
    
    @objc func tapButton() {
        print("Apertou botão da FourthViewController")
        dismiss(animated: true, completion: nil)
        tocaAsCoisa(som: "somFliperama")


    }
}
// Present the view controller in the Live View window

let secondViewController = SecondViewController()
secondViewController.modalPresentationStyle = .fullScreen
let thirdViewController = ThirdViewController()
let fourthViewController = FourthViewController()


PlaygroundPage.current.liveView = firstViewController




