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
import org.energyos.espi.datacustodian.common.Resource;
import org.energyos.espi.datacustodian.common.ResourceDataOnDemand;
import org.springframework.stereotype.Component;

privileged aspect ResourceDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ResourceDataOnDemand: @Component;
    
    private Random ResourceDataOnDemand.rnd = new SecureRandom();
    
    private List<Resource> ResourceDataOnDemand.data;
    
    public Resource ResourceDataOnDemand.getNewTransientResource(int index) {
        Resource obj = new Resource();
        setHref(obj, index);
        setReplyTo(obj, index);
        setResponseRequired(obj, index);
        setSignatureRequired(obj, index);
        setSubscribable(obj, index);
        return obj;
    }
    
    public void ResourceDataOnDemand.setHref(Resource obj, int index) {
        URI href = null;
        obj.setHref(href);
    }
    
    public void ResourceDataOnDemand.setReplyTo(Resource obj, int index) {
        URI replyTo = null;
        obj.setReplyTo(replyTo);
    }
    
    public void ResourceDataOnDemand.setResponseRequired(Resource obj, int index) {
        String responseRequired = "respon_" + index;
        if (responseRequired.length() > 8) {
            responseRequired = responseRequired.substring(0, 8);
        }
        obj.setResponseRequired(responseRequired);
    }
    
    public void ResourceDataOnDemand.setSignatureRequired(Resource obj, int index) {
        Boolean signatureRequired = Boolean.TRUE;
        obj.setSignatureRequired(signatureRequired);
    }
    
    public void ResourceDataOnDemand.setSubscribable(Resource obj, int index) {
        Boolean subscribable = Boolean.TRUE;
        obj.setSubscribable(subscribable);
    }
    
    public Resource ResourceDataOnDemand.getSpecificResource(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Resource obj = data.get(index);
        Long id = obj.getId();
        return Resource.findResource(id);
    }
    
    public Resource ResourceDataOnDemand.getRandomResource() {
        init();
        Resource obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Resource.findResource(id);
    }
    
    public boolean ResourceDataOnDemand.modifyResource(Resource obj) {
        return false;
    }
    
    public void ResourceDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Resource.findResourceEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Resource' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Resource>();
        for (int i = 0; i < 10; i++) {
            Resource obj = getNewTransientResource(i);
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
