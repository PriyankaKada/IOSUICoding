//
//  ViewController.swift
//  ViewCodingPractice
//
//  Created by DebasishSen on 19/11/19.
//  Copyright © 2019 DebasishSen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let redView=UIView()
        redView.backgroundColor = .red
       
        
        
        
//        redView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.safeAreaLayoutGuide.trailingAnchor,padding: .init(top: 0, left: 16, bottom: 0, right: 16),size: .init(width: 100, height: 100)
//            )
      redView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor,padding: .init(top: 0, left: 0, bottom: 0, right: 12),size: .init(width: 100, height: 100))
        
    
     view.addSubview(redView)
    
    }
    
    
}
extension UIView{
    func anchor(top:NSLayoutYAxisAnchor?,leading:NSLayoutXAxisAnchor?,bottom:NSLayoutYAxisAnchor?,trailing:NSLayoutXAxisAnchor?, padding:UIEdgeInsets = .zero,size:CGSize = .zero)  {
        translatesAutoresizingMaskIntoConstraints=false
        
        if let top=top{
            topAnchor.constraint(equalTo: top,constant:padding.top).isActive=true

            
        }
        
        if let leading=leading{
            leadingAnchor.constraint(equalTo: leading,constant:padding.left).isActive=true

        }
        
        if let bottom=bottom{
        bottomAnchor.constraint(equalTo: bottom,constant:-padding.bottom).isActive=true
        }
        
        if let trailing=trailing{
        trailingAnchor.constraint(equalTo: trailing,constant:-padding.right).isActive=true
        }
        
    }
}

