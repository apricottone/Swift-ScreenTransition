//
//  ViewController.swift
//  transitionSample
//
//  Created by mizoz on 2021/07/12.
//

import UIKit

// UIViewControllerを継承（機能などを）
class ViewController: UIViewController {

    // テキストフィールド
    @IBOutlet weak var textField: UITextField!
    
    // 画面遷移ボタンタップ処理
    @IBAction func didTapTransitionButton(_ sender: Any) {
        // テキストフィールドの値を代入
        let text = textField.text
        // Segueによる画面遷移のメソッド
        // sender : 次の画面に受け渡したいパラメータ
        // self = ViewController（UIViewControllerを継承）
        self.performSegue(withIdentifier: "SecondViewController", sender: text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 画面遷移イベントをフックする（遷移前の事前準備）
    // override : 継承元のクラスにもとから定義されているメソッドを上書きする
    // sender : performSegueのsenderと同値
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueからSecondViewControllerを取得
        if let secondViewController = segue.destination as? SecondViewController {
            // senderをStringにキャストする
            let paramater = sender as? String
            // SecondViewControllerのinputtedTextにparamaterを設定
            secondViewController.inputtedText = paramater
        }
    }


}

