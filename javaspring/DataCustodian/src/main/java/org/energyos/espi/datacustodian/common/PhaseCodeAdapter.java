/*******************************************************************************
 * Copyright (c) 2011, 2012, 2013 EnergyOS.Org
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


package org.energyos.espi.datacustodian.common;

import java.util.Iterator;
import java.util.List;

import javax.xml.bind.annotation.adapters.XmlAdapter;

import org.energyos.espi.datacustodian.common.PhaseCode;


public class PhaseCodeAdapter extends XmlAdapter<String, PhaseCode> {
   
	@Override
	public PhaseCode unmarshal(String v)
			throws Exception {
		int value = Integer.valueOf(v);
		PhaseCode aKind = null;
		List <PhaseCode> kinds = PhaseCode.findAllPhaseCodes();
		Iterator<PhaseCode> iterator = kinds.iterator();
      	while (iterator.hasNext()) {
           	aKind = iterator.next();
            if (aKind.getTypeMap() == value) { break; }
       	}
		return aKind;
	}

	@Override
	public String marshal(PhaseCode v)
			throws Exception {
		return v.getTypeMap().toString();
	}

}
