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

package org.energyos.espi.datacustodian.domain;

import java.util.List;
import org.energyos.espi.datacustodian.domain.RetailCustomer;
import org.energyos.espi.datacustodian.domain.RetailCustomerDataOnDemand;
import org.energyos.espi.datacustodian.domain.RetailCustomerIntegrationTest;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect RetailCustomerIntegrationTest_Roo_IntegrationTest {
    
    declare @type: RetailCustomerIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: RetailCustomerIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext*.xml");
    
    declare @type: RetailCustomerIntegrationTest: @Transactional;
    
    @Autowired
    private RetailCustomerDataOnDemand RetailCustomerIntegrationTest.dod;
    
    @Test
    public void RetailCustomerIntegrationTest.testCountRetailCustomers() {
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to initialize correctly", dod.getRandomRetailCustomer());
        long count = RetailCustomer.countRetailCustomers();
        Assert.assertTrue("Counter for 'RetailCustomer' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void RetailCustomerIntegrationTest.testFindRetailCustomer() {
        RetailCustomer obj = dod.getRandomRetailCustomer();
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to provide an identifier", id);
        obj = RetailCustomer.findRetailCustomer(id);
        Assert.assertNotNull("Find method for 'RetailCustomer' illegally returned null for id '" + id + "'", obj);
        Assert.assertEquals("Find method for 'RetailCustomer' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void RetailCustomerIntegrationTest.testFindAllRetailCustomers() {
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to initialize correctly", dod.getRandomRetailCustomer());
        long count = RetailCustomer.countRetailCustomers();
        Assert.assertTrue("Too expensive to perform a find all test for 'RetailCustomer', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        List<RetailCustomer> result = RetailCustomer.findAllRetailCustomers();
        Assert.assertNotNull("Find all method for 'RetailCustomer' illegally returned null", result);
        Assert.assertTrue("Find all method for 'RetailCustomer' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void RetailCustomerIntegrationTest.testFindRetailCustomerEntries() {
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to initialize correctly", dod.getRandomRetailCustomer());
        long count = RetailCustomer.countRetailCustomers();
        if (count > 20) count = 20;
        int firstResult = 0;
        int maxResults = (int) count;
        List<RetailCustomer> result = RetailCustomer.findRetailCustomerEntries(firstResult, maxResults);
        Assert.assertNotNull("Find entries method for 'RetailCustomer' illegally returned null", result);
        Assert.assertEquals("Find entries method for 'RetailCustomer' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void RetailCustomerIntegrationTest.testFlush() {
        RetailCustomer obj = dod.getRandomRetailCustomer();
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to provide an identifier", id);
        obj = RetailCustomer.findRetailCustomer(id);
        Assert.assertNotNull("Find method for 'RetailCustomer' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyRetailCustomer(obj);
        Integer currentVersion = obj.getVersion();
        obj.flush();
        Assert.assertTrue("Version for 'RetailCustomer' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void RetailCustomerIntegrationTest.testMergeUpdate() {
        RetailCustomer obj = dod.getRandomRetailCustomer();
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to provide an identifier", id);
        obj = RetailCustomer.findRetailCustomer(id);
        boolean modified =  dod.modifyRetailCustomer(obj);
        Integer currentVersion = obj.getVersion();
        RetailCustomer merged = obj.merge();
        obj.flush();
        Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        Assert.assertTrue("Version for 'RetailCustomer' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void RetailCustomerIntegrationTest.testPersist() {
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to initialize correctly", dod.getRandomRetailCustomer());
        RetailCustomer obj = dod.getNewTransientRetailCustomer(Integer.MAX_VALUE);
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to provide a new transient entity", obj);
        Assert.assertNull("Expected 'RetailCustomer' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        Assert.assertNotNull("Expected 'RetailCustomer' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void RetailCustomerIntegrationTest.testRemove() {
        RetailCustomer obj = dod.getRandomRetailCustomer();
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to initialize correctly", obj);
        Long id = obj.getId();
        Assert.assertNotNull("Data on demand for 'RetailCustomer' failed to provide an identifier", id);
        obj = RetailCustomer.findRetailCustomer(id);
        obj.remove();
        obj.flush();
        Assert.assertNull("Failed to remove 'RetailCustomer' with identifier '" + id + "'", RetailCustomer.findRetailCustomer(id));
    }
    
}
