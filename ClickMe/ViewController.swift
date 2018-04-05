//
//  ViewController.swift
//  ClickMe
//
//  Created by yossatron on 5/4/2561 BE.
//  Copyright © 2561 yossatron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var SuccessImag: UIImageView!
    @IBOutlet weak var StartBtn: UIButton!
    @IBOutlet weak var Status: UILabel!
    @IBOutlet weak var wrong: UIImageView!
    @IBOutlet weak var Numb1: UIButton!
    @IBOutlet weak var Numb2: UIButton!
    @IBOutlet weak var Numb3: UIButton!
    @IBOutlet weak var Numb4: UIButton!
    @IBOutlet weak var Numb5: UIButton!
    @IBOutlet weak var Numb6: UIButton!
    @IBOutlet weak var Numb7: UIButton!
    @IBOutlet weak var Numb8: UIButton!
    @IBOutlet weak var Numb9: UIButton!
    @IBOutlet weak var inputNumber: UITextField!
    
    var MaxNumber = 0
    var strStart:String = ""
    var RandomArray = [Int]()
    var CurrentPosition = 0
    let PressedColor = UIColor.black
    let UnPressColor = UIColor.blue

    @IBAction func onNumb1Pressed(_ sender: UIButton) {
        if(RandomArray[CurrentPosition] == 1){
            Numb1.backgroundColor = PressedColor
            Numb1.isEnabled = false
            if(CurrentPosition == (MaxNumber - 1)){
                ShowSucced()
            }else{
                wrong.isHidden = true
                CurrentPosition = CurrentPosition+1
            }
        }
        else{
            BtnStartOver()
        }
    }
    @IBAction func onNumb2Pressed(_ sender: UIButton) {
        if(RandomArray[CurrentPosition] == 2){
            Numb2.backgroundColor = PressedColor
            Numb2.isEnabled = false
            if(CurrentPosition == (MaxNumber - 1)){
                ShowSucced()
            }else{
                wrong.isHidden = true
                CurrentPosition = CurrentPosition+1
            }
        }
        else{
            BtnStartOver()
        }
    }
    @IBAction func onNumb3Pressed(_ sender: UIButton) {
        if(RandomArray[CurrentPosition] == 3){
            Numb3.backgroundColor = PressedColor
            Numb3.isEnabled = false
            if(CurrentPosition == (MaxNumber - 1)){
                ShowSucced()
            }else{
                wrong.isHidden = true
                CurrentPosition = CurrentPosition+1
            }
        }
        else{
            BtnStartOver()
        }
    }
    @IBAction func onNumb4Pressed(_ sender: UIButton) {
        if(RandomArray[CurrentPosition] == 4){
            Numb4.backgroundColor = PressedColor
            Numb4.isEnabled = false
            if(CurrentPosition == (MaxNumber - 1)){
                ShowSucced()
            }else{
                wrong.isHidden = true
                CurrentPosition = CurrentPosition+1
            }
        }
        else{
            BtnStartOver()
        }
    }
    @IBAction func onNumb5Pressed(_ sender: UIButton) {
        if(RandomArray[CurrentPosition] == 5){
            Numb5.backgroundColor = PressedColor
            Numb5.isEnabled = false
            if(CurrentPosition == (MaxNumber - 1)){
                ShowSucced()
            }else{
                wrong.isHidden = true
                CurrentPosition = CurrentPosition+1
            }
        }
        else{
            BtnStartOver()
        }
    }
    @IBAction func onNumb6Pressed(_ sender: UIButton) {
        if(RandomArray[CurrentPosition] == 6){
            Numb6.backgroundColor = PressedColor
            Numb6.isEnabled = false
            if(CurrentPosition == (MaxNumber - 1)){
                ShowSucced()
            }else{
                wrong.isHidden = true
                CurrentPosition = CurrentPosition+1
            }
        }
        else{
            BtnStartOver()
        }
    }
    @IBAction func onNumb7Pressed(_ sender: UIButton) {
        if(RandomArray[CurrentPosition] == 7){
            Numb7.backgroundColor = PressedColor
            Numb7.isEnabled = false
            if(CurrentPosition == (MaxNumber - 1)){
                ShowSucced()
            }else{
                wrong.isHidden = true
                CurrentPosition = CurrentPosition+1
            }
        }
        else{
            BtnStartOver()
        }
    }
    @IBAction func onNumb8Pressed(_ sender: UIButton) {
        if(RandomArray[CurrentPosition] == 8){
            Numb8.backgroundColor = PressedColor
            Numb8.isEnabled = false
            if(CurrentPosition == (MaxNumber - 1)){
                ShowSucced()
            }else{
                wrong.isHidden = true
                CurrentPosition = CurrentPosition+1
            }
        }
        else{
            BtnStartOver()
        }
    }
    @IBAction func onNumb9Pressed(_ sender: UIButton) {
        if(RandomArray[CurrentPosition] == 9){
            Numb9.backgroundColor = PressedColor
            Numb9.isEnabled = false
            if(CurrentPosition == (MaxNumber - 1)){
                ShowSucced()
            }else{
                wrong.isHidden = true
                CurrentPosition = CurrentPosition+1
            }
        }
        else{
            BtnStartOver()
        }
    }
    func ShowSucced(){
        HiddenObject(true)
        SuccessImag.isHidden = false
        inputNumber.isHidden = false
        StartBtn.isHidden = false
    }
    func HiddenObject(_ status :Bool){
        SuccessImag.isHidden = status
        StartBtn.isHidden = status
        inputNumber.isHidden = status
        wrong.isHidden = status
        
        Status.isHidden = status
        Numb1.isHidden = status
        Numb2.isHidden = status
        Numb3.isHidden = status
        Numb4.isHidden = status
        Numb5.isHidden = status
        Numb6.isHidden = status
        Numb7.isHidden = status
        Numb8.isHidden = status
        Numb9.isHidden =  status
    }
    func BtnStartOver() {
        ReadyToPlayStatus(true)
        SetNButtonBK(UnPressColor)
        EnableNButton(true)
        
        strStart = ""
        Status.text = strStart
        CurrentPosition = 0
        wrong.isHidden = false
    }
    @IBAction func onStartButton(sender: UIButton){
        var CheckError = 0
        if let IntTeam = Int(inputNumber.text!){
            MaxNumber = IntTeam
        }
        else{
            MaxNumber = 0
            CheckError = -1
        }
        if(CheckError == 0){
        if (inputNumber.text  != nil && inputNumber.text != "") {
            MaxNumber = Int(inputNumber.text!)!
            if(MaxNumber >= 1 && MaxNumber <= 9){
                strStart = ""
                Status.text = strStart
                RandomArray = [Int]()
                CurrentPosition = 0
                
                ReadyToPlayStatus(true)
                SetNButtonBK(UnPressColor)
                EnableNButton(true)
                
                var CountArr = 0
                var RandomNumber = -1
                var DupicateNumber = true
                
                while (CountArr < MaxNumber)
                {
                    DupicateNumber = true
                    while (DupicateNumber){
                        RandomNumber = (Int)(arc4random_uniform(9))
                        DupicateNumber = CheckRepeatNumber(CountArr,(RandomNumber+1))
                    }
                    RandomArray.append(RandomNumber+1)
                    CountArr = CountArr+1
                }
     
            }
        }
    }
    }
    func ShowRandomValue() -> String{
         var strResult = ""
         var CountArr = 0
        while (CountArr < MaxNumber) {
            strResult += (String)(RandomArray[CountArr]) + ""
            CountArr = CountArr+1
            
        }
        return strResult
    }
    
    func CheckRepeatNumber(_ CountArr:Int,_ RandomNumber:Int)-> Bool{
        var DupicateNumber = false
        var CountLoop = 0
        while (CountLoop < CountArr) {
            if(RandomNumber == RandomArray[CountLoop]){
                DupicateNumber = true
                break
            }
            CountLoop = CountLoop + 1
        }
        return DupicateNumber
    }
    func EnableNButton(_ Status:Bool){
        Numb1.isEnabled = Status
        Numb2.isEnabled = Status
        Numb3.isEnabled = Status
        Numb4.isEnabled = Status
        Numb5.isEnabled = Status
        Numb6.isEnabled = Status
        Numb7.isEnabled = Status
        Numb8.isEnabled = Status
        Numb9.isEnabled = Status

    }
    func SetNButtonBK(_ BKColor:UIColor) {
        Numb1.backgroundColor = BKColor
        Numb2.backgroundColor = BKColor
        Numb3.backgroundColor = BKColor
        Numb4.backgroundColor = BKColor
        Numb5.backgroundColor = BKColor
        Numb6.backgroundColor = BKColor
        Numb7.backgroundColor = BKColor
        Numb8.backgroundColor = BKColor
        Numb9.backgroundColor = BKColor



    }
    
    func ReadyToPlayStatus(_ status:Bool){
        SuccessImag.isHidden = status
        StartBtn.isHidden = status
        inputNumber.isHidden = status
        wrong.isHidden = status
        
        Status.isHidden = !status
        Numb1.isHidden = !status
        Numb2.isHidden = !status
        Numb3.isHidden = !status
        Numb4.isHidden = !status
        Numb5.isHidden = !status
        Numb6.isHidden = !status
        Numb7.isHidden = !status
        Numb8.isHidden = !status
        Numb9.isHidden = !status

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
}

