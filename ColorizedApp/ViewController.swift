//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Владимир Кувикин on 23.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultColorView: UIView!
    @IBOutlet var valueSliderRed: UILabel!
    @IBOutlet var valueSliderGreen: UILabel!
    @IBOutlet var valueSliderBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSliderRed()
        setupSliderGreen()
        setupSliderBlue()
        valueSliders()
        
        resultColorView.layer.cornerRadius = 20
    }
    
    @IBAction func sliderActionRed() {
        valueSliderRed.text = String(format: "%.2f", sliderRed.value)
        resultColorView.tintColor = sliderRed.minimumTrackTintColor?.withAlphaComponent(CGFloat(sliderRed.value))
    }
    @IBAction func sliderActionGreen() {
        valueSliderGreen.text = String(format: "%.2f", sliderGreen.value)
        resultColorView.tintColor = sliderGreen.minimumTrackTintColor?.withAlphaComponent(CGFloat(sliderGreen.value))
    }
    @IBAction func sliderActionBlue() {
        valueSliderBlue.text = String(format: "%.2f", sliderBlue.value)
        resultColorView.tintColor = sliderBlue.minimumTrackTintColor?.withAlphaComponent(CGFloat(sliderBlue.value))
    }
    

    // MARK: - Private Methods
    
    private func valueSliders() {
        valueSliderRed.text = String(sliderRed.value)
        valueSliderGreen.text = String(sliderGreen.value)
        valueSliderBlue.text = String(sliderBlue.value)
    }
    private func setupSliderRed() {
        sliderRed.value = 0.1
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        sliderRed.minimumTrackTintColor = .red
    }
    private func setupSliderGreen() {
        sliderGreen.value = 0.2
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        sliderGreen.minimumTrackTintColor = .green
    }
    private func setupSliderBlue() {
        sliderBlue.value = 0.3
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
        sliderBlue.minimumTrackTintColor = .blue
    }

//extension Double {
//    func round(to places: Int) -> Double {
//        let divisor = pow(1.0, Double(places))
//        return (self * divisor).rounded() / divisor
//    }
}
