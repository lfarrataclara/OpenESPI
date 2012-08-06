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

package org.energyos.espi.thirdparty.domain;

import java.util.Set;
import org.energyos.espi.thirdparty.common.ApplicationInformation;
import org.energyos.espi.thirdparty.common.DataCustodianApplicationStatus;
import org.energyos.espi.thirdparty.common.DataCustodianType;
import org.energyos.espi.thirdparty.common.ServiceStatus;
import org.energyos.espi.thirdparty.domain.DataCustodian;
import org.energyos.espi.thirdparty.domain.RetailCustomer;
import org.energyos.espi.thirdparty.domain.ThirdParty;

privileged aspect DataCustodian_Roo_JavaBean {
    
    public String DataCustodian.getName() {
        return this.name;
    }
    
    public void DataCustodian.setName(String name) {
        this.name = name;
    }
    
    public String DataCustodian.getDescription() {
        return this.description;
    }
    
    public void DataCustodian.setDescription(String description) {
        this.description = description;
    }
    
    public DataCustodianType DataCustodian.getServiceType() {
        return this.serviceType;
    }
    
    public void DataCustodian.setServiceType(DataCustodianType serviceType) {
        this.serviceType = serviceType;
    }
    
    public Set<ThirdParty> DataCustodian.getAuthorizedThirdPartys() {
        return this.authorizedThirdPartys;
    }
    
    public void DataCustodian.setAuthorizedThirdPartys(Set<ThirdParty> authorizedThirdPartys) {
        this.authorizedThirdPartys = authorizedThirdPartys;
    }
    
    public Set<RetailCustomer> DataCustodian.getRetailCustomers() {
        return this.retailCustomers;
    }
    
    public void DataCustodian.setRetailCustomers(Set<RetailCustomer> retailCustomers) {
        this.retailCustomers = retailCustomers;
    }
    
    public ApplicationInformation DataCustodian.getApplicationInformation() {
        return this.applicationInformation;
    }
    
    public void DataCustodian.setApplicationInformation(ApplicationInformation applicationInformation) {
        this.applicationInformation = applicationInformation;
    }
    
    public DataCustodianApplicationStatus DataCustodian.getDataCustodianApplicationStatus() {
        return this.dataCustodianApplicationStatus;
    }
    
    public void DataCustodian.setDataCustodianApplicationStatus(DataCustodianApplicationStatus dataCustodianApplicationStatus) {
        this.dataCustodianApplicationStatus = dataCustodianApplicationStatus;
    }
    
    public ServiceStatus DataCustodian.getServiceStatus() {
        return this.serviceStatus;
    }
    
    public void DataCustodian.setServiceStatus(ServiceStatus serviceStatus) {
        this.serviceStatus = serviceStatus;
    }
    
    public String DataCustodian.getMRID() {
        return this.mRID;
    }
    
    public void DataCustodian.setMRID(String mRID) {
        this.mRID = mRID;
    }
    
}
