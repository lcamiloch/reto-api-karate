package api;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    
    @Karate.Test
    Karate test() {
        return Karate.run("classpath:api/features").relativeTo(getClass());
    }
}