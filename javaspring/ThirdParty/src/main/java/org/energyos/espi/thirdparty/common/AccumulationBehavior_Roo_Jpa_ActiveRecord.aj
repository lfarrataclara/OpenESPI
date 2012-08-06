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

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.energyos.espi.thirdparty.common.AccumulationBehavior;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AccumulationBehavior_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager AccumulationBehavior.entityManager;
    
    public static final EntityManager AccumulationBehavior.entityManager() {
        EntityManager em = new AccumulationBehavior().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AccumulationBehavior.countAccumulationBehaviors() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AccumulationBehavior o", Long.class).getSingleResult();
    }
    
    public static List<AccumulationBehavior> AccumulationBehavior.findAllAccumulationBehaviors() {
        return entityManager().createQuery("SELECT o FROM AccumulationBehavior o", AccumulationBehavior.class).getResultList();
    }
    
    public static AccumulationBehavior AccumulationBehavior.findAccumulationBehavior(Long id) {
        if (id == null) return null;
        return entityManager().find(AccumulationBehavior.class, id);
    }
    
    public static List<AccumulationBehavior> AccumulationBehavior.findAccumulationBehaviorEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AccumulationBehavior o", AccumulationBehavior.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void AccumulationBehavior.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AccumulationBehavior.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AccumulationBehavior attached = AccumulationBehavior.findAccumulationBehavior(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AccumulationBehavior.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AccumulationBehavior.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AccumulationBehavior AccumulationBehavior.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AccumulationBehavior merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
