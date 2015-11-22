/*
 * The Apache Software License, Version 1.1
 *
 * Copyright (c) 2000 The Apache Software Foundation.  All rights
 * reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * 3. The end-user documentation included with the redistribution, if
 *    any, must include the following acknowlegement:
 *       "This product includes software developed by the
 *        Apache Software Foundation (http://www.apache.org/)."
 *    Alternately, this acknowlegement may appear in the software itself,
 *    if and wherever such third-party acknowlegements normally appear.
 *
 * 4. The names "The Jakarta Project", "Ant", and "Apache Software
 *    Foundation" must not be used to endorse or promote products derived
 *    from this software without prior written permission. For written
 *    permission, please contact apache@apache.org.
 *
 * 5. Products derived from this software may not be called "Apache"
 *    nor may "Apache" appear in their names without prior written
 *    permission of the Apache Group.
 *
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
 * ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
 * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 * ====================================================================
 *
 * This software consists of voluntary contributions made by many
 * individuals on behalf of the Apache Software Foundation.  For more
 * information on the Apache Software Foundation, please see
 * <http://www.apache.org/>.
 */

package org.apache.tools.ant.types;

import org.apache.tools.ant.Project;
import org.junit.Ignore;

import junit.framework.TestCase;
import junit.framework.AssertionFailedError;

import java.io.File;

/**
 * JUnit 3 testcases for org.apache.tools.ant.CommandlineJava
 *
 * @author <a href="mailto:stefan.bodewig@epost.de">Stefan Bodewig</a> 
 */
@Ignore
public class CommandlineJavaTest extends TestCase {

    public CommandlineJavaTest(String name) {
        super(name);
    }

    private Project project;

    public void setUp() {
        project = new Project();
        project.setBasedir(".");
        project.setProperty("build.sysclasspath", "ignore");
    }

    public void testGetCommandline() {
        CommandlineJava c = new CommandlineJava();
        c.createArgument().setValue("org.apache.tools.ant.CommandlineJavaTest");
        c.setClassname("junit.textui.TestRunner");
        c.createVmArgument().setValue("-Djava.compiler=NONE");
        String[] s = c.getCommandline();
        assertEquals("no classpath", 4, s.length);
        /*
         * After changing CommandlineJava to search for the java
         * executable, I don't know, how to tests the value returned
         * here without using the same logic as applied in the class
         * itself.
         *
         * assert("no classpath", "java", s[0]);
         */
        assertEquals("no classpath", "-Djava.compiler=NONE", s[1]);
        assertEquals("no classpath", "junit.textui.TestRunner", s[2]);
        assertEquals("no classpath", 
                     "org.apache.tools.ant.CommandlineJavaTest", s[3]);
        try {
            CommandlineJava c2 = (CommandlineJava) c.clone();
        } catch (NullPointerException ex) {
            fail("cloning should work without classpath specified");
        }

        //c.createClasspath(project).setLocation(project.resolveFile("lib/optional/junit.jar"));SAEG
        c.createClasspath(project).setLocation(project.resolveFile("lib/optional/tools.jar"));//SAEG
        c.createClasspath(project).setLocation(project.resolveFile("bootstrap/lib/ant.jar"));
        s = c.getCommandline();
        assertEquals("with classpath", 6, s.length);
        //        assertEquals("with classpath", "java", s[0]);
        assertEquals("with classpath", "-Djava.compiler=NONE", s[1]);
        assertEquals("with classpath", "-classpath", s[2]);
        /*assertTrue("junit.jar contained", 
               s[3].indexOf("junit.jar"+java.io.File.pathSeparator) >= 0);*///SAEG
        assertTrue("tools.jar contained", s[3].indexOf("tools.jar"+java.io.File.pathSeparator) >= 0);//SAEG
        assertTrue("ant.jar contained", s[3].endsWith("ant.jar"));
        assertEquals("with classpath", "junit.textui.TestRunner", s[4]);
        assertEquals("with classpath", 
                     "org.apache.tools.ant.CommandlineJavaTest", s[5]);
    }

}