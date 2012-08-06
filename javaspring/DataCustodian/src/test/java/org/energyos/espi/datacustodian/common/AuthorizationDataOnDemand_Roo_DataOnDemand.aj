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

import java.net.URI;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.energyos.espi.datacustodian.common.Authorization;
import org.energyos.espi.datacustodian.common.AuthorizationDataOnDemand;
import org.energyos.espi.datacustodian.common.AuthorizationStatusDataOnDemand;
import org.energyos.espi.datacustodian.common.DateTimeIntervalDataOnDemand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect AuthorizationDataOnDemand_Roo_DataOnDemand {
    
    declare @type: AuthorizationDataOnDemand: @Component;
    
    private Random AuthorizationDataOnDemand.rnd = new SecureRandom();
    
    private List<Authorization> AuthorizationDataOnDemand.data;
    
    @Autowired
    private DateTimeIntervalDataOnDemand AuthorizationDataOnDemand.dateTimeIntervalDataOnDemand;
    
    @Autowired
    private AuthorizationStatusDataOnDemand AuthorizationDataOnDemand.authorizationStatusDataOnDemand;
    
    public Authorization AuthorizationDataOnDemand.getNewTransientAuthorization(int index) {
        Authorization obj = new Authorization();
        setAccessToken(obj, index);
        setAuthorizationServer(obj, index);
        setDescription(obj, index);
        setResource(obj, index);
        setThirdParty(obj, index);
        setUuid(obj, index);
        return obj;
    }
    
    public void AuthorizationDataOnDemand.setAccessToken(Authorization obj, int index) {
        String accessToken = "accessTokenxxxxxxxxxxxxxxxxxxx_" + index;
        if (accessToken.length() > 32) {
            accessToken = accessToken.substring(0, 32);
        }
        obj.setAccessToken(accessToken);
    }
    
    public void AuthorizationDataOnDemand.setAuthorizationServer(Authorization obj, int index) {
        URI authorizationServer = null;
        obj.setAuthorizationServer(authorizationServer);
    }
    
    public void AuthorizationDataOnDemand.setDescription(Authorization obj, int index) {
        String description = "description_" + index;
        obj.setDescription(description);
    }
    
    public void AuthorizationDataOnDemand.setResource(Authorization obj, int index) {
        URI resource = null;
        obj.setResource(resource);
    }
    
    public void AuthorizationDataOnDemand.setThirdParty(Authorization obj, int index) {
        String thirdParty = "thirdPartyxxxxxxxxxxxxxxxxxxxx_" + index;
        if (thirdParty.length() > 32) {
            thirdParty = thirdParty.substring(0, 32);
        }
        obj.setThirdParty(thirdParty);
    }
    
    public void AuthorizationDataOnDemand.setUuid(Authorization obj, int index) {
        String uuid = "uuid_" + index;
        obj.setUuid(uuid);
    }
    
    public Authorization AuthorizationDataOnDemand.getSpecificAuthorization(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Authorization obj = data.get(index);
        Long id = obj.getId();
        return Authorization.findAuthorization(id);
    }
    
    public Authorization AuthorizationDataOnDemand.getRandomAuthorization() {
        init();
        Authorization obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Authorization.findAuthorization(id);
    }
    
    public boolean AuthorizationDataOnDemand.modifyAuthorization(Authorization obj) {
        return false;
    }
    
    public void AuthorizationDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Authorization.findAuthorizationEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Authorization' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Authorization>();
        for (int i = 0; i < 10; i++) {
            Authorization obj = getNewTransientAuthorization(i);
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
