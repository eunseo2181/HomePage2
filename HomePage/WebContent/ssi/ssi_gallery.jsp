<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import = "gallery.GalleryDAO" %>
<%@ page import = "gallery.GalleryDTO" %>
<%@ page import = "java.util.*" %>
<%@ page import="utility.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%request.setCharacterEncoding("utf-8");

String upDir = "/gallery/storage";
String tempDir = "/gallery/temp";
upDir = application.getRealPath(upDir);
tempDir = application.getRealPath(tempDir);
String root = request.getContextPath();
%>
