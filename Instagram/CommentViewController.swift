//
//  CommentViewController.swift
//  Instagram
//
//  Created by USER on 2020/07/21.
//  Copyright © 2020 shogo.ujiie. All rights reserved.
//

import UIKit
import Firebase

class CommentViewController: UIViewController {
    
    var postData: PostData!
    
    @IBOutlet weak var commentTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func postCommentButton(_ sender: Any) {
        let userName = postData.name
        let postId = postData.id
        var previousComment = postData.comments
        // likesに更新データを書き込む
        let postRef = Firestore.firestore().collection(Const.PostPath).document(postId)
        
        previousComment.append("\(userName!): \(commentTextField.text!)\n")
        
        let commentValue = previousComment
        postRef.updateData(["comments": commentValue])
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func dissmissButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
