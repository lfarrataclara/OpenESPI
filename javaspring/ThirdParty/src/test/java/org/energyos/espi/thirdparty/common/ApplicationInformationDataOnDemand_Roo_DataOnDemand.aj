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

import java.net.URI;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.energyos.espi.thirdparty.common.ApplicationInformation;
import org.energyos.espi.thirdparty.common.ApplicationInformationDataOnDemand;
import org.energyos.espi.thirdparty.common.DataCustodianApplicationStatusDataOnDemand;
import org.energyos.espi.thirdparty.common.ThirdPartyApplicationStatusDataOnDemand;
import org.energyos.espi.thirdparty.common.ThirdPartyApplicationTypeDataOnDemand;
import org.energyos.espi.thirdparty.common.ThirdPartyApplicationUseDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect ApplicationInformationDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ApplicationInformationDataOnDemand: @Component;
    
    private Random ApplicationInformationDataOnDemand.rnd = new SecureRandom();
    
    private List<ApplicationInformation> ApplicationInformationDataOnDemand.data;
    
    @Autowired
    private DataCustodianApplicationStatusDataOnDemand ApplicationInformationDataOnDemand.dataCustodianApplicationStatusDataOnDemand;
    
    @Autowired
    private ThirdPartyApplicationStatusDataOnDemand ApplicationInformationDataOnDemand.thirdPartyApplicationStatusDataOnDemand;
    
    @Autowired
    private ThirdPartyApplicationTypeDataOnDemand ApplicationInformationDataOnDemand.thirdPartyApplicationTypeDataOnDemand;
    
    @Autowired
    private ThirdPartyApplicationUseDataOnDemand ApplicationInformationDataOnDemand.thirdPartyApplicationUseDataOnDemand;
    
    public ApplicationInformation ApplicationInformationDataOnDemand.getNewTransientApplicationInformation(int index) {
        ApplicationInformation obj = new ApplicationInformation();
        setDataCustodianDefaultBatchResource(obj, index);
        setDataCustodianDefaultSubscriptionResource(obj, index);
        setDataCustodianThirdPartyId(obj, index);
        setDataCustodianThirdPartySecret(obj, index);
        setDescription(obj, index);
        setThirdPartyApplicationDescription(obj, index);
        setThirdPartyApplicationLogo(obj, index);
        setThirdPartyApplicationName(obj, index);
        setThirdPartyApplicationWebsite(obj, index);
        setThirdPartyDefaultBatchResource(obj, index);
        setThirdPartyDefaultNotifyResource(obj, index);
        setThirdPartyDefaultOAuthCallback(obj, index);
        setThirdPartyEmail(obj, index);
        setThirdPartyName(obj, index);
        setThirdPartyPhone(obj, index);
        setUuid(obj, index);
        return obj;
    }
    
    public void ApplicationInformationDataOnDemand.setDataCustodianDefaultBatchResource(ApplicationInformation obj, int index) {
        URI dataCustodianDefaultBatchResource = null;
        obj.setDataCustodianDefaultBatchResource(dataCustodianDefaultBatchResource);
    }
    
    public void ApplicationInformationDataOnDemand.setDataCustodianDefaultSubscriptionResource(ApplicationInformation obj, int index) {
        URI dataCustodianDefaultSubscriptionResource = null;
        obj.setDataCustodianDefaultSubscriptionResource(dataCustodianDefaultSubscriptionResource);
    }
    
    public void ApplicationInformationDataOnDemand.setDataCustodianThirdPartyId(ApplicationInformation obj, int index) {
        String dataCustodianThirdPartyId = "dataCustodianThirdPartyIdxxxxx_" + index;
        if (dataCustodianThirdPartyId.length() > 32) {
            dataCustodianThirdPartyId = dataCustodianThirdPartyId.substring(0, 32);
        }
        obj.setDataCustodianThirdPartyId(dataCustodianThirdPartyId);
    }
    
    public void ApplicationInformationDataOnDemand.setDataCustodianThirdPartySecret(ApplicationInformation obj, int index) {
        String dataCustodianThirdPartySecret = "dataCustodianThirdPartySecretx_" + index;
        if (dataCustodianThirdPartySecret.length() > 32) {
            dataCustodianThirdPartySecret = dataCustodianThirdPartySecret.substring(0, 32);
        }
        obj.setDataCustodianThirdPartySecret(dataCustodianThirdPartySecret);
    }
    
    public void ApplicationInformationDataOnDemand.setDescription(ApplicationInformation obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public void ApplicationInformationDataOnDemand.setThirdPartyApplicationDescription(ApplicationInformation obj, int index) {
        String thirdPartyApplicationDescription = "thirdPartyApplicationDescription_" + index;
        obj.setThirdPartyApplicationDescription(thirdPartyApplicationDescription);
    }
    
    public void ApplicationInformationDataOnDemand.setThirdPartyApplicationLogo(ApplicationInformation obj, int index) {
        URI thirdPartyApplicationLogo = null;
        obj.setThirdPartyApplicationLogo(thirdPartyApplicationLogo);
    }
    
    public void ApplicationInformationDataOnDemand.setThirdPartyApplicationName(ApplicationInformation obj, int index) {
        String thirdPartyApplicationName = "thirdPartyApplicationNamexxxxx_" + index;
        if (thirdPartyApplicationName.length() > 32) {
            thirdPartyApplicationName = thirdPartyApplicationName.substring(0, 32);
        }
        obj.setThirdPartyApplicationName(thirdPartyApplicationName);
    }
    
    public void ApplicationInformationDataOnDemand.setThirdPartyApplicationWebsite(ApplicationInformation obj, int index) {
        URI thirdPartyApplicationWebsite = null;
        obj.setThirdPartyApplicationWebsite(thirdPartyApplicationWebsite);
    }
    
    public void ApplicationInformationDataOnDemand.setThirdPartyDefaultBatchResource(ApplicationInformation obj, int index) {
        URI thirdPartyDefaultBatchResource = null;
        obj.setThirdPartyDefaultBatchResource(thirdPartyDefaultBatchResource);
    }
    
    public void ApplicationInformationDataOnDemand.setThirdPartyDefaultNotifyResource(ApplicationInformation obj, int index) {
        URI thirdPartyDefaultNotifyResource = null;
        obj.setThirdPartyDefaultNotifyResource(thirdPartyDefaultNotifyResource);
    }
    
    public void ApplicationInformationDataOnDemand.setThirdPartyDefaultOAuthCallback(ApplicationInformation obj, int index) {
        URI thirdPartyDefaultOAuthCallback = null;
        obj.setThirdPartyDefaultOAuthCallback(thirdPartyDefaultOAuthCallback);
    }
    
    public void ApplicationInformationDataOnDemand.setThirdPartyEmail(ApplicationInformation obj, int index) {
        String thirdPartyEmail = "foo" + index + "@bar.com";
        if (thirdPartyEmail.length() > 64) {
            thirdPartyEmail = thirdPartyEmail.substring(0, 64);
        }
        obj.setThirdPartyEmail(thirdPartyEmail);
    }
    
    public void ApplicationInformationDataOnDemand.setThirdPartyName(ApplicationInformation obj, int index) {
        String thirdPartyName = "thirdPartyName_" + index;
        if (thirdPartyName.length() > 64) {
            thirdPartyName = thirdPartyName.substring(0, 64);
        }
        obj.setThirdPartyName(thirdPartyName);
    }
    
    public void ApplicationInformationDataOnDemand.setThirdPartyPhone(ApplicationInformation obj, int index) {
        String thirdPartyPhone = "thirdPartyPhone_" + index;
        if (thirdPartyPhone.length() > 32) {
            thirdPartyPhone = thirdPartyPhone.substring(0, 32);
        }
        obj.setThirdPartyPhone(thirdPartyPhone);
    }
    
    public void ApplicationInformationDataOnDemand.setUuid(ApplicationInformation obj, int index) {
        String uuid = "uuid_" + index;
        obj.setUuid(uuid);
    }
    
    public ApplicationInformation ApplicationInformationDataOnDemand.getSpecificApplicationInformation(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        ApplicationInformation obj = data.get(index);
        Long id = obj.getId();
        return ApplicationInformation.findApplicationInformation(id);
    }
    
    public ApplicationInformation ApplicationInformationDataOnDemand.getRandomApplicationInformation() {
        init();
        ApplicationInformation obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return ApplicationInformation.findApplicationInformation(id);
    }
    
    public boolean ApplicationInformationDataOnDemand.modifyApplicationInformation(ApplicationInformation obj) {
        return false;
    }
    
    public void ApplicationInformationDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = ApplicationInformation.findApplicationInformationEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'ApplicationInformation' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<ApplicationInformation>();
        for (int i = 0; i < 10; i++) {
            ApplicationInformation obj = getNewTransientApplicationInformation(i);
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
