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

package org.energyos.espi.thirdparty.common;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.energyos.espi.thirdparty.common.CurrencyDataOnDemand;
import org.energyos.espi.thirdparty.common.DateTimeIntervalDataOnDemand;
import org.energyos.espi.thirdparty.common.ElectricPowerUsageSummary;
import org.energyos.espi.thirdparty.common.ElectricPowerUsageSummaryDataOnDemand;
import org.energyos.espi.thirdparty.common.QualityOfReadingDataOnDemand;
import org.energyos.espi.thirdparty.common.SummaryMeasurementDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect ElectricPowerUsageSummaryDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ElectricPowerUsageSummaryDataOnDemand: @Component;
    
    private Random ElectricPowerUsageSummaryDataOnDemand.rnd = new SecureRandom();
    
    private List<ElectricPowerUsageSummary> ElectricPowerUsageSummaryDataOnDemand.data;
    
    @Autowired
    private DateTimeIntervalDataOnDemand ElectricPowerUsageSummaryDataOnDemand.dateTimeIntervalDataOnDemand;
    
    @Autowired
    private CurrencyDataOnDemand ElectricPowerUsageSummaryDataOnDemand.currencyDataOnDemand;
    
    @Autowired
    private SummaryMeasurementDataOnDemand ElectricPowerUsageSummaryDataOnDemand.summaryMeasurementDataOnDemand;
    
    @Autowired
    private QualityOfReadingDataOnDemand ElectricPowerUsageSummaryDataOnDemand.qualityOfReadingDataOnDemand;
    
    public ElectricPowerUsageSummary ElectricPowerUsageSummaryDataOnDemand.getNewTransientElectricPowerUsageSummary(int index) {
        ElectricPowerUsageSummary obj = new ElectricPowerUsageSummary();
        setBillLastPeriod(obj, index);
        setBillToDate(obj, index);
        setCostAdditionalLastPeriod(obj, index);
        setDescription(obj, index);
        setStatusTimeStamp(obj, index);
        setUuid(obj, index);
        return obj;
    }
    
    public void ElectricPowerUsageSummaryDataOnDemand.setBillLastPeriod(ElectricPowerUsageSummary obj, int index) {
        Long billLastPeriod = new Integer(index).longValue();
        obj.setBillLastPeriod(billLastPeriod);
    }
    
    public void ElectricPowerUsageSummaryDataOnDemand.setBillToDate(ElectricPowerUsageSummary obj, int index) {
        Long billToDate = new Integer(index).longValue();
        obj.setBillToDate(billToDate);
    }
    
    public void ElectricPowerUsageSummaryDataOnDemand.setCostAdditionalLastPeriod(ElectricPowerUsageSummary obj, int index) {
        Long costAdditionalLastPeriod = new Integer(index).longValue();
        obj.setCostAdditionalLastPeriod(costAdditionalLastPeriod);
    }
    
    public void ElectricPowerUsageSummaryDataOnDemand.setDescription(ElectricPowerUsageSummary obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public void ElectricPowerUsageSummaryDataOnDemand.setStatusTimeStamp(ElectricPowerUsageSummary obj, int index) {
        Long statusTimeStamp = new Integer(index).longValue();
        obj.setStatusTimeStamp(statusTimeStamp);
    }
    
    public void ElectricPowerUsageSummaryDataOnDemand.setUuid(ElectricPowerUsageSummary obj, int index) {
        String uuid = "uuid_" + index;
        obj.setUuid(uuid);
    }
    
    public ElectricPowerUsageSummary ElectricPowerUsageSummaryDataOnDemand.getSpecificElectricPowerUsageSummary(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        ElectricPowerUsageSummary obj = data.get(index);
        Long id = obj.getId();
        return ElectricPowerUsageSummary.findElectricPowerUsageSummary(id);
    }
    
    public ElectricPowerUsageSummary ElectricPowerUsageSummaryDataOnDemand.getRandomElectricPowerUsageSummary() {
        init();
        ElectricPowerUsageSummary obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return ElectricPowerUsageSummary.findElectricPowerUsageSummary(id);
    }
    
    public boolean ElectricPowerUsageSummaryDataOnDemand.modifyElectricPowerUsageSummary(ElectricPowerUsageSummary obj) {
        return false;
    }
    
    public void ElectricPowerUsageSummaryDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ElectricPowerUsageSummary.findElectricPowerUsageSummaryEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'ElectricPowerUsageSummary' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<ElectricPowerUsageSummary>();
        for (int i = 0; i < 10; i++) {
            ElectricPowerUsageSummary obj = getNewTransientElectricPowerUsageSummary(i);
            try {
                obj.persist();
            } catch (ConstraintViolationException e) {
                StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getConstraintDescriptor()).append(":").append(cv.getMessage()).append("=").append(cv.getInvalidValue()).append("]");
                }
                throw new RuntimeException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
