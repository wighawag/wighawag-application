package wighawag.application;

import massive.munit.util.Timer;
import massive.munit.Assert;
import massive.munit.async.AsyncFactory;
import wighawag.application.Application;

class ApplicationTest 
{
	var instance:Application; 
	
	public function new() 
	{
		
	}
	
	@BeforeClass
	public function beforeClass():Void
	{
	}
	
	@AfterClass
	public function afterClass():Void
	{
	}
	
	@Before
	public function setup():Void
	{
	}
	
	@After
	public function tearDown():Void
	{
	}
	
	@Test
	public function testExample():Void
	{
		instance = new Application(new DummyApplicationManager());
		Assert.isTrue(true);
	}
}
