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
import org.energyos.espi.thirdparty.common._DataCustodian;
import org.energyos.espi.thirdparty.common._DataCustodianDataOnDemand;
import org.energyos.espi.thirdparty.common._DataCustodianIntegrationTest;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect _DataCustodianIntegrationTest_Roo_IntegrationTest {
    
    declare @type: _DataCustodianIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: _DataCustodianIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: _DataCustodianIntegrationTest: @Transactional;
    
    @Autowired
    private _DataCustodianDataOnDemand _DataCustodianIntegrationTest.dod;
    
    @Test
    public void _DataCustodianIntegrationTest.testCount_DataCustodians() {
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to initialize correctly", dod.getRandom_DataCustodian());
        long count = _DataCustodian.count_DataCustodians();
        Assert.assertTrue("Counter for '_DataCustodian' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void _DataCustodianIntegrationTest.testFind_DataCustodian() {
        _DataCustodian obj = dod.getRandom_DataCustodian();
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to provide an identifier", id);
        obj = _DataCustodian.find_DataCustodian(id);
        Assert.assertNotNull("Find method for '_DataCustodian' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for '_DataCustodian' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void _DataCustodianIntegrationTest.testFindAll_DataCustodians() {
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to initialize correctly", dod.getRandom_DataCustodian());
        long count = _DataCustodian.count_DataCustodians();
        Assert.assertTrue("Too expensive to perform a find all test for '_DataCustodian', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<_DataCustodian> result = _DataCustodian.findAll_DataCustodians();
        Assert.assertNotNull("Find all method for '_DataCustodian' illegally returned null", result);
        Assert.assertTrue("Find all method for '_DataCustodian' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void _DataCustodianIntegrationTest.testFind_DataCustodianEntries() {
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to initialize correctly", dod.getRandom_DataCustodian());
        long count = _DataCustodian.count_DataCustodians();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<_DataCustodian> result = _DataCustodian.find_DataCustodianEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for '_DataCustodian' illegally returned null", result);
        Assert.assertEquals("Find entries method for '_DataCustodian' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void _DataCustodianIntegrationTest.testFlush() {
        _DataCustodian obj = dod.getRandom_DataCustodian();
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to provide an identifier", id);
        obj = _DataCustodian.find_DataCustodian(id);
        Assert.assertNotNull("Find method for '_DataCustodian' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modify_DataCustodian(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for '_DataCustodian' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void _DataCustodianIntegrationTest.testMergeUpdate() {
        _DataCustodian obj = dod.getRandom_DataCustodian();
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to provide an identifier", id);
        obj = _DataCustodian.find_DataCustodian(id);
        boolean modified =  dod.modify_DataCustodian(obj);
        Integer currentVersion = obj.getVersion();
        _DataCustodian merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for '_DataCustodian' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void _DataCustodianIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to initialize correctly", dod.getRandom_DataCustodian());
        _DataCustodian obj = dod.getNewTransient_DataCustodian(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected '_DataCustodian' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected '_DataCustodian' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void _DataCustodianIntegrationTest.testRemove() {
        _DataCustodian obj = dod.getRandom_DataCustodian();
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for '_DataCustodian' failed to provide an identifier", id);
        obj = _DataCustodian.find_DataCustodian(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove '_DataCustodian' with identifier '" + id + "'", _DataCustodian.find_DataCustodian(id));
    }
    
}
