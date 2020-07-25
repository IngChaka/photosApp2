//
//  ViewController.swift
//  photosApp2
//
//  Created by user177342 on 7/25/20.
//  Copyright © 2020 IngChaka. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UINavigationControllerDelegate {

    var myCollectionView: UICollectionView!
    var imageArray=[UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "Photos"
        
        let layout = UICollectionViewFlowLayout()
        
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView.delegate=self
        myCollectionView.dataSource=self
        myCollectionView.register(PhotoItemCell.self, forCellWithReuseIdentifier: "Cell")
        myCollectionView.backgroundColor=UIColor.white
        self.view.addSubview(myCollectionView)
        
        myCollectionView.autoresizingMask = UIView.Autoresizing(rawValue:
            UIView.Autoresizing.RawValue(UInt8(UIView.Autoresizing.flexibleWidth.rawValue) |
                UInt8(UIView.Autoresizing.flexibleHeight.rawValue)))
        
        grabPhotos()
        
    }


}

class PhotoItemCell: UICollectionViewCell {
    var img = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        img.contentMode = .scaleAspectFill
        img.clipsToBounds=true
        self.addSubview(img)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        img.frame = self.bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    }
}

