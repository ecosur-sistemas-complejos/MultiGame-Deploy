package mx.ecosur.multigame.session;

import mx.ecosur.multigame.ejb.interfaces.RegistrarRemote;
import mx.ecosur.multigame.ejb.interfaces.SharedBoardRemote;
import mx.ecosur.multigame.enums.MoveStatus;
import mx.ecosur.multigame.exception.InvalidMoveException;
import mx.ecosur.multigame.grid.Color;
import mx.ecosur.multigame.grid.entity.GameGrid;
import mx.ecosur.multigame.grid.entity.GridPlayer;
import mx.ecosur.multigame.grid.entity.GridRegistrant;
import mx.ecosur.multigame.impl.entity.manantiales.*;
import mx.ecosur.multigame.impl.enums.manantiales.AgentType;
import mx.ecosur.multigame.impl.enums.manantiales.Mode;
import mx.ecosur.multigame.impl.enums.manantiales.TokenType;
import mx.ecosur.multigame.model.interfaces.Registrant;
import org.junit.Before;
import org.junit.Test;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.security.auth.login.LoginContext;
import java.rmi.RemoteException;
import java.util.List;
import java.util.Properties;

import static org.junit.Assert.*;

/**
 * @author awaterma@ecosur.mx
 */
public class ManantialesAgencyTest {

    private RegistrarRemote registrar;

    private SharedBoardRemote board;

    private int gameId;

    private ManantialesPlayer alice;

    private SimpleAgent[] agents;

    @Before
    public void fixtures () throws Exception {
        Properties props = new Properties();
        props.put(Context.INITIAL_CONTEXT_FACTORY, "org.jnp.interfaces.NamingContextFactory");
        props.put(Context.URL_PKG_PREFIXES, "org.jnp.interfaces.NamingContextFactory");
        props.put(Context.PROVIDER_URL, "jnp://localhost:1099/");

        AuthCallbackHandler cbHandler = new AuthCallbackHandler("alice", "test");
        LoginContext lctx = new LoginContext("Client-MultiGame", cbHandler);
        lctx.login();
        InitialContext ic = new InitialContext(props);

        agents = new SimpleAgent [3];
        registrar = (RegistrarRemote) ic.lookup("mx.ecosur.multigame.ejb.interfaces.RegistrarRemote");
        ManantialesGame game = new ManantialesGame ();
        game.setMode(Mode.BASIC_PUZZLE);
        Registrant registrant = registrar.register(new GridRegistrant("alice"));
        game = (ManantialesGame) registrar.registerPlayer(game, registrant);

        if (gameId == 0) {
            gameId = game.getId();
        }

        Color[] colors = { Color.BLUE, Color.RED, Color.PURPLE };
        for (int i = 0; i < 3; i++) {
            registrar.registerAgent(game, new SimpleAgent(new GridRegistrant ("Agent-" + (i + 1)),
                    colors[i], AgentType.SIMPLE));
        }

        /* Get the SharedBoard */
        board = (SharedBoardRemote) ic.lookup( "mx.ecosur.multigame.ejb.interfaces.SharedBoardRemote");
        game = (ManantialesGame) board.getGame(gameId);

        /* Set the GamePlayers from the SharedBoard */
        List<GridPlayer> players = (List<GridPlayer>) game.getPlayers();
        int counter = 0;
        for (GridPlayer p : players) {
            if (p.getName().equals("alice"))
                alice = (ManantialesPlayer) p;
            else if (p instanceof SimpleAgent) {
                agents [ counter++ ] = (SimpleAgent) p;
            }
        }

        assertNotNull ("Alice not found in game!", alice);
        assertEquals (agents.length, 3);
    }

    @Test
       public void testBasicAgentMoves () throws InvalidMoveException, InterruptedException {
           alice.setTurn (true);

           ManantialesFicha play = new ManantialesFicha(5, 4, alice.getColor(),
                           TokenType.MODERATE_PASTURE);

           ManantialesMove move = new ManantialesMove (alice, play);
           ManantialesGame game = (ManantialesGame) board.getGame(gameId);
           move = (ManantialesMove) board.doMove(game, move);

           game = (ManantialesGame) board.getGame(gameId);
           GameGrid grid = game.getGrid();

           assertEquals (MoveStatus.EVALUATED, move.getStatus());
           assertEquals (play, grid.getLocation(play));

           /* Wait for agents to move */
           Thread.sleep(15000);

           game = (ManantialesGame) board.getGame(gameId);
           grid = game.getGrid();

           assertEquals (4, grid.getCells().size());
       }

}
