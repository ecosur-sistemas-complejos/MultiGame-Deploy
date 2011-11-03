import org.junit.Before;
import org.junit.Test;

import java.util.Locale;
import java.util.ResourceBundle;

import static org.junit.Assert.assertEquals;

/**
 */
public class TestLoginEnPropertyBundle {

    private ResourceBundle bundle;

    @Before
    public void setUp() {
        bundle = ResourceBundle.getBundle("login", new Locale("en"));
    }

    @Test
    public void testTitle() {
        assertEquals(bundle.getString("title"), "MultiGame at ChiapasGames");
    }

    @Test
    public void  testBackGround() {
        assertEquals(bundle.getString("background"), "BACKGROUND");
    }

}
