//
//  genreSroll.swift
//  Shuffle Play
//
//  Created by Tyler Phillips on 3/2/18.
//  Copyright © 2018 Tyler Phillips. All rights reserved.
//

import Foundation
import UIKit
import MediaPlayer

class genreScroll: UIViewController {
	
	let mainButtonTapped: UIButton = {
		let button = MenuController.controllerButton()
		button.setTitle("Home", for: .normal)
		button.setTitleColor(.white, for: .normal)
		if let homeImage  = UIImage(named: "music-white.png") {
			button.setImage(homeImage, for: .normal)
		}
		button.addTarget(self, action: #selector(mainButtonTapped(_:)), for:.touchUpInside)
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()
	
	//Genre Shuffle Play textView
	let genreTextView: UITextView = {
		let textView = ProfileController.createTextView()
		textView.font = UIFont(name:"Avenir Next", size: 25.0)
		textView.text = "Select Your Main Genre"
		textView.translatesAutoresizingMaskIntoConstraints = false
		return textView
	}()
	
	//Blues Button
	let BluesButton: UIButton = {
		let btn = createSPButton()
		btn.setTitle("Blues", for: .normal)
		btn.addTarget(self, action: #selector(BluesButton(_:)), for:.touchUpInside)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()
	
	//Pop Button
	let PopButton: UIButton = {
		let btn = createSPButton()
		btn.setTitle("Pop", for: .normal)
		btn.layer.borderWidth = 2
		btn.addTarget(self, action: #selector(PopButton(_:)), for:.touchUpInside)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()
	
	//Country Button
	let CountryButton: UIButton = {
		let btn = createSPButton()
		btn.setTitle("Country", for: .normal)
		btn.addTarget(self, action: #selector(CountryButton(_:)), for:.touchUpInside)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()
	
	//Electronic Button
	let ElectronicButton: UIButton = {
		let btn = createSPButton()
		btn.setTitle("Electronic", for: .normal)
		btn.addTarget(self, action: #selector(ElectronicButton(_:)), for:.touchUpInside)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()
	
	//Singer/Songwriter Button
	let SingerButton: UIButton = {
		let btn = createSPButton()
		btn.setTitle("Singer/Songwriter", for: .normal)
		btn.addTarget(self, action: #selector(SingerButton(_:)), for:.touchUpInside)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()
	
	//R&B/Soul Button
	let RBSoulButton: UIButton = {
		let btn = createSPButton()
		btn.setTitle("R&B/Soul", for: .normal)
		btn.addTarget(self, action: #selector(RBSoulButton(_:)), for:.touchUpInside)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()
	
	//Dance
	let DanceButton: UIButton = {
		let btn = createSPButton()
		btn.setTitle("Dance", for: .normal)
		btn.addTarget(self, action: #selector(DanceButton(_:)), for:.touchUpInside)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()
	
	//HipHop/Rap Button
	let HipHopRapButton: UIButton = {
		let btn = createSPButton()
		btn.setTitle("Hip-Hop/Rap", for: .normal)
		btn.addTarget(self, action: #selector(DanceButton(_:)), for:.touchUpInside)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()
	
	//Alternative Button
	let AlternativeButton: UIButton = {
		let btn = createSPButton()
		btn.setTitle("Alternative", for: .normal)
		btn.addTarget(self, action: #selector(DanceButton(_:)), for:.touchUpInside)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()
	
	//Rock Button
	let RockButton: UIButton = {
		let btn = createSPButton()
		btn.setTitle("Rock", for: .normal)
		btn.addTarget(self, action: #selector(DanceButton(_:)), for:.touchUpInside)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()
	
	//Christian/Gospel
	let ChristianButton: UIButton = {
		let btn = createSPButton()
		btn.setTitle("Christian/Gospel", for: .normal)
		btn.addTarget(self, action: #selector(DanceButton(_:)), for:.touchUpInside)
		btn.translatesAutoresizingMaskIntoConstraints = false
		return btn
	}()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let screensize: CGRect = UIScreen.main.bounds
		let screenWidth = screensize.width
		let screenHeight = screensize.height
		var scrollView: UIScrollView!
		scrollView = UIScrollView(frame: CGRect(x: 0, y: 18, width: screenWidth, height: screenHeight))
		
		view.backgroundColor = UIColor.orange
		scrollView.backgroundColor = UIColor .orange
		
		scrollView.addSubview(mainButtonTapped)
		scrollView.addSubview(genreTextView)
		scrollView.addSubview(BluesButton)
		scrollView.addSubview(CountryButton)
		scrollView.addSubview(PopButton)
		scrollView.addSubview(ElectronicButton)
		scrollView.addSubview(SingerButton)
		scrollView.addSubview(RBSoulButton)
		scrollView.addSubview(DanceButton)
		scrollView.addSubview(HipHopRapButton)
		scrollView.addSubview(AlternativeButton)
		scrollView.addSubview(RockButton)
		scrollView.addSubview(ChristianButton)
		
		//MARK: AutoLayout Constraints
		NSLayoutConstraint(item: mainButtonTapped, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 20).isActive = true
		NSLayoutConstraint(item: mainButtonTapped, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 35 ).isActive = true
		NSLayoutConstraint(item: mainButtonTapped, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 5).isActive = true
		NSLayoutConstraint(item: mainButtonTapped, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 35).isActive = true
		
		NSLayoutConstraint(item: genreTextView, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 50).isActive = true
		NSLayoutConstraint(item: genreTextView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 260 ).isActive = true
		NSLayoutConstraint(item: genreTextView, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 10).isActive = true
		NSLayoutConstraint(item: genreTextView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30).isActive = true
		
		NSLayoutConstraint(item: BluesButton, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 50).isActive = true
		NSLayoutConstraint(item: BluesButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 260).isActive = true
		NSLayoutConstraint(item: BluesButton, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 100).isActive = true
		NSLayoutConstraint(item: BluesButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 130).isActive = true

		NSLayoutConstraint(item: CountryButton, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 50).isActive = true
		NSLayoutConstraint(item: CountryButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 260).isActive = true
		NSLayoutConstraint(item: CountryButton, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 250).isActive = true
		NSLayoutConstraint(item: CountryButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 130).isActive = true

		NSLayoutConstraint(item: PopButton, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 50).isActive = true
		NSLayoutConstraint(item: PopButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 260).isActive = true
		NSLayoutConstraint(item: PopButton, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 400).isActive = true
		NSLayoutConstraint(item: PopButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 130).isActive = true
		
		NSLayoutConstraint(item: ElectronicButton, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 50).isActive = true
		NSLayoutConstraint(item: ElectronicButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 260).isActive = true
		NSLayoutConstraint(item: ElectronicButton, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 550).isActive = true
		NSLayoutConstraint(item: ElectronicButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 130).isActive = true

		NSLayoutConstraint(item: SingerButton, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 50).isActive = true
		NSLayoutConstraint(item: SingerButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 260).isActive = true
		NSLayoutConstraint(item: SingerButton, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 700).isActive = true
		NSLayoutConstraint(item: SingerButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 130).isActive = true
		
		NSLayoutConstraint(item: RBSoulButton, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 50).isActive = true
		NSLayoutConstraint(item: RBSoulButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 260).isActive = true
		NSLayoutConstraint(item: RBSoulButton, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 850).isActive = true
		NSLayoutConstraint(item: RBSoulButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 130).isActive = true
		
		NSLayoutConstraint(item: DanceButton, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 50).isActive = true
		NSLayoutConstraint(item: DanceButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 260).isActive = true
		NSLayoutConstraint(item: DanceButton, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 1000).isActive = true
		NSLayoutConstraint(item: DanceButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 130).isActive = true
		
		NSLayoutConstraint(item: HipHopRapButton, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 50).isActive = true
		NSLayoutConstraint(item: HipHopRapButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 260).isActive = true
		NSLayoutConstraint(item: HipHopRapButton, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 1150).isActive = true
		NSLayoutConstraint(item: HipHopRapButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 130).isActive = true
		
		NSLayoutConstraint(item: AlternativeButton, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 50).isActive = true
		NSLayoutConstraint(item: AlternativeButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 260).isActive = true
		NSLayoutConstraint(item: AlternativeButton, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 1300).isActive = true
		NSLayoutConstraint(item: AlternativeButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 130).isActive = true
		
		NSLayoutConstraint(item: RockButton, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 50).isActive = true
		NSLayoutConstraint(item: RockButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 260).isActive = true
		NSLayoutConstraint(item: RockButton, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 1450).isActive = true
		NSLayoutConstraint(item: RockButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 130).isActive = true
		
		NSLayoutConstraint(item: ChristianButton, attribute: .leading, relatedBy: .equal, toItem: scrollView, attribute: .leadingMargin, multiplier: 1, constant: 50).isActive = true
		NSLayoutConstraint(item: ChristianButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 260).isActive = true
		NSLayoutConstraint(item: ChristianButton, attribute: .top, relatedBy: .equal, toItem: scrollView, attribute: .topMargin, multiplier: 1, constant: 1600).isActive = true
		NSLayoutConstraint(item: ChristianButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 130).isActive = true
		
		//Change height to larger size
		scrollView.contentSize = CGSize(width: screenWidth, height: 3000)
		view.addSubview(scrollView)
		
		
		//ViewDidLoadEnd
	}

	static func createSPButton() -> UIButton {
		
		let btn = UIButton()
		btn.tintColor=UIColor .gray
		btn.backgroundColor = UIColor.white
		btn.alpha = 0.4
		btn.setTitleColor(.black, for: .normal)
		btn.layer.cornerRadius = 5
		btn.layer.borderWidth = 2
		btn.layer.borderColor = UIColor.white.cgColor
		
		btn.layer.shadowColor = UIColor.black.cgColor
		btn.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
		btn.layer.masksToBounds = false
		btn.layer.shadowRadius = 2.0
		btn.layer.shadowOpacity = 0.5
		
		return btn
	}
	
	func switchViewController() {
		
	}
	
	
	@objc func BluesButton(_ sender: UIButton) {
		
		let vc = BluesController()
		self.present(vc, animated: true, completion: nil)
		
	}


	@objc func CountryButton(_ sender: UIButton) {
		let vc = CountryController()
		self.present(vc, animated: true, completion: nil)
	
	}

	@objc func PopButton(_ sender: UIButton) {
	
		let vc = PopController()
		self.present(vc, animated: true, completion: nil)
	
	}
	
	@objc func ElectronicButton(_ sender: UIButton) {
		
		let vc = ElectronicController()
		self.present(vc, animated: true, completion: nil)
		
	}
	
	@objc func SingerButton(_ sender: UIButton) {
		
		//Change
		let vc = ElectronicController()
		self.present(vc, animated: true, completion: nil)
		
	}
	
	@objc func RBSoulButton(_ sender: UIButton) {
		
		//Change
		let vc = ElectronicController()
		self.present(vc, animated: true, completion: nil)
		
	}
	
	@objc func DanceButton(_ sender: UIButton) {
		
		//Change
		let vc = ElectronicController()
		self.present(vc, animated: true, completion: nil)
		
	}
	
	@objc func HipHopRapButton(_ sender: UIButton){
		
		let vc = ElectronicController()
		self.present(vc, animated: true, completion: nil)
		
	}
	
	@objc func AlternativeButton(_ sender: UIButton){
		
		let vc = ElectronicController()
		self.present(vc, animated: true, completion: nil)
	}
	
	@objc func RockButton(_ sender: UIButton){
		
		let vc = ElectronicController()
		self.present(vc, animated: true, completion: nil)
	}
	
	@objc func ChristianButton(_ sender: UIButton){
		
		let vc = ElectronicController()
		self.present(vc, animated: true, completion: nil)
	}
	
	
	@objc func mainButtonTapped(_ sender: UIButton){
		
		let vc = MainUIController()
		self.present(vc, animated: true, completion: nil)
		
	}
}
