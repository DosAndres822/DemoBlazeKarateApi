import com.intuit.karate.junit5.Karate;

public class DemoBlazeApiRunner {

    /*@Karate.Test
    Karate testSample() {
        return Karate.run().relativeTo(getClass());

    }*/

    @Karate.Test
    Karate testSystemProperty() {
        return Karate.run("classpath:features/SignUp.feature")
                .tags("@Sign");
    }

    /*@Karate.Test
    Karate testSample() {
        return Karate.run("classpath:SignUp.feature");
    }*/
}
