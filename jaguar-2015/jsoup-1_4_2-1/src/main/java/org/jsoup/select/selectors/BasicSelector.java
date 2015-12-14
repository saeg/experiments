package org.jsoup.select.selectors;

import java.util.Arrays;

import org.jsoup.select.Evaluator;

public class BasicSelector {
	
	public static OrSelector or(Evaluator... sels) {
		return new OrSelector(Arrays.asList(sels));
	}
	
	public static AndSelector and(Evaluator... sels) {
		return new AndSelector(Arrays.asList(sels));
	}
	
	public static NotSelector not(Evaluator sel) {
		return new NotSelector(sel);
	}
}
