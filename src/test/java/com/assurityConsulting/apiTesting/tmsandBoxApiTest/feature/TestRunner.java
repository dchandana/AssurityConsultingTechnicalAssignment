package com.assurityConsulting.apiTesting.tmsandBoxApiTest.feature;

import com.intuit.karate.junit5.Karate;

/**
 * TestRunner class to for interlink between feature files
 */
public class TestRunner {

	/**
	 * Method configured to run categoriesTest.feature file.
	 */
	@Karate.Test
	Karate testCategories() {
		return Karate.run("categoriesTest").relativeTo(getClass());

	}

}
