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

import java.util.List;
import org.energyos.espi.datacustodian.common.ReadingType;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ReadingType_Roo_Jpa_ActiveRecord {
    
    public static long ReadingType.countReadingTypes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM ReadingType o", Long.class).getSingleResult();
    }
    
    public static List<ReadingType> ReadingType.findAllReadingTypes() {
        return entityManager().createQuery("SELECT o FROM ReadingType o", ReadingType.class).getResultList();
    }
    
    public static ReadingType ReadingType.findReadingType(Long id) {
        if (id == null) return null;
        return entityManager().find(ReadingType.class, id);
    }
    
    public static List<ReadingType> ReadingType.findReadingTypeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM ReadingType o", ReadingType.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public ReadingType ReadingType.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        ReadingType merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
