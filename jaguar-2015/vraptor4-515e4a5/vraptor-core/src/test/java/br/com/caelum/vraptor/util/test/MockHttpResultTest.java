/***
 * Copyright (c) 2009 Caelum - www.caelum.com.br/opensource All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */
package br.com.caelum.vraptor.util.test;

import org.junit.Assert;

import org.junit.Before;
import org.junit.Test;

import br.com.caelum.vraptor.view.Results;

public class MockHttpResultTest {
	private MockHttpResult result;
	
	@Before
	public void setUp() throws Exception {
		result = new MockHttpResult();
	}
	
	@Test
	public void test() throws Exception {
		result.use(Results.http()).body("content");
		Assert.assertEquals("content", result.getBody());
	}
}
