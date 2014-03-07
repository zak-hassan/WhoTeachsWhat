/**
 * 
 */
package com.seneca.service;


/**
 * @author zmhassan
 *
 */
public class AccountServiceTest {

//	
//	//AccountService service = new AccountService();
//	/**
//	 * @throws java.lang.Exception
//	 */
//	@BeforeClass
//	public static void setUpBeforeClass() throws Exception {
//	}
//
//	/**
//	 * @throws java.lang.Exception
//	 */
//	@AfterClass
//	public static void tearDownAfterClass() throws Exception {
//	}

	/**
	 * @throws java.lang.Exception
	 */
	/**
	 * @throws java.lang.Exception

	@Before
	public void setUp() throws Exception {
	}


	@After
	public void tearDown() throws Exception {
	}

	@Test(expected= AuthenticationException.class)
	public void testValidUser() throws AuthenticationException {
		Account account= service.login("zak.hassan1010@gmail.com", "a12345");
	}
	
	@Test(expected= AuthenticationException.class)
	public void testUserName() throws AuthenticationException {
		Account account= service.login("a", "a12345");
	}



	@Test(expected= AuthenticationException.class)
	public void testPassword() throws AuthenticationException {
		Account account= service.login("zak.hassan1010@gmail.com", "a");
	}


	@Test(expected= AuthenticationException.class)
	public void testBothUserNamePassword() throws AuthenticationException {
		Account account= service.login("--", "--");
	}
	
	@Test
	public void testReturnAccount() throws AuthenticationException {
		//  TEST FAILING CHECKOUT HAMCREST !!!
	//	assertThat("Account is instance of Account.class: ",  service.login("zak.hassan1010@gmail.com", "a12345").getClass() , equalTo( Account.class ));
		//assertThat("Account exists: ", equalTo(), 
			//	is(equalTo( service.login("zak.hassan1010@gmail.com", "a"))));
		;
	}
		 */

}
