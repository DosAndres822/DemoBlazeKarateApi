import com.intuit.karate.junit5.Karate;



public class DemoBlazeApiRunner {

    /*@Karate.Test
    Karate testSample() {
        return Karate.run().relativeTo(getClass());

    }*/

    @Karate.Test
    Karate testSystemProperty() {
        return Karate.run("classpath:features/")
                /*.tags("@sign");*/
              /*.tags("@signFail");*/
              /*.tags("@allSign");*/
                /*.tags("@login");*/
              /*.tags("@loginFail");*/
             /*.tags("@loginWrongPass");*/
                /*.tags("@allLogin");*/
             .tags("@allScenarios");


    }

}