package com.eric.zuul.filter;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;

/**
 * 自定义zuul过滤器
 *
 * @author Eric
 */
public class FirstFilter extends ZuulFilter {

    private static Logger log = LoggerFactory.getLogger(FirstFilter.class);

    /**
     * 指定过滤器的类型, 有四种取值方式
     * pre
     * route
     * post
     * error
     *
     * @return
     */
    @Override
    public String filterType() {
        return "pre";
    }

    /**
     * 指定过滤器的执行顺序, 不同的过滤器运行返回相同的数字
     *
     * @return
     */
    @Override
    public int filterOrder() {
        return 0;
    }

    /**
     * 用一个布尔值来判断该过滤器是否要执行, true表示执行, false表示不执行
     *
     * @return
     */
    @Override
    public boolean shouldFilter() {
        return true;
    }

    @Override
    public Object run() {
        RequestContext ctx = RequestContext.getCurrentContext();
        HttpServletRequest request = ctx.getRequest();
        //HttpServletResponse response = ctx.getResponse();

        log.info("第一级过滤器！");

        log.info("===============");

//        log.info(String.format("%s request to %s", request.getMethod(), request.getRequestURL().toString()));
//        System.out.println(request.getRequestURL());

//        Object accessToken = request.getParameter("accessToken");
//        if(accessToken == null) {
//            log.warn("access token is empty");
//            ctx.setSendZuulResponse(false);
//            ctx.setResponseStatusCode(401);
//            return null;
//        }
//        log.info("access token ok");
        return null;
    }

}
