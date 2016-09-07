//
//  ViewController.swift
//  pruebaSwiftCharts
//
//  Created by Luis Octavio Samaniego Barajas on 05/09/16.
//  Copyright © 2016 Luis Octavio Samaniego Barajas. All rights reserved.
//

import UIKit
import SwiftCharts

class ViewController: UIViewController {
    
    @IBOutlet weak var vista: UIView!
    @IBOutlet weak var scrolView: UIScrollView!
    
    private var chart: Chart?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.scrolView.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        let scrolViewHeight = self.scrolView.frame.height
        let scrolViewWidth = self.scrolView.frame.width
        self.scrolView.contentSize = CGSizeMake(900, 700)
        
        crearGrafica()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func crearGrafica(){
        let chartConfig = BarsChartConfig(
            valsAxisConfig: ChartAxisConfig(from: 0, to: 600, by: 100)
        )
        
        let chart = BarsChart(
            frame: CGRectMake(0, 70, 300, 600),
            chartConfig: chartConfig,
            xTitle: "X axis",
            yTitle: "Y axis",
            bars: [
                ("2793.004", 522),
                ("2793.004", 204),
                ("2793.004", 110),
                ("2793.004", 81),
                ("2793.004", 53),
                ("2793.004", 9),
                ("2793.004", 4)
            ],
            color: UIColor.redColor(),
            barWidth: 10
        )
        
        self.vista
            .addSubview(chart.view)
        self.chart = chart

    }
}

