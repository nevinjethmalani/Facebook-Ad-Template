//
//  ViewController.swift
//  FacebookAd
//
//  Created by Nevin Jethmalani on 11/14/16.
//  Copyright © 2016 Nevin Jethmalani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var globeImage3: UIImageView!
    @IBOutlet var globeImage2: UIImageView!
    @IBOutlet var circleView2: UIView!
    @IBOutlet var circleView3: UIView!
    @IBOutlet var shareButton3: UIButton!
    @IBOutlet var commentButton3: UIButton!
    @IBOutlet var likeButton3: UIButton!
    @IBOutlet var logoImage3: UIImageView!
    @IBOutlet var thirdDownloadButton: UIButton!
    @IBOutlet var singleViewBelowImage: UIView!
    @IBOutlet var singleAdImage: UIImageView!
    @IBOutlet var shareButton2: UIButton!
    @IBOutlet var commentButton2: UIButton!
    @IBOutlet var likeButton2: UIButton!
    @IBOutlet var logoImage2: UIImageView!
    @IBOutlet var collectionView2: UICollectionView!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var commentButton: UIButton!
    @IBOutlet var shareButon: UIButton!
    @IBOutlet var logoImage: UIImageView!
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var globeImage: UIImageView!
    @IBOutlet var circleView: UIView!
    @IBOutlet var tabBarImage: UIImageView!
    var adImages: [UIImage] = [UIImage(named:"Asos.jpg")!, UIImage(named:"Club Monaco.jpg")!, UIImage(named:"J. Crew.jpg")!, UIImage(named:"Revolve.jpg")!, UIImage(named:"Tory Burch.jpg")!]
    var adImages2: [UIImage] = [UIImage(named:"Asos 2.jpg")!, UIImage(named:"Club Monaco 2.jpg")!, UIImage(named:"J Crew 2.jpg")!, UIImage(named:"Revolve 2.jpg")!, UIImage(named:"Tory Burch 2.jpg")!]
    var adTitles = ["Never Miss a Sale", "Free Style Consultations", "Shop 100+ Brands", "Easy Checkout", "Shop Looq"]
    var adTitles2 = ["Never Miss a Sale", "Free Style Consultations", "Shop 100+ Brands", "Easy Checkout", "Shop Looq"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        singleViewBelowImage.layer.borderWidth = 1
        singleViewBelowImage.layer.borderColor = UIColor( red: 216/255, green: 216/255, blue:216/255, alpha: 1.0 ).cgColor
        singleViewBelowImage.layer.shadowOffset = CGSize(width: 0,height: 4)
        singleViewBelowImage.layer.shadowRadius = 5
        singleViewBelowImage.layer.shadowOpacity = 50
        singleViewBelowImage.layer.shadowColor = UIColor( red: 89/255, green: 89/255, blue:89/255, alpha: 0.15 ).cgColor

        singleAdImage.layer.borderWidth = 1
        singleAdImage.layer.borderColor = UIColor( red: 216/255, green: 216/255, blue:216/255, alpha: 1.0 ).cgColor

        thirdDownloadButton.layer.cornerRadius = 4
        thirdDownloadButton.layer.borderColor = UIColor( red: 190/255, green: 193/255, blue:200/255, alpha: 1.0 ).cgColor
        thirdDownloadButton.layer.borderWidth = 1
        
        tabBarImage.layer.borderWidth = 1
        tabBarImage.layer.borderColor = UIColor( red: 224/255, green: 224/255, blue:224/255, alpha: 1.0 ).cgColor
        
        likeButton.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        commentButton.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        shareButon.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        
        likeButton2.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        commentButton2.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        shareButton2.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        
        likeButton3.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        commentButton3.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        shareButton3.imageView?.contentMode = UIViewContentMode.scaleAspectFit
        
        logoImage.layer.borderWidth = 1
        logoImage.layer.borderColor = UIColor( red: 216/255, green: 216/255, blue:216/255, alpha: 1.0 ).cgColor
        logoImage2.layer.borderWidth = 1
        logoImage2.layer.borderColor = UIColor( red: 216/255, green: 216/255, blue:216/255, alpha: 1.0 ).cgColor
        logoImage3.layer.borderWidth = 1
        logoImage3.layer.borderColor = UIColor( red: 216/255, green: 216/255, blue:216/255, alpha: 1.0 ).cgColor
        
        globeImage.image = globeImage.image!.withRenderingMode(.alwaysTemplate)
        globeImage.tintColor = UIColor( red: 146/255, green: 150/255, blue:162/255, alpha: 1.0 )
        globeImage2.image = globeImage.image!.withRenderingMode(.alwaysTemplate)
        globeImage2.tintColor = UIColor( red: 146/255, green: 150/255, blue:162/255, alpha: 1.0 )
        globeImage3.image = globeImage.image!.withRenderingMode(.alwaysTemplate)
        globeImage3.tintColor = UIColor( red: 146/255, green: 150/255, blue:162/255, alpha: 1.0 )
        
        
        circleView.layer.cornerRadius = 2
        circleView2.layer.cornerRadius = 2
        circleView3.layer.cornerRadius = 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionView2{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "boardCell", for: indexPath) as! BoardCell
        
        cell.descriptionLabel.text = adTitles[indexPath.row]
        cell.mainImage.image = adImages[indexPath.row]
        //cell.mainView.
        cell.mainImage.layer.borderColor = UIColor( red: 216/255, green: 216/255, blue:216/255, alpha: 1.0 ).cgColor
        cell.mainImage.layer.borderWidth = 1
        cell.downloadButton.layer.cornerRadius = 4
        cell.downloadButton.layer.borderColor = UIColor( red: 190/255, green: 193/255, blue:200/255, alpha: 1.0 ).cgColor
        cell.downloadButton.layer.borderWidth = 1
        cell.mainView.layer.borderWidth = 1
        cell.mainView.layer.borderColor = UIColor( red: 216/255, green: 216/255, blue:216/255, alpha: 1.0 ).cgColor
        cell.mainView.layer.shadowOffset = CGSize(width: 0,height: 4)
        cell.mainView.layer.shadowRadius = 5
        cell.mainView.layer.shadowOpacity = 50
        cell.mainView.layer.shadowColor = UIColor( red: 89/255, green: 89/255, blue:89/255, alpha: 0.15 ).cgColor

        
        return cell
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "boardCell", for: indexPath) as! BoardCell
            
            cell.descriptionLabel.text = adTitles2[indexPath.row]
            cell.mainImage.image = adImages2[indexPath.row]
            //cell.mainView.
            cell.mainImage.layer.borderColor = UIColor( red: 216/255, green: 216/255, blue:216/255, alpha: 1.0 ).cgColor
            cell.mainImage.layer.borderWidth = 1
            cell.downloadButton.layer.cornerRadius = 4
            cell.downloadButton.layer.borderColor = UIColor( red: 190/255, green: 193/255, blue:200/255, alpha: 1.0 ).cgColor
            cell.downloadButton.layer.borderWidth = 1
            cell.mainView.layer.borderWidth = 1
            cell.mainView.layer.borderColor = UIColor( red: 216/255, green: 216/255, blue:216/255, alpha: 1.0 ).cgColor
            cell.mainView.layer.shadowOffset = CGSize(width: 0,height: 4)
            cell.mainView.layer.shadowRadius = 5
            cell.mainView.layer.shadowOpacity = 50
            cell.mainView.layer.shadowColor = UIColor( red: 89/255, green: 89/255, blue:89/255, alpha: 0.15 ).cgColor
            
            
            return cell
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
    
        return CGSize(width: 270, height: 320)
    
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return adImages.count
    }
    /*
    func snapToNearestCell(collectionView: UICollectionView) {
        
        //pick first cell to get width
        let indexPath = NSIndexPath(item: 0, section: 0)
        if let cell = collectionView.cellForItem(at: indexPath as IndexPath) as UICollectionViewCell? {
            let cellWidth = cell.bounds.size.width
            
            for i in 0..<collectionView.numberOfItems(inSection: 0) {
                if collectionView.contentOffset.x <= CGFloat(i) * cellWidth + cellWidth / 2 {
                    let indexPath = NSIndexPath(item: i, section: 0)
                    collectionView.scrollToItem(at: indexPath as IndexPath, at: .centeredHorizontally, animated: true)
                    break
                }
            }
        }
    }
    */
    func snapToCenter() {
        let centerPoint = view.convert(view.center, to: collectionView2)
        guard let centerIndexPath = collectionView2.indexPathForItem(at: centerPoint) else {return}
        collectionView2.scrollToItem(at: centerIndexPath, at: .centeredHorizontally, animated: true)
    }
    
    func snapToCenter2() {
        let centerPoint = view.convert(view.center, to: collectionView)
        guard let centerIndexPath = collectionView.indexPathForItem(at: centerPoint) else {return}
        collectionView.scrollToItem(at: centerIndexPath, at: .centeredHorizontally, animated: true)
    }
    

    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        //if collectionView == collectionView2{
        snapToCenter()
        //}else {
            snapToCenter2()
        //}
        //snapToNearestCell(collectionView: collectionView)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        //snapToCenter()
        //if collectionView == collectionView2{
            snapToCenter()
        //}else {
            snapToCenter2()
        //}
        //snapToNearestCell(collectionView: collectionView)
    }


}

