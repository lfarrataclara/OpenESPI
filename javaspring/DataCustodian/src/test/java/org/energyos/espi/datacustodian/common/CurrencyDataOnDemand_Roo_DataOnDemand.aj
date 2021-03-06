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

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.energyos.espi.datacustodian.common.Currency;
import org.energyos.espi.datacustodian.common.CurrencyDataOnDemand;
import org.energyos.espi.datacustodian.common.CurrencyEnum;
import org.springframework.stereotype.Component;

privileged aspect CurrencyDataOnDemand_Roo_DataOnDemand {
    
    declare @type: CurrencyDataOnDemand: @Component;
    
    private Random CurrencyDataOnDemand.rnd = new SecureRandom();
    
    private List<Currency> CurrencyDataOnDemand.data;
    
    public Currency CurrencyDataOnDemand.getNewTransientCurrency(int index) {
        Currency obj = new Currency();
        setTypeMap(obj, index);
        setTypeValue(obj, index);
        return obj;
    }
    
    public void CurrencyDataOnDemand.setTypeMap(Currency obj, int index) {
        Integer typeMap = new Integer(index);
        obj.setTypeMap(typeMap);
    }
    
    public void CurrencyDataOnDemand.setTypeValue(Currency obj, int index) {
        CurrencyEnum typeValue = CurrencyEnum.class.getEnumConstants()[0];
        obj.setTypeValue(typeValue);
    }
    
    public Currency CurrencyDataOnDemand.getSpecificCurrency(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Currency obj = data.get(index);
        Long id = obj.getId();
        return Currency.findCurrency(id);
    }
    
    public Currency CurrencyDataOnDemand.getRandomCurrency() {
        init();
        Currency obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Currency.findCurrency(id);
    }
    
    public boolean CurrencyDataOnDemand.modifyCurrency(Currency obj) {
        return false;
    }
    
    public void CurrencyDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Currency.findCurrencyEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Currency' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Currency>();
        for (int i = 0; i < 10; i++) {
            Currency obj = getNewTransientCurrency(i);
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
