/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.apache.commons.math;

import junit.framework.AssertionFailedError;
import junit.framework.TestCase;

/**
 * A TestCase that retries tests when assertions fail.
 * <p>
 * If one or more tests throw an AssertionFailedError, all tests are 
 * repeated one time.  
 * <p>
 * Errors or exceptions other than AssertionFailedError do not lead to retries.
 *
 * @version $Revision: 762087 $ $Date: 2009-04-05 11:20:18 -0300 (Sun, 05 Apr 2009) $
 */
public abstract class RetryTestCase extends TestCase {

    public RetryTestCase() {
        super();
    }

    public RetryTestCase(String arg0) {
        super(arg0);
    }
    
    /**
     *  Override runTest() to catch AssertionFailedError and retry
     */
    @Override
    protected void runTest() throws Throwable {
        try {
            super.runTest();
        } catch (AssertionFailedError err) {
            // System.out.println("Retrying " + this.getName());
            super.runTest();
        }    
    }

}
