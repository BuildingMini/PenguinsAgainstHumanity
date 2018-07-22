package net.socialgamer.cah.handlers;

import com.google.inject.Inject;
import net.socialgamer.cah.Constants.*;
import net.socialgamer.cah.RequestWrapper;
import net.socialgamer.cah.data.ConnectedUsers;
import net.socialgamer.cah.data.QueuedMessage;
import net.socialgamer.cah.data.QueuedMessage.MessageType;
import net.socialgamer.cah.data.User;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


public class KickHandler extends Handler {
  public static final String OP = AjaxOperation.KICK.toString();
  protected final Logger logger = Logger.getLogger(KickHandler.class);
  private final ConnectedUsers connectedUsers;

  @Inject
  public KickHandler(final ConnectedUsers connectedUsers) {
    this.connectedUsers = connectedUsers;
  }

  @Override
  public Map<ReturnableData, Object> handle(final RequestWrapper request, final HttpSession session) {
    final User user = (User) session.getAttribute(SessionAttribute.USER);
    assert (user != null);

    if (!user.isAdmin()) {
      return error(ErrorCode.NOT_ADMIN);
    }

    if (null == request.getParameter(AjaxRequest.NICKNAME)
            || request.getParameter(AjaxRequest.NICKNAME).isEmpty()) {
      return error(ErrorCode.NO_NICK_SPECIFIED);
    }

    final User kickUser = connectedUsers.getUser(request.getParameter(AjaxRequest.NICKNAME));
    if (null == kickUser) {
      return error(ErrorCode.NO_SUCH_USER);
    }

    final Map<ReturnableData, Object> kickData = new HashMap<ReturnableData, Object>();
    kickData.put(LongPollResponse.EVENT, LongPollEvent.KICKED.toString());
    final QueuedMessage qm = new QueuedMessage(MessageType.KICKED, kickData);
    kickUser.enqueueMessage(qm);

    connectedUsers.removeUser(kickUser, DisconnectReason.KICKED);
    logger.warn(String.format("Kicking %s by request of %s", kickUser.getNickname(),
            user.getNickname()));

    return new HashMap<ReturnableData, Object>();
  }
}
