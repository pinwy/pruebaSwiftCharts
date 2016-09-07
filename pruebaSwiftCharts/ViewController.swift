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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        crearGrafica()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func crearGrafica(){
        let chartConfig = BarsChartConfig(
            valsAxisConfig: ChartAxisConfig(from: 0, to: 8, by: 2)
        )
        
        let chart = BarsChart(
            frame: CGRectMake(0, 70, 300, 500),
            chartConfig: chartConfig,
            xTitle: "X axis",
            yTitle: "Y axis",
            bars: [
                ("A", 2),
                ("B", 4.5),
                ("C", 3),
                ("D", 5.4),
                ("E", 6.8),
                ("F", 0.5)
            ],
            color: UIColor.redColor(),
            barWidth: 20
        )
        
        self.view.addSubview(chart.view)
        //self.chart = chart

    }
}

