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
import org.energyos.espi.thirdparty.common.ConsumptionTier;
import org.energyos.espi.thirdparty.common.ConsumptionTierDataOnDemand;
import org.energyos.espi.thirdparty.common.ConsumptionTierIntegrationTest;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ConsumptionTierIntegrationTest_Roo_IntegrationTest {
    
    declare @type: ConsumptionTierIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: ConsumptionTierIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: ConsumptionTierIntegrationTest: @Transactional;
    
    @Autowired
    ConsumptionTierDataOnDemand ConsumptionTierIntegrationTest.dod;
    
    @Test
    public void ConsumptionTierIntegrationTest.testCountConsumptionTiers() {
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to initialize correctly", dod.getRandomConsumptionTier());
        long count = ConsumptionTier.countConsumptionTiers();
        Assert.assertTrue("Counter for 'ConsumptionTier' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void ConsumptionTierIntegrationTest.testFindConsumptionTier() {
        ConsumptionTier obj = dod.getRandomConsumptionTier();
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to provide an identifier", id);
        obj = ConsumptionTier.findConsumptionTier(id);
        Assert.assertNotNull("Find method for 'ConsumptionTier' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'ConsumptionTier' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void ConsumptionTierIntegrationTest.testFindAllConsumptionTiers() {
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to initialize correctly", dod.getRandomConsumptionTier());
        long count = ConsumptionTier.countConsumptionTiers();
        Assert.assertTrue("Too expensive to perform a find all test for 'ConsumptionTier', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<ConsumptionTier> result = ConsumptionTier.findAllConsumptionTiers();
        Assert.assertNotNull("Find all method for 'ConsumptionTier' illegally returned null", result);
        Assert.assertTrue("Find all method for 'ConsumptionTier' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void ConsumptionTierIntegrationTest.testFindConsumptionTierEntries() {
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to initialize correctly", dod.getRandomConsumptionTier());
        long count = ConsumptionTier.countConsumptionTiers();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<ConsumptionTier> result = ConsumptionTier.findConsumptionTierEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'ConsumptionTier' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'ConsumptionTier' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void ConsumptionTierIntegrationTest.testFlush() {
        ConsumptionTier obj = dod.getRandomConsumptionTier();
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to provide an identifier", id);
        obj = ConsumptionTier.findConsumptionTier(id);
        Assert.assertNotNull("Find method for 'ConsumptionTier' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyConsumptionTier(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'ConsumptionTier' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ConsumptionTierIntegrationTest.testMergeUpdate() {
        ConsumptionTier obj = dod.getRandomConsumptionTier();
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to provide an identifier", id);
        obj = ConsumptionTier.findConsumptionTier(id);
        boolean modified =  dod.modifyConsumptionTier(obj);
        Integer currentVersion = obj.getVersion();
        ConsumptionTier merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'ConsumptionTier' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void ConsumptionTierIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to initialize correctly", dod.getRandomConsumptionTier());
        ConsumptionTier obj = dod.getNewTransientConsumptionTier(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'ConsumptionTier' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'ConsumptionTier' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void ConsumptionTierIntegrationTest.testRemove() {
        ConsumptionTier obj = dod.getRandomConsumptionTier();
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'ConsumptionTier' failed to provide an identifier", id);
        obj = ConsumptionTier.findConsumptionTier(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'ConsumptionTier' with identifier '" + id + "'", ConsumptionTier.findConsumptionTier(id));
    }
    
}
