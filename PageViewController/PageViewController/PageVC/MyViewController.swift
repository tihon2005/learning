//
//  MyViewController.swift
//  PageViewController
//
//  Created by Tikhon Bazar on 25.12.22.
//

import UIKit

class MyViewController: UIPageViewController {
    //MARK: Variable
    var cars = [CarsHelper]()
    let macbook = UIImage(named: "macbook")
    let ipad = UIImage(named: "ipad")
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Apple Tech"
        if let macbook = UIImage(named: "macbook"){
            let firstItem = CarsHelper(name: "Macbook", image: macbook)
            cars.append(firstItem)
        }
        if let ipad = UIImage(named: "ipad"){
            let secondItem = CarsHelper(name: "Ipad", image: ipad)
            cars.append(secondItem)
        }
    }
    //MARK: Create VC
    lazy var arrayCarViewController: [CarViewController] = {
        var carsVc = [CarViewController]()
        for car in cars{
            carsVc.append(CarViewController(carWidth: car))
        }
        return carsVc
    }()
    //MARK: init UIPageViewController
    override init(transitionStyle style: UIPageViewController.TransitionStyle, navigationOrientation: UIPageViewController.NavigationOrientation, options: [UIPageViewController.OptionsKey : Any]? = nil) {
        super.init(transitionStyle: .scroll, navigationOrientation: navigationOrientation)
        self.dataSource = self
        self.delegate = self
        view.backgroundColor = .green
        setViewControllers([arrayCarViewController[0]], direction: .forward, animated: true)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MyViewController : UIPageViewControllerDataSource, UIPageViewControllerDelegate{
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?{
        guard let viewController = viewController as? CarViewController else {return nil}
        if let index = arrayCarViewController.firstIndex(of: viewController){
            if index > 0{
                return arrayCarViewController[index - 1]
            }
        }
        return nil
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?{
        guard let viewController = viewController as? CarViewController else {return nil}
        if let index = arrayCarViewController.firstIndex(of: viewController){
            if index < cars.count - 1{
                return arrayCarViewController[index + 1]
            }
        }
        return nil
    }
    func presentationCount(for pageViewController: UIPageViewController) -> Int{
        return cars.count
    }
    func presentationIndex(for pageViewController: UIPageViewController) -> Int{
        return 0
    }
}
