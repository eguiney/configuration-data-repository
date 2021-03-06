<html>
  <head>
    <title>Jasper plugin</title>
    <meta name="layout" content="main" />
  </head>
  <body>
    <h1 style="margin-left:20px;">Jasper Plugin</h1>
    <div class="dialog" style="margin-left:20px;width:60%;">
      Jasper plugin allows you to create reports using
      <a href="http://jasperforge.org/sf/projects/jasperreports">Jasperreports</a>
      from within Grails.

    <h3>Installation</h3>
    Just execute the following from your application directory:
    <pre>grails install-plugin jasper</pre>

    <h3>Using</h3>
    The following code
    <pre>&lt;g:jasperReport jasper="sample-jasper-plugin"
  format="PDF,HTML,XML,CSV,XLS,RTF,TEXT" name="Report name"&gt;
  Your name: &lt;input type="text" name="name" /&gt;
&lt;/g:jasperReport&gt;</pre>
    will generate this:
    <br /><br />
    <g:jasperReport jasper="sample-jasper-plugin"
      format="PDF,HTML,XML,CSV,XLS,RTF,TEXT" name="Report name">
      Your name: <input type="text" name="name" />
    </g:jasperReport>


      <br/><br/>
      Click the bellow link to test your installation.
      <br/><br/>
      <g:jasperReport jasper="sample-jasper-plugin" format="PDF,HTML,XML,CSV,XLS,RTF,TEXT" name="Report name">
        Your name: <input type="text" name="name" />
      </g:jasperReport>
      <br/><br/>
      It is generated by the following code:<br/><br/><br/>
      &lt;g:jasperReport id="sample-jasper-plugin" jasper="sample-jasper-plugin" format="PDF,HTML,XML,CSV,XML,RTF,TEXT" name="Report name"&gt;<br/>
      Your name: &lt;input type="text" name="name"/&gt;<br/>
      &lt;/g:jasperReport&gt;<br/>
    </div><br/>
    <div class="dialog" style="margin-left:20px;width:60%;">
      <h2>Tags description</h2><br/>
      <h3>g:jasperReport</h3><br/><br/>
      <div>
        jasperReport tag creates a link to the jasper report defined by the developer.
        It must be in "%PROJECT_HOME%/web-app${pluginContextPath}/reports/" folder. That path is configurable and can be defined in
        <i>Config.groovy</i> file in the variable <i>jasper.dir.reports</i>. In this version it variable is always 
        relative to "%PROJECT_HOME%/web-app${pluginContextPath}" path.
        <br/><br/>
        The following attributes can be defined in that tag:
        <br/><br/>
        <ul><b>name</b> The name showed to the user.</ul>
        <ul><b>jasper</b> It is the name of the report file, without the .jasper or .jrxml extension.</ul>
        <ul><b>format</b> A list of output formats to the report, separated by commas. This version supports PDF, HTML, XML, CSV, XML, RTF and TEXT formats. The button for each format is created by the tag.</ul>
        <br/><br/>
        The body of the tag: All html input elemens defined in the body of the tag is sent like report parameters.</ul>
      </div>
    </div>
  </body>
</html>
