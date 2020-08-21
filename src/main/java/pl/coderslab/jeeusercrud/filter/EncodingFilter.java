package pl.coderslab.jeeusercrud.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "EncodingFilter")
public class EncodingFilter implements Filter {
    private static final String UTF8_ENCODING = "UTF-8";
    private static final String HTML_UTF8_ENCODING = "text/html; charset=UTF-8";

    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        req.setCharacterEncoding(UTF8_ENCODING);
        resp.setContentType(HTML_UTF8_ENCODING);
        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
