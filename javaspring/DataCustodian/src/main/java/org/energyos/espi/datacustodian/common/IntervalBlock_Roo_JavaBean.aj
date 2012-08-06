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

import java.util.Set;
import org.energyos.espi.datacustodian.common.DateTimeInterval;
import org.energyos.espi.datacustodian.common.IntervalBlock;
import org.energyos.espi.datacustodian.common.IntervalReading;
import org.energyos.espi.datacustodian.common.MeterReading;
import org.energyos.espi.datacustodian.common.ReadingType;

privileged aspect IntervalBlock_Roo_JavaBean {
    
    public DateTimeInterval IntervalBlock.getInterval() {
        return this.interval;
    }
    
    public void IntervalBlock.setInterval(DateTimeInterval interval) {
        this.interval = interval;
    }
    
    public Set<IntervalReading> IntervalBlock.getIntervalReading() {
        return this.intervalReading;
    }
    
    public void IntervalBlock.setIntervalReading(Set<IntervalReading> intervalReading) {
        this.intervalReading = intervalReading;
    }
    
    public MeterReading IntervalBlock.getMeterReading() {
        return this.meterReading;
    }
    
    public void IntervalBlock.setMeterReading(MeterReading meterReading) {
        this.meterReading = meterReading;
    }
    
    public ReadingType IntervalBlock.getReadingType() {
        return this.readingType;
    }
    
    public void IntervalBlock.setReadingType(ReadingType readingType) {
        this.readingType = readingType;
    }
    
}
