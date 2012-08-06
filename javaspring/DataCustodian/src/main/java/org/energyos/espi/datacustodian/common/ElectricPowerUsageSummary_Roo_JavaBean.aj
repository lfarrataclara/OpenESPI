/*******************************************************************************
 * Copyright (c) 2011, 2012 EnergyOS.Org
 *
 * Licensed by EnergyOS.Org under one or more contributor license agreements.
 * See the NOTICE file distributed with this work for additional information
 * regarding copyright ownership.  The EnergyOS.org licenses this file
 * to you under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License.  You may obtain a copy
 * of the License at:
 *  
 *   http://www.apache.org/licenses/LICENSE-2.0
 *  
 *  Unless required by applicable law or agreed to in writing,
 *  software distributed under the License is distributed on an
 *  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 *  KIND, either express or implied.  See the License for the
 *  specific language governing permissions and limitations
 *  under the License.
 *  
 ******************************************************************************
*/

// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.energyos.espi.datacustodian.common;

import org.energyos.espi.datacustodian.common.Currency;
import org.energyos.espi.datacustodian.common.DateTimeInterval;
import org.energyos.espi.datacustodian.common.ElectricPowerUsageSummary;
import org.energyos.espi.datacustodian.common.QualityOfReading;
import org.energyos.espi.datacustodian.common.SummaryMeasurement;

privileged aspect ElectricPowerUsageSummary_Roo_JavaBean {
    
    public DateTimeInterval ElectricPowerUsageSummary.getBillingPeriod() {
        return this.billingPeriod;
    }
    
    public void ElectricPowerUsageSummary.setBillingPeriod(DateTimeInterval billingPeriod) {
        this.billingPeriod = billingPeriod;
    }
    
    public Long ElectricPowerUsageSummary.getBillLastPeriod() {
        return this.billLastPeriod;
    }
    
    public void ElectricPowerUsageSummary.setBillLastPeriod(Long billLastPeriod) {
        this.billLastPeriod = billLastPeriod;
    }
    
    public Long ElectricPowerUsageSummary.getBillToDate() {
        return this.billToDate;
    }
    
    public void ElectricPowerUsageSummary.setBillToDate(Long billToDate) {
        this.billToDate = billToDate;
    }
    
    public Long ElectricPowerUsageSummary.getCostAdditionalLastPeriod() {
        return this.costAdditionalLastPeriod;
    }
    
    public void ElectricPowerUsageSummary.setCostAdditionalLastPeriod(Long costAdditionalLastPeriod) {
        this.costAdditionalLastPeriod = costAdditionalLastPeriod;
    }
    
    public Currency ElectricPowerUsageSummary.getCurrency() {
        return this.currency;
    }
    
    public void ElectricPowerUsageSummary.setCurrency(Currency currency) {
        this.currency = currency;
    }
    
    public SummaryMeasurement ElectricPowerUsageSummary.getCurrentBillingPeriodOverAllConsumption() {
        return this.currentBillingPeriodOverAllConsumption;
    }
    
    public void ElectricPowerUsageSummary.setCurrentBillingPeriodOverAllConsumption(SummaryMeasurement currentBillingPeriodOverAllConsumption) {
        this.currentBillingPeriodOverAllConsumption = currentBillingPeriodOverAllConsumption;
    }
    
    public SummaryMeasurement ElectricPowerUsageSummary.getCurrentDayLastYearNetConsumption() {
        return this.currentDayLastYearNetConsumption;
    }
    
    public void ElectricPowerUsageSummary.setCurrentDayLastYearNetConsumption(SummaryMeasurement currentDayLastYearNetConsumption) {
        this.currentDayLastYearNetConsumption = currentDayLastYearNetConsumption;
    }
    
    public SummaryMeasurement ElectricPowerUsageSummary.getCurrentDayNetConsumption() {
        return this.currentDayNetConsumption;
    }
    
    public void ElectricPowerUsageSummary.setCurrentDayNetConsumption(SummaryMeasurement currentDayNetConsumption) {
        this.currentDayNetConsumption = currentDayNetConsumption;
    }
    
    public SummaryMeasurement ElectricPowerUsageSummary.getCurrentDayOverallConsumption() {
        return this.currentDayOverallConsumption;
    }
    
    public void ElectricPowerUsageSummary.setCurrentDayOverallConsumption(SummaryMeasurement currentDayOverallConsumption) {
        this.currentDayOverallConsumption = currentDayOverallConsumption;
    }
    
    public SummaryMeasurement ElectricPowerUsageSummary.getPeakDemand() {
        return this.peakDemand;
    }
    
    public void ElectricPowerUsageSummary.setPeakDemand(SummaryMeasurement peakDemand) {
        this.peakDemand = peakDemand;
    }
    
    public SummaryMeasurement ElectricPowerUsageSummary.getPreviousDayLastYearOverallConsumption() {
        return this.previousDayLastYearOverallConsumption;
    }
    
    public void ElectricPowerUsageSummary.setPreviousDayLastYearOverallConsumption(SummaryMeasurement previousDayLastYearOverallConsumption) {
        this.previousDayLastYearOverallConsumption = previousDayLastYearOverallConsumption;
    }
    
    public SummaryMeasurement ElectricPowerUsageSummary.getPreviousDayNetConsumption() {
        return this.previousDayNetConsumption;
    }
    
    public void ElectricPowerUsageSummary.setPreviousDayNetConsumption(SummaryMeasurement previousDayNetConsumption) {
        this.previousDayNetConsumption = previousDayNetConsumption;
    }
    
    public SummaryMeasurement ElectricPowerUsageSummary.getPreviousDayOverallConsumption() {
        return this.previousDayOverallConsumption;
    }
    
    public void ElectricPowerUsageSummary.setPreviousDayOverallConsumption(SummaryMeasurement previousDayOverallConsumption) {
        this.previousDayOverallConsumption = previousDayOverallConsumption;
    }
    
    public QualityOfReading ElectricPowerUsageSummary.getQualityOfReading() {
        return this.qualityOfReading;
    }
    
    public void ElectricPowerUsageSummary.setQualityOfReading(QualityOfReading qualityOfReading) {
        this.qualityOfReading = qualityOfReading;
    }
    
    public SummaryMeasurement ElectricPowerUsageSummary.getRatchetDemand() {
        return this.ratchetDemand;
    }
    
    public void ElectricPowerUsageSummary.setRatchetDemand(SummaryMeasurement ratchetDemand) {
        this.ratchetDemand = ratchetDemand;
    }
    
    public DateTimeInterval ElectricPowerUsageSummary.getRatchetDemandPeriod() {
        return this.ratchetDemandPeriod;
    }
    
    public void ElectricPowerUsageSummary.setRatchetDemandPeriod(DateTimeInterval ratchetDemandPeriod) {
        this.ratchetDemandPeriod = ratchetDemandPeriod;
    }
    
    public Long ElectricPowerUsageSummary.getStatusTimeStamp() {
        return this.statusTimeStamp;
    }
    
    public void ElectricPowerUsageSummary.setStatusTimeStamp(Long statusTimeStamp) {
        this.statusTimeStamp = statusTimeStamp;
    }
    
}
