//
//  ViewController.swift
//  Silly Song
//
//  Created by Mayur Yewale with  at MB on 6/14/19.
//  Copyright © 2019 Mayur Yewale with  at MB. All rights reserved.
//

import UIKit

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}

extension ViewController: UITextViewDelegate {
    func textViewShouldReturn(_ textView: UITextView) -> Bool {
        textView.resignFirstResponder()
        return false
    }
}
func shortNameFromName(name:String)->String
{
    var str1=String(name.lowercased())
    
    let arr1=["a","e","i","o","u"]
    var i:Int=0
    var b=false
    
    for char in str1 {
        i=i+1;
        if(arr1.contains(String(char))){
            b=true
            break
        }
    }
    
    let index = str1.index(str1.startIndex, offsetBy: i-1)
    let str2 = str1.suffix(from: index)
    
    //if no vowels in string return whole string else return from first vowel
    if b==false {
        return str1
    }
    else
    {
        return String(str2)
    }
}

func lyricsForName(temp1:String,temp2:String)->String
{
    var str3=String()
    str3=temp1
    
    //short name return from function
    var str4=shortNameFromName(name: temp2)
    let index = temp2.index(temp2.startIndex, offsetBy:1)
    
    var str5=String()
    str5.append(temp2[temp2.startIndex])
    str5.append(contentsOf: temp2.suffix(from: index).lowercased())
    
    //replace full name and short name
    str3=str3.replacingOccurrences(of: "<FULL_NAME>", with: str5)
    str3=str3.replacingOccurrences(of: "<SHORT_NAME>", with: str4)
    
    return str3
}

let template="<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>\nBanana Fana Fo F<SHORT_NAME>\nMe My Mo M<SHORT_NAME>\n<FULL_NAME>"
//var name="Mayur"
//var str2=lyricsForName(temp1: template, temp2: name)
class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var lyricsView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameField.delegate = self
        
    }

    @IBAction func reset(_ sender: Any) {
      //  nameField.text=""
       // lyricsView.text=""
    }
    
    @IBAction func displayLyrics(_ sender: Any) {
        lyricsView.text=lyricsForName(temp1:template,temp2:nameField.text!)
    }
    
}

