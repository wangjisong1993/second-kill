package com.eric.zuul.filter;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletRequest;


public class SecondFilter extends ZuulFilter  {

    private static Logger log = LoggerFactory.getLogger(SecondFilter.class);

    @Override
    public String filterType() {
        return "pre";
    }

    /**
     * 此处决定过滤器的执行顺序
     * @return
     */
    @Override
    public int filterOrder() {
        return 1;
    }

    @Override
    public boolean shouldFilter() {
        return true;
    }

    @Override
    public Object run() {
        RequestContext ctx = RequestContext.getCurrentContext();
        HttpServletRequest request = ctx.getRequest();
        //HttpServletResponse response = ctx.getResponse();
        
        log.info("第二级过滤器！");
        log.info("===============");
        

//      throw new RuntimeException();
        return null;

//        log.info(String.format("%s request to %s", request.getMethod(), request.getRequestURL().toString()));
//        System.out.println(request.getRequestURL());

    }

}
