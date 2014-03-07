package com.seneca.controller;
/*
import static junit.framework.Assert.assertEquals;
import static junit.framework.Assert.assertNotNull;
import static junit.framework.Assert.assertNull;

import javax.security.sasl.AuthenticationException;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.mockito.internal.verification.VerificationModeFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.seneca.domain.Account;
import com.seneca.domain.SecurityHandlerInterceptor;
import com.seneca.service.AccountService;
*/
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"/servlet-context.xml"})
public class LoginControllerTest {

/*
    @Autowired
    private LoginController loginController;

    @Autowired
    private AccountService accountService;

    @Before
    public void setup() throws AuthenticationException{
       Account account = new Account(); 
         Mockito.when(accountService.login("john", "secret")).thenReturn(account);
    }

    @After
    public void verify() throws AuthenticationException {
            Mockito.verify(accountService, VerificationModeFactory.times(3)).login("john","secret");
            Mockito.reset();
    }

    @Test
    public void testHandleLogin() throws AuthenticationException {
            MockHttpServletRequest mockHttpServletRequest = new MockHttpServletRequest();
            mockHttpServletRequest.getSession().setAttribute(SecurityHandlerInterceptor.REQUESTED_URL,"someUrl");
            //String view = loginController.getLogin("john","secret",mockHttpServletRequest,mockHttpServletRequest.getSession());
            Account account = (Account) mockHttpServletRequest.getSession().getAttribute(SecurityHandlerInterceptor.ACCOUNT_ATTRIBUTE);
            assertNotNull(account);
            assertEquals("John",account.getFirstname());
            assertEquals("Doe",account.getLastname());
            assertNull(mockHttpServletRequest.getSession().getAttribute(SecurityHandlerInterceptor.REQUESTED_URL));
//            assertEquals("redirect:someUrl",view);

            //Test the different view selection choices
            mockHttpServletRequest = new MockHttpServletRequest();
           // view = LoginController.getLogin("john","secret",mockHttpServletRequest,mockHttpServletRequest.getSession());
           // assertEquals("redirect:/index.htm",view);

    }



*/

}
