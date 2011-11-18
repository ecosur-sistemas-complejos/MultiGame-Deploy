import org.junit.Before;
import org.junit.Test;

import java.util.Locale;
import java.util.ResourceBundle;

import static org.junit.Assert.assertEquals;

/**
 */
public class TestLoginEsPropertyBundle {

    private ResourceBundle bundle;

    @Before
    public void setUp() {
        bundle = ResourceBundle.getBundle("login", new Locale("es"));
    }

    @Test
    public void testTitle() {
        assertEquals(bundle.getString("title"), "MultiGame en ChiapasGames");
    }

    @Test
    public void  testBackGround() {
        assertEquals(bundle.getString("background"), "ANTECEDENTES");
    }

}
