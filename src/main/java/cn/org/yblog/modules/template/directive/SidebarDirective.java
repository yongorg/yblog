package cn.org.yblog.modules.template.directive;

import cn.org.yblog.modules.service.CommentService;
import cn.org.yblog.modules.service.PostService;
import cn.org.yblog.modules.template.DirectiveHandler;
import cn.org.yblog.modules.template.TemplateDirective;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * method: [latest_posts, hottest_posts, latest_comments]
 * created by langhsu
 * on 2019/3/12
 */
@Component
public class SidebarDirective extends TemplateDirective {
    @Autowired
    private PostService postService;
    @Autowired
    private CommentService commentService;

    @Override
    public String getName() {
        return "sidebar";
    }

    @Override
    public void execute(DirectiveHandler handler) throws Exception {
        int size = handler.getInteger("size", 6);
        String method = handler.getString("method", "post_latests");
        switch (method) {
            case "latest_posts":
                handler.put(RESULTS, postService.findLatestPosts(size));
                break;
            case "hottest_posts":
                handler.put(RESULTS, postService.findHottestPosts(size));
                break;
            case "latest_comments":
                handler.put(RESULTS, commentService.findLatestComments(size));
                break;
        }
        handler.render();
    }
}
