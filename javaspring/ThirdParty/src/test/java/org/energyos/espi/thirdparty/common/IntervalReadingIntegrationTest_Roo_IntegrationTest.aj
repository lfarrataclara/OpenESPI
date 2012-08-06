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
import org.energyos.espi.thirdparty.common.IntervalReading;
import org.energyos.espi.thirdparty.common.IntervalReadingDataOnDemand;
import org.energyos.espi.thirdparty.common.IntervalReadingIntegrationTest;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect IntervalReadingIntegrationTest_Roo_IntegrationTest {
    
    declare @type: IntervalReadingIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: IntervalReadingIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: IntervalReadingIntegrationTest: @Transactional;
    
    @Autowired
    private IntervalReadingDataOnDemand IntervalReadingIntegrationTest.dod;
    
    @Test
    public void IntervalReadingIntegrationTest.testCountIntervalReadings() {
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to initialize correctly", dod.getRandomIntervalReading());
        long count = IntervalReading.countIntervalReadings();
        Assert.assertTrue("Counter for 'IntervalReading' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void IntervalReadingIntegrationTest.testFindIntervalReading() {
        IntervalReading obj = dod.getRandomIntervalReading();
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to provide an identifier", id);
        obj = IntervalReading.findIntervalReading(id);
        Assert.assertNotNull("Find method for 'IntervalReading' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'IntervalReading' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void IntervalReadingIntegrationTest.testFindAllIntervalReadings() {
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to initialize correctly", dod.getRandomIntervalReading());
        long count = IntervalReading.countIntervalReadings();
        Assert.assertTrue("Too expensive to perform a find all test for 'IntervalReading', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<IntervalReading> result = IntervalReading.findAllIntervalReadings();
        Assert.assertNotNull("Find all method for 'IntervalReading' illegally returned null", result);
        Assert.assertTrue("Find all method for 'IntervalReading' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void IntervalReadingIntegrationTest.testFindIntervalReadingEntries() {
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to initialize correctly", dod.getRandomIntervalReading());
        long count = IntervalReading.countIntervalReadings();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<IntervalReading> result = IntervalReading.findIntervalReadingEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'IntervalReading' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'IntervalReading' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void IntervalReadingIntegrationTest.testFlush() {
        IntervalReading obj = dod.getRandomIntervalReading();
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to provide an identifier", id);
        obj = IntervalReading.findIntervalReading(id);
        Assert.assertNotNull("Find method for 'IntervalReading' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyIntervalReading(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'IntervalReading' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void IntervalReadingIntegrationTest.testMergeUpdate() {
        IntervalReading obj = dod.getRandomIntervalReading();
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to provide an identifier", id);
        obj = IntervalReading.findIntervalReading(id);
        boolean modified =  dod.modifyIntervalReading(obj);
        Integer currentVersion = obj.getVersion();
        IntervalReading merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'IntervalReading' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void IntervalReadingIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to initialize correctly", dod.getRandomIntervalReading());
        IntervalReading obj = dod.getNewTransientIntervalReading(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'IntervalReading' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'IntervalReading' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void IntervalReadingIntegrationTest.testRemove() {
        IntervalReading obj = dod.getRandomIntervalReading();
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'IntervalReading' failed to provide an identifier", id);
        obj = IntervalReading.findIntervalReading(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'IntervalReading' with identifier '" + id + "'", IntervalReading.findIntervalReading(id));
    }
    
}
