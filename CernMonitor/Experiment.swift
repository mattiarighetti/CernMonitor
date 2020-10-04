//
//  Experiments.swift
//  CernMonitor
//
//  Created by Mattia Righetti on 04/10/2020.
//

import SwiftUI

struct Experiment: Identifiable {
    var id = UUID()
    var name: String
    var pngName: String
    var monitorType: String
    var monitorUrl: String {
        switch monitorType {
        case "cms":
            return cmsUrl + pngName + ".png";
        case "lhc":
            return lhcUrl + pngName + ".png";
        default:
            return vistarUrl + pngName + ".png";
        }
    }
}

let cmsUrl = "https://cmspage1.web.cern.ch/cmspage1/data/"
let lhcUrl = "https://lhcdashboard-images.web.cern.ch/lhcdashboard-images/images/lhc/prod/"
let vistarUrl = "https://vistar-capture.web.cern.ch/vistar-capture/"

let experimentData = [
    Experiment(name: "ADE", pngName: "ade", monitorType: "vistar"),
    Experiment(name: "Awake", pngName: "awake", monitorType: "vistar"),
    Experiment(name: "Awake Plasma", pngName: "awakeplasma", monitorType: "vistar"),
    Experiment(name: "Awake Proton", pngName: "awakeproton", monitorType: "vistar"),
    Experiment(name: "CLEAR Operation", pngName: "cleargen", monitorType: "vistar"),
    Experiment(name: "CPS", pngName: "cps", monitorType: "vistar"),
    Experiment(name: "CPS BLM", pngName: "cpsblm", monitorType: "vistar"),
    Experiment(name: "CPS EAST Area", pngName: "pea", monitorType: "vistar"),
    Experiment(name: "CPS Spare", pngName: "cps2", monitorType: "vistar"),
    Experiment(name: "GPS", pngName: "gps", monitorType: "vistar"),
    Experiment(name: "HRS", pngName: "hrs", monitorType: "vistar"),
    Experiment(name: "LEIR", pngName: "leir", monitorType: "vistar"),
    Experiment(name: "LHC BM Abort Gap", pngName: "lhcabortgap", monitorType: "vistar"),
    Experiment(name: "LHC BLM Diamond", pngName: "lhcdiamond", monitorType: "vistar"),
    Experiment(name: "LHC BSRT", pngName: "lhcbsrt", monitorType: "vistar"),
    Experiment(name: "LHC Beam Dump", pngName: "lhcbds", monitorType: "vistar"),
    Experiment(name: "LHC CMS Experiment", pngName: "page1", monitorType: "cms"),
    Experiment(name: "LHC Collimator Beam 1", pngName: "lhccolli1", monitorType: "vistar"),
    Experiment(name: "LHC Collimator Beam 2", pngName: "lhccolli2", monitorType: "vistar"),
    Experiment(name: "LHC Collimator Summary", pngName: "lhccolli", monitorType: "vistar"),
    Experiment(name: "LHC Configuration", pngName: "lhcconfig", monitorType: "vistar"),
    Experiment(name: "LHC Coordination", pngName: "lhccoord", monitorType: "vistar"),
    Experiment(name: "LHC Cryogenics", pngName: "lhc2", monitorType: "vistar"),
    Experiment(name: "LHC Dashboard", pngName: "dashboard", monitorType: "lhc"),
    Experiment(name: "LHC Exp Magnets", pngName: "lhcexpmag", monitorType: "vistar"),
    Experiment(name: "LHC Luminosity", pngName: "lhclumi", monitorType: "vistar"),
    Experiment(name: "LHC Operation", pngName: "lhc3", monitorType: "vistar"),
    Experiment(name: "LHC Page 1", pngName: "lhc1", monitorType: "vistar"),
    Experiment(name: "LHC RF Timing", pngName: "lhcrftiming", monitorType: "vistar"),
    Experiment(name: "LHC Roman Pots", pngName: "lhcromanpots", monitorType: "vistar"),
    Experiment(name: "LHCf Experiment", pngName: "lhcf", monitorType: "vistar"),
    Experiment(name: "Linac 3", pngName: "ln3", monitorType: "vistar"),
    Experiment(name: "Linac 4", pngName: "ln4", monitorType: "vistar"),
    Experiment(name: "Linac II", pngName: "lin", monitorType: "vistar"),
    Experiment(name: "PSB", pngName: "psb", monitorType: "vistar"),
    Experiment(name: "PSB BLM", pngName: "psbblm", monitorType: "vistar"),
    Experiment(name: "SPS BSRT", pngName: "spsbsrt", monitorType: "vistar"),
    Experiment(name: "SPS BT", pngName: "spsbt", monitorType: "vistar"),
    Experiment(name: "SPS Larger 1", pngName: "larger1", monitorType: "vistar"),
    Experiment(name: "SPS Larger 2", pngName: "larger2", monitorType: "vistar"),
    Experiment(name: "SPS Larger 3", pngName: "larger3", monitorType: "vistar"),
    Experiment(name: "SPS Larger 4", pngName: "larger4", monitorType: "vistar"),
    Experiment(name: "SPS Page 1", pngName: "sps1", monitorType: "vistar"),
    Experiment(name: "T9 BLFS", pngName: "t9blfs", monitorType: "vistar")
]
