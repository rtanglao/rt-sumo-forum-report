#!/bin/bash
grep ,firefox,  $1 | wc -l
grep ,firefox, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,thunderbird,  $1 | wc -l
grep ,thunderbird, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,mobile,  $1 | wc -l
grep ,mobile, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,Focus-ios,  $1 | wc -l
grep ,Focus-ios, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,focus-firefox,  $1 | wc -l
grep ,focus-firefox, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,firefox-lockwise,  $1 | wc -l
grep ,firefox-lockwise, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,firefox-preview,  $1 | wc -l
grep ,firefox-preview, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,ios,  $1 | wc -l
grep ,ios, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,firefox-lite,  $1 | wc -l
grep ,firefox-lite, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,firefox-fire-tv,  $1 | wc -l
grep ,firefox-fire-tv, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,firefox-amazon-devices,  $1 | wc -l
grep ,firefox-amazon-devices, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,firefox-reality,  $1 | wc -l
grep ,firefox-reality, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,firefox-private-network,  $1 | wc -l
grep ,firefox-private-network, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,firefox-private-network-vpn,  $1 | wc -l
grep ,firefox-private-network-vpn, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,firefox-enterprise,  $1 | wc -l
grep ,firefox-enterprise, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
grep ,firefox-os,  $1 | wc -l
grep ,firefox-os, $1 | mlr --inidx --ifs comma --oxtab cut -f 5 | grep true | wc -l
