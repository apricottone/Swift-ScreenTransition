//
//  SecondViewController.swift
//  transitionSample
//
//  Created by mizoz on 2021/07/12.
//

// UIViewControllerはUIKitで定義されているので
import UIKit

class SecondViewController: UIViewController {
    // 入力された文字列を表示するラベル
    @IBOutlet weak var inputtedTextLabel: UILabel!
    
    // 入力された文字列を格納しておくプロパティ
    // ? : nilの場合を含めて定義（UITextFieldの初期値：nil）
    var inputtedText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // inputtedTextLabelの表示をinpputtedTextの値にする
        self.inputtedTextLabel.text = self.inputtedText
    }
}
