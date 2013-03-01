package jobserach.action;

import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;
import net.sourceforge.stripes.action.SessionScope;
import net.sourceforge.stripes.integration.spring.SpringBean;

import org.mybatis.jpetstore.domain.Cart;
import org.mybatis.jpetstore.domain.CartItem;
import org.mybatis.jpetstore.domain.Item;
import org.mybatis.jpetstore.service.CatalogService;
import org.mybatis.jpetstore.web.actions.AbstractActionBean;

@SessionScope
public class JobSearchActionBean extends AbstractActionBean {

	private static final long serialVersionUID = -4038684592582714235L;

	private static final String VIEW_CART = "/WEB-INF/jsp/search/index.jsp";
	private static final String LIST_OUT = "/WEB-INF/jsp/search/list.jsp";
	private static final String DETAIL_VIEW= "/WEB-INF/jsp/search/detail.jsp";

	@SpringBean
	private transient CatalogService catalogService;


	@DefaultHandler
	public Resolution addItemToCart() {
		System.out.println("ok");
		return new ForwardResolution(VIEW_CART);
	}

	public ForwardResolution newOrder() {
		System.out.println("ok");
		return new ForwardResolution(LIST_OUT);
	}

	public void clear() {
	}

}
