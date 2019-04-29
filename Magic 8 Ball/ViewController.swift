//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Abraham Matus on 2019-04-25.
//  Copyright © 2019 Abraham Matus. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    let DICE_IMAGE_NAME_PREFIX: String = "dice"
    let START_RANDOM_NUMBER: Int = 1
    let LAST_RANDOM_NUMBER: Int = 5

    @IBOutlet weak var eightBallImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        generateNew8BallResponse()
    }

    private func generateNew8BallResponse() {
        eightBallImageView.image = getRandomImage()
    }

    @IBAction func onAskButtonPressed(_ sender: Any) {
        generateNew8BallResponse()
    }

    private func getRandomImage() -> UIImage? {
        let imageNumber: Int = Int.random(in: START_RANDOM_NUMBER...LAST_RANDOM_NUMBER)
        let eightBallImage: String = "ball\(imageNumber)"
        return UIImage(named: eightBallImage);
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateNew8BallResponse()
    }
}
