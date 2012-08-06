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
import org.energyos.espi.thirdparty.common.IdentifiedObject;
import org.energyos.espi.thirdparty.common.IdentifiedObjectDataOnDemand;
import org.energyos.espi.thirdparty.common.IdentifiedObjectIntegrationTest;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect IdentifiedObjectIntegrationTest_Roo_IntegrationTest {
    
    declare @type: IdentifiedObjectIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: IdentifiedObjectIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: IdentifiedObjectIntegrationTest: @Transactional;
    
    @Autowired
    private IdentifiedObjectDataOnDemand IdentifiedObjectIntegrationTest.dod;
    
    @Test
    public void IdentifiedObjectIntegrationTest.testCountIdentifiedObjects() {
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to initialize correctly", dod.getRandomIdentifiedObject());
        long count = IdentifiedObject.countIdentifiedObjects();
        Assert.assertTrue("Counter for 'IdentifiedObject' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void IdentifiedObjectIntegrationTest.testFindIdentifiedObject() {
        IdentifiedObject obj = dod.getRandomIdentifiedObject();
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to provide an identifier", id);
        obj = IdentifiedObject.findIdentifiedObject(id);
        Assert.assertNotNull("Find method for 'IdentifiedObject' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'IdentifiedObject' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void IdentifiedObjectIntegrationTest.testFindAllIdentifiedObjects() {
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to initialize correctly", dod.getRandomIdentifiedObject());
        long count = IdentifiedObject.countIdentifiedObjects();
        Assert.assertTrue("Too expensive to perform a find all test for 'IdentifiedObject', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<IdentifiedObject> result = IdentifiedObject.findAllIdentifiedObjects();
        Assert.assertNotNull("Find all method for 'IdentifiedObject' illegally returned null", result);
        Assert.assertTrue("Find all method for 'IdentifiedObject' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void IdentifiedObjectIntegrationTest.testFindIdentifiedObjectEntries() {
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to initialize correctly", dod.getRandomIdentifiedObject());
        long count = IdentifiedObject.countIdentifiedObjects();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<IdentifiedObject> result = IdentifiedObject.findIdentifiedObjectEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'IdentifiedObject' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'IdentifiedObject' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void IdentifiedObjectIntegrationTest.testFlush() {
        IdentifiedObject obj = dod.getRandomIdentifiedObject();
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to provide an identifier", id);
        obj = IdentifiedObject.findIdentifiedObject(id);
        Assert.assertNotNull("Find method for 'IdentifiedObject' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyIdentifiedObject(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'IdentifiedObject' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void IdentifiedObjectIntegrationTest.testMergeUpdate() {
        IdentifiedObject obj = dod.getRandomIdentifiedObject();
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to provide an identifier", id);
        obj = IdentifiedObject.findIdentifiedObject(id);
        boolean modified =  dod.modifyIdentifiedObject(obj);
        Integer currentVersion = obj.getVersion();
        IdentifiedObject merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'IdentifiedObject' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void IdentifiedObjectIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to initialize correctly", dod.getRandomIdentifiedObject());
        IdentifiedObject obj = dod.getNewTransientIdentifiedObject(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'IdentifiedObject' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'IdentifiedObject' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void IdentifiedObjectIntegrationTest.testRemove() {
        IdentifiedObject obj = dod.getRandomIdentifiedObject();
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'IdentifiedObject' failed to provide an identifier", id);
        obj = IdentifiedObject.findIdentifiedObject(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'IdentifiedObject' with identifier '" + id + "'", IdentifiedObject.findIdentifiedObject(id));
    }
    
}
