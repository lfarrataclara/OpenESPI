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

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;
import org.energyos.espi.datacustodian.common.ThirdPartyApplicationStatus;

privileged aspect ThirdPartyApplicationStatus_Roo_Jpa_Entity {
    
    declare @type: ThirdPartyApplicationStatus: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long ThirdPartyApplicationStatus.id;
    
    @Version
    @Column(name = "version")
    private Integer ThirdPartyApplicationStatus.version;
    
    public Long ThirdPartyApplicationStatus.getId() {
        return this.id;
    }
    
    public void ThirdPartyApplicationStatus.setId(Long id) {
        this.id = id;
    }
    
    public Integer ThirdPartyApplicationStatus.getVersion() {
        return this.version;
    }
    
    public void ThirdPartyApplicationStatus.setVersion(Integer version) {
        this.version = version;
    }
    
}
