package br.com.caelum.vraptor.proxy;

import static br.com.caelum.vraptor.proxy.CDIProxies.isCDIProxy;
import static br.com.caelum.vraptor.proxy.CDIProxies.unproxifyIfPossible;
import static org.hamcrest.Matchers.equalTo;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertThat;
import static org.junit.Assert.assertTrue;

import javax.enterprise.context.Dependent;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;

import br.com.caelum.vraptor.WeldJunitRunner;

@RunWith(WeldJunitRunner.class)
public class CDIProxiesTest {

	@Inject private AnyProxiableBean proxiable;
	@Inject private NonProxiableBean nonProxiable;
	
	@Test
	public void shoulIdentifyCDIProxies() {
		assertTrue(isCDIProxy(proxiable.getClass()));
		assertFalse(isCDIProxy(nonProxiable.getClass()));
	}
	
	@Test
	public void shouldUnproxifyCDIProxies() {
		AnyProxiableBean bean = unproxifyIfPossible(proxiable);
		assertFalse(isCDIProxy(bean.getClass()));
	}

	@Test
	public void shouldReturnTheBeanIfItsNotCDIProxy() {
		NonProxiableBean bean = unproxifyIfPossible(nonProxiable);
		assertThat(bean, equalTo(nonProxiable));
	}	
}

@RequestScoped class AnyProxiableBean {}
@Dependent class NonProxiableBean {}
