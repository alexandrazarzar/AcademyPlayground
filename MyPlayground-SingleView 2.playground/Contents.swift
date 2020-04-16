//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
import AVFoundation

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
        button.frame = CGRect(x: 14, y: 541, width: 347, height: 63)
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
             
        view.addSubview(fundoView)
        view.addSubview(notasView)
        view.addSubview(label)
        view.addSubview(button)
        self.view = view
    }
    @objc func tapButton() {
           print("Apertou botão da FirstViewController")
     
           show(secondViewController, sender: nil)
       }
}
let firstViewController = FirstViewController()
//-------------------------------------------------------------------------------------------------
class SecondViewController: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        //checkButton
        let checkButtonIm = "check.png"
        let checkButtonImage = UIImage(named: checkButtonIm)
        let checkButton = UIButton(frame: CGRect(x: 79, y: 582, width: 191, height: 127))
        checkButton.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        checkButton.setImage(checkButtonImage, for: .normal)
        
        
        //backButton
        let backButtonIm = "returnButton.png"
        let backButtonImage = UIImage(named: backButtonIm)
        
        let backButton = UIButton(frame: CGRect(x: 9, y: 1.89, width: 100, height: 67.21))
        backButton.addTarget(nil, action: #selector(tapBackButton), for: .touchUpInside)
        backButton.setImage(backButtonImage, for: .normal)
        
        let fundo = "fundoazul.png"
        let image = UIImage(named: fundo)
        let fundoView = UIImageView(image: image!)
        fundoView.frame = CGRect(x: 0, y: 0, width: 375, height: 1000)
        
        let componentes = "Componentes1.png"
        let image2 = UIImage(named: componentes)
        let compoView = UIImageView(image: image2!)
        compoView.frame = CGRect(x: 26, y: 96.55, width: 328, height: 484.74)
        
        view.addSubview(fundoView)
        view.addSubview(compoView)
        view.addSubview(backButton)
        view.addSubview(checkButton)
        self.view = view
    }
    
    @objc func tapButton() {
        print("Apertou botão da SecondViewController")
        show(thirdViewController, sender: nil)
    }
    @objc func tapBackButton() {
        print("Voltou tela principal")
        dismiss(animated: true, completion: nil)
    }
}
let secondViewController = SecondViewController()
secondViewController.modalPresentationStyle = .fullScreen
//------------------------------------------------------------------------------------------
class ThirdViewController: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .yellow
        
        let button = UIButton(frame: CGRect(x: 60, y: 400, width: 250, height: 100))
        button.setTitle("Exibir SecondViewController", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        
        view.addSubview(button)
        self.view = view
    }
    
    @objc func tapButton() {
        print("Apertou botão da ThirdViewController")
        dismiss(animated: true, completion: nil)

    }
}
class FourthViewController: UIViewController {
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .yellow
        
        let button = UIButton(frame: CGRect(x: 60, y: 400, width: 250, height: 100))
        button.setTitle("Exibir SecondViewController", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(nil, action: #selector(tapButton), for: .touchUpInside)
        
        view.addSubview(button)
        self.view = view
    }
    
    @objc func tapButton() {
        print("Apertou botão da FourthViewController")
        dismiss(animated: true, completion: nil)

    }
}
// Present the view controller in the Live View window
let thirdViewController = ThirdViewController()
let fourthViewController = FourthViewController()


PlaygroundPage.current.liveView = firstViewController
//let vc = MyViewController(screenType: .ipadPro12_9, isPortrait: false)
//PlaygroundPage.current.liveView = vc.scale(to: 0.5)

/*
 func showFontsNames(){     //Shows the names of the available fonts ordered by name     for family in UIFont.familyNames.sorted(){         let names = UIFont.fontNames(forFamilyName: family)         print("Family: \(family) Font names:\(names)")     } }
 */



