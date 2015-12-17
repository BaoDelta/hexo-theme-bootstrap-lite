var htmlparser = require("htmlparser2");
function transform(nodes) {
  nodes.forEach(function(node) {
    if (node.type === "tag") {
      if (node.name === "img") {
        node.attribs.class = "img-fluid m-x-auto";
      }
      if (node.attribs.class && node.attribs.class.indexOf("video-container") !== -1) {
        node.attribs.class = "embed-responsive embed-responsive-16by9";
      }
      if (node.name === "blockquote") {
        var isRight = node.attribs.class && node.attribs.class.indexOf("right") !== -1;
        node.attribs.class = "blockquote" + (isRight ? " blockquote-reverse" : "");
        if (node.children) {
          node.children.forEach(function(childNode) {
            if (childNode.type === "tag" && childNode.name === "footer") {
              childNode.attribs.class = "blockquote-footer";
            }
          });
        }
      }
      if (node.name === "acronym") {
        node.name = "abbr";
        node.attribs.class = "initialism";
      }
      if (node.name === "table") {
        node.attribs.class = "table";
      }
      if (node.name === "thead") {
        node.attribs.class = "thead-inverse";
      }
      if (node.name === "dl") {
        node.attribs.class = "dl-horizontal m-x-0";
      }
      if (node.name === "dt") {
        node.attribs.class = "col-sm-4";
      }
      if (node.name === "dd") {
        node.attribs.class = "col-sm-8";
      }
    }
    if (node.children) {
      transform(node.children);
    }
  });
}
var html;
var handler = new htmlparser.DomHandler(function(error, dom) {
  if (error) {
    throw new Error(error);
  }
  transform(dom);
  html = htmlparser.DomUtils.getOuterHTML(dom);
});
var parser = new htmlparser.Parser(handler);
hexo.extend.filter.register("after_post_render", function(data) {
  html = data.content;
  parser.parseComplete(html);
  data.content = html;
  return data;
});
