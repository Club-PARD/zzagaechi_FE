//
//  AddDetailScheduleViewController1.swift
//  Sergei
//
//  Created by 김사랑 on 12/28/24.
//



import UIKit

class AddDetailScheduleViewController1 : UIViewController {
    
    let mainLabel : UILabel = {
        let label = UILabel()
        label.text = "세분화 일정 등록"
        label.font = UIFont(name: "Pretendard-Bold", size: 20)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let backButton : UIButton = {
        let button = UIButton()
        let image = UIImage(named: "Icon-3")
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let cancelButton : UIButton = {
        let button = UIButton()
        button.setTitle("취소", for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 15)
        button.tintColor = #colorLiteral(red: 1, green: 0.2745098039, blue: 0.2745098039, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let headerLabel: UILabel = {
        let label = UILabel()
        let firstPart = "큰 일에 대한"
        let secondPart = "제목을 적어보세요!"
        let combinedText = "\(firstPart)!\n\(secondPart)"
        
        label.text = combinedText
        label.font = .systemFont(ofSize: 30)
        //        label.font = UIFont(name: "Pretendard-Regular", size: 30)//볼더임
        label.textColor = #colorLiteral(red: 0.9999999881, green: 0.9999999881, blue: 0.9999999881, alpha: 1)
        label.numberOfLines = 0 // 여러 줄 지원
        label.lineBreakMode = .byWordWrapping // 단어 단위로 줄바꿈
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subLabel: UILabel = {
        let label = UILabel()
        label.text = "문구 수정 "
        label.font = .systemFont(ofSize: 15)
        label.textColor = #colorLiteral(red: 0.6901960784, green: 0.6901960784, blue: 0.6901960784, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let titleLabel : UILabel = {
        let label = UILabel()
        label.text = "제목"
        label.font = .systemFont(ofSize: 15)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let schedulTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "제목을 입력하세요"
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 12
        textField.font = .systemFont(ofSize: 14)
        //        textField.font = UIFont(name: "Pretendard-Regular", size: 14)
        
        textField.backgroundColor = #colorLiteral(red: 0.137254902, green: 0.137254902, blue: 0.137254902, alpha: 1)
        textField.textColor = #colorLiteral(red: 0.9999999881, green: 0.9999999881, blue: 0.9999999881, alpha: 1)
        textField.layer.borderColor = #colorLiteral(red: 0.7294117647, green: 0.8117647059, blue: 0.9568627451, alpha: 1)
        textField.layer.borderWidth = 2
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let progessbarImage : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "progess")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nextButton : UIButton = {
        let button = UIButton()
        button.setTitle("다음", for: .normal)
        button.titleLabel?.font = UIFont(name: "Pretendard-Bold", size: 15)
        button.backgroundColor = #colorLiteral(red: 0.5591031909, green: 0.571234405, blue: 0.5998923779, alpha: 1)
        button.layer.cornerRadius = 12
        button.tintColor = .white
        return button
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1372549087, green: 0.1372549087, blue: 0.1372549087, alpha: 1)
        setUI()
    }
    
    func setUI(){
        [nextButton].forEach{
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        setupBackButton()
        view.addSubview(mainLabel)
        view.addSubview(backButton)
        view.addSubview(cancelButton)
        view.addSubview(progessbarImage)
        
        view.addSubview(headerLabel)
        view.addSubview(subLabel)
        view.addSubview(titleLabel)
        view.addSubview(schedulTextField)
        
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor , constant: 15),
            
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor , constant: 15),
            backButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor , constant: 33),
            
            cancelButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor , constant: 15),
            cancelButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -28),
            
            progessbarImage.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 60),
            progessbarImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor , constant: 31),
            
            headerLabel.topAnchor.constraint(equalTo: progessbarImage.bottomAnchor , constant: 11),
            headerLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor , constant: 31),
            
            subLabel.topAnchor.constraint(equalTo: headerLabel.bottomAnchor , constant: 16),
            subLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor , constant: 31),
            
            titleLabel.topAnchor.constraint(equalTo: subLabel.bottomAnchor , constant: 35),
            titleLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor , constant: 32),
            
            schedulTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor , constant: 5),
            schedulTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor , constant: 31),
            schedulTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor , constant: -31),
            schedulTextField.heightAnchor.constraint(equalToConstant: 50),
            
            
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor , constant: -49),
            nextButton.heightAnchor.constraint(equalToConstant: 46),
            nextButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 31),
        ])
    }
    
    func setupBackButton() {
        let backButton = UIButton(type: .custom)
        backButton.setImage(UIImage(named: "back"), for: .normal)
        backButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        view.addSubview(backButton)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backButton.widthAnchor.constraint(equalToConstant: 30),
            backButton.heightAnchor.constraint(equalToConstant: 37),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 17),
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
        ])
    }
    
    @objc func dismissVC() {
        let transition = CATransition()
        transition.duration = 0.4
        transition.type = .push
        transition.subtype = .fromLeft
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        view.window?.layer.add(transition, forKey: kCATransition)
        dismiss(animated: false, completion: nil)
    }
}
