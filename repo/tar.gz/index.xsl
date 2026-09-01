<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0"> 

<xsl:output method="html" version="4"/>

<!-- File name: index.xsl, part of NetStrait

GPL 3 License

Copyright 2021, 2028 NuMode

This file is part of NetStrait.

NetStrait is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

NetStrait is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU General Public License for more details.  
 
You should have received a copy of the GNU General Public License
along with NetStrait. If not, see <https://www.gnu.org/licenses/>.
	
-->

	<xsl:template match="CONTENT">

	  <HTML>
	  <HEAD>

      <TITLE>IntranetLo - dtmf7133(dan) - GitHub</TITLE>
	  
      <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no"/>
    
      <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
      <meta name="description" content="Welcome to the last Numode code projects front-end and its search.."/>
      <meta name="keywords" content="dtmf7133,github,frontend,NuMode,code,search"/>
      <meta name="robots" content="index,follow"/>
      <meta name="author" content="NuMode"/> 
     
      <link rel="shortcut icon" href="./favicon.ico"/>
	  	
      <script src="/js/jquery-3.6.0.min.js" type="text/javascript"></script>
      <script src="/js/searchcommon.js" type="text/javascript"></script>
      
      <link href="/css/style1.css" type="text/css" rel="stylesheet"/>
      <link href="/css/style2.css" type="text/css" rel="stylesheet"/>
      <link href="/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    
</HEAD>

<BODY style="background: rgb(233, 238, 248);">

<div id="mynoscriptmsg" style="height:5000px;margin:30px;font-weight:900;">
IntranetLo was developed using javascript technology too. Please enable javascript to get the website running properly.  
</div>
<script>
  document.getElementById("mynoscriptmsg").style.display = "none";
</script>  
<noscript>
  <div style="color:black;">
    Javascript not detected.
  </div>
</noscript>
 
  
   <!--<div id="header" class="header" style="background: rgb(194, 219, 242);margin-left:18px;margin-top:18px;margin-bottom:18px;">-->
   <div id="header" class="header" style="background: rgb(233, 238, 248);margin-left:18px;margin-top:18px;margin-bottom:18px;">
      <a href="http://numode.eu" title="Hello! Going to NuMode Home?">NuMode</a>&#8201;&#8201;&#8201;<a href="https://github.com/dtmf7133/" title="Oh, going to GitHub?">GitHub</a>&#8201;&#8201;&#8201;<a href="mailto:info@numode.eu" style="color:#d2524c;">Mail</a> 
   </div>
   <div id="headerMob" class="header" style="margin-left:18px;margin-top:18px;margin-bottom:18px;display:none">
      <a href="http://numode.eu" title="Hello! Going to NuMode Home?">NuMode</a>&#8201;&#8201;&#8201;<a href="https://github.com/dtmf7133/" title="Oh, going to GitHub?">GitHub</a>&#8201;&#8201;&#8201;<a href="mailto:info@numode.eu" style="color:#d2524c;">Mail</a>
   </div>
       
   <form id="frmUpload" style="width:100%;min-width:380px;max-width:100%;margin:auto;background:rgb(233, 238, 248);min-height:2500px;padding-left:5px;padding-right:25px;" onsubmit="event.preventDefault();$('#butSearch-addon').click();">
   
   <div id="title" style="width:100%"> 

      <div id="avatarLogo" style="float:left;width:300px;margin-top:0px;">
         <a>
          <xsl:attribute name="href">/repo</xsl:attribute>
          <img id="picavatar" src="/res/avatar.png" align="middle" style="clear:;position:relative;display:inline;float:left;padding:30px;"/>
         </a>
      </div>
      <!--
      <div style="clear:both;margin:auto;">
        <br/><br/><br/>
      </div>--> 

      <br/><br/>
      
      <div id="title" style="float:left;width:58%;position:relative;left:10px; top:0px;">
         <a>
          <xsl:attribute name="href">/repo</xsl:attribute>
          <xsl:value-of select="APP/TITLE"/>
         </a>
      </div>

      <br/>

    </div>

    <div style="float:left; width:320px;">

      <table class="main-table" style="clear;float:left; width:350px;max-width:300px;margin-top:100px;margin-left:60px;border:0px solid blue;">
      <tr>
        <td class="search-td" style="width:100%;white-space:nowrap;">       
          
          <xsl:for-each select="FOLDER[TYPE='subfolder']">
		
              <xsl:sort select="ID" data-type="number" order="ascending"/>

              <a>
                 <xsl:attribute name="href"><xsl:value-of select="URI"/></xsl:attribute>
                 <xsl:attribute name="style">color:#d2454c; font-weight:900; font-style:italic;</xsl:attribute>
                 <img src="/res/folder.png"/>&#8201;
                 <xsl:value-of select="NAME"/>
              </a>

              <br/><br/>
              
          </xsl:for-each> 

          <br/>

          <input id="q" li-st="liveres" type="text" class="input-search search-box" style="position:relative;top:+0px;left:-25px;width:65%;min-width:100px;height:60px;border:6px solid #d2454c;border-radius:5px;font-size:29px;font-family:Lato,sans,sans-serif;font-weight:900;padding:6px;padding-left:15px;text-transform:uppercase;color:lightgray;" placeholder="SEARCH" maxlength="30" title="type here..."/>&#8201;&#8201;&#8201;&#8201;
          
          <span id="butSearch-addon" onmouseover="$(this).css('cursor','pointer');" style="cursor:pointer;position:relative;margin-left:15px;left:-40px;width:60px;height:80;top:18px;font-size:60px;color:#d2454c;" class="glyphicon glyphicon-search" title="Search!" onclick="search($('input#q'));">&#8201;<!--<img src="/res/arrow-lb.png" style="width:80px;"/>--></span>
          
          <datalist id="liveres">
          <xsl:for-each select="ITEM[TYPE='file']">
		
              <xsl:sort select="ID" data-type="number" order="ascending"/>

              <option>
                 <xsl:attribute name="value"><xsl:value-of select="PROJECT"/></xsl:attribute>
              </option>
              
          </xsl:for-each>
          </datalist>
          
          <br/>
          
        </td>  
         
      </tr>
      </table>

       </div>

      <table style="float:left; width:50%; margin-left:60px;margin-top:0px;min-width:48%;">
      <tr>         
       <td id="content-td" colspan="2" style="min-height:2200px;vertical-align:top;">
      
        <div id="content-cont">
      
        <table class="content-table">     
        <tr>
          <td class="tips-td" style="font-family:Pangolin;">
          
          <xsl:for-each select="ITEM[TYPE='file']">
		
             <xsl:sort select="PROJECT" order="ascending"/>
		
             <div>
                <xsl:attribute name="id"><xsl:value-of select="ID"/></xsl:attribute>
                <xsl:attribute name="style">padding:0px;display:inline;</xsl:attribute>
<span style="font-style:italic;font-size:11px"><xsl:value-of select="DATE"/></span><br/>
                <span style="font-weight:900;white-space:break-spaces;">
                  <nobr>
                  <a>
                      <xsl:attribute name="href"><xsl:value-of select="PROJECTURL"/></xsl:attribute>
                      <xsl:attribute name="style">color:#d2454c; font-weight:600; font-style:italic;</xsl:attribute>
                      <xsl:value-of select="PROJECT"/>
                  </a>
                  (
                  <a>
                      <xsl:attribute name="href"><xsl:value-of select="DOWNLOADURL1"/></xsl:attribute>
                      <xsl:attribute name="style">font-weight:600; font-style:italic;</xsl:attribute>
                      <xsl:value-of select="DOWNLOAD1"/>
                  </a>
                  <!--
                  ,
                  <a>
                      <xsl:attribute name="href"><xsl:value-of select="DOWNLOADURL2"/></xsl:attribute>
                      <xsl:attribute name="style">font-weight:600; font-style:italic;</xsl:attribute>
                      <xsl:value-of select="DOWNLOAD2"/>
                  </a>
                  -->  
                  )
                  </nobr>
                </span>
                <hr class="hr-tips" style="border:2px solid #d2454c;"/>    
                <lt-content><pre style="width:100%;white-space:break-spaces;font-family:Pangolin;"><xsl:value-of select="DESC"/>
                <br/><span style="color:green;">Tags</span>:&#8201;<span style="color:maroon;"><xsl:value-of select="TAGS"/></span>
                &#8201;&#8201;&#8201;&#8201;&#8201;
                <nobr> 
                <xsl:choose>
                <xsl:when test="SEE1!=''">
                   &#8201;
                   <a>
                      <xsl:attribute name="href"><xsl:value-of select="SEEURL1"/></xsl:attribute>
                      <xsl:attribute name="style">font-weight:600; font-style:italic;</xsl:attribute>
                      <xsl:value-of select="SEE1"/>
                   </a>  
                 </xsl:when> 
                </xsl:choose>
 
                <xsl:choose>
                <xsl:when test="SEE2!=''">
                   &#8201;
                   <a>
                      <xsl:attribute name="href"><xsl:value-of select="SEEURL2"/></xsl:attribute>
                      <xsl:attribute name="style">font-weight:600; font-style:italic;</xsl:attribute>
                      <xsl:value-of select="SEE2"/>
                   </a>
                 </xsl:when>
                </xsl:choose>
                
                <xsl:choose>
                <xsl:when test="SEE3!=''">
                   &#8201;
                   <a>
                      <xsl:attribute name="href"><xsl:value-of select="SEEURL3"/></xsl:attribute>
                      <xsl:attribute name="style">font-weight:600; font-style:italic;</xsl:attribute>
                      <xsl:value-of select="SEE3"/>
                   </a>
                 </xsl:when>
                </xsl:choose>
                </nobr>

                <xsl:choose>
                <xsl:when test="SEE4!=''">
                   &#8201;
                   <a>
                      <xsl:attribute name="href"><xsl:value-of select="SEEURL4"/></xsl:attribute>
                      <xsl:attribute name="style">font-weight:600; font-style:italic;</xsl:attribute>
                      <xsl:value-of select="SEE4"/>
                   </a>
                 </xsl:when>
                </xsl:choose>
					
                <br/><br/>

                </pre>
                </lt-content>

                <br/>
				 
             </div>
	
            </xsl:for-each>

          <div id="noresult" style="display:none;">No result found.<br/><br/><br/><br/></div>
          
          <br/><br/><br/>
          
        </td>
                
        <td width="4%" class="index-empty-td">
          &#8201;
        </td>  
        </tr>
        </table>
        
        </div>
        
        </td>
        </tr>      
      </table> 
   
    <div style="clear:both;margin:auto;">
      <br/><br/><br/><br/>
    </div>

 <div id="friends" style="background:rgb(233, 238, 248); display:none;">    
   <div class="friends-content" style="background:rgb(233, 238, 248);"> 
     
      <div id="mynetworkTitle">Network<br/><br/>
     
                                            <div class="friend-entry">  
                        <a href="http://numode.eu">
                        <div style="width:100%;border:0px solid black;"><img class="friend-ico" src="/res/logot.png" align="center"/></div>
                        <div style="margin-top:10px;color:#d2524c;text-decoration:none;" class="bbb">numode.eu </div>
                        </a>  
                      </div> 
                              
          </div>  
          
      </div>  
   </div> 

    </form>

  <div style="claer:both;margin:auto;">
    <br/><br/><br/><br/>
  </div>

  <div id="footerCont">&#8201;</div>
  <div id="footer" style="width:100%;text-align:right;">
    <span style="background:#FFFFFF; opacity:0.7;">&#8201;&#8201;get <a href="http://github.com/dtmf7133/IntranetLo" style="color:#d2524c;font-weight:900;">IntranetLo</a>. A <a href="https://numode.eu" style="color:#d2524c;font-weight:900;">NuMode</a> project.</span>&#8201;&#8201;
  </div>
           
     <script>
        
        var linkt = [];
        var linkids = [];
        
        <xsl:for-each select="ITEM[TYPE='file']">
  
        <xsl:sort select="ID" data-type="number" order="ascending"/>
  
        linkt[<xsl:value-of select="ID"/>] = "<xsl:value-of select='TAGS'/>";
        linkids[<xsl:value-of select="ID"/>] = <xsl:value-of select="ID"/>;
        
        </xsl:for-each>
      
      </script>
      
      <script src="/js/common.js" type="text/javascript"></script>

<script>
<![CDATA[

  $(document.body).css("background","rgb(233, 238, 248)");

  $("#header a").css("color", "#d2524c");
  $("#headerMob a").css("color", "#d2524c");

  //xxx
  //$("#frmUpload").css("box-shadow","0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)");

  tollerance = 0;
  $("#frmUpload").css("height", "0");
  $("#frmUpload").css("height", parseInt(getDocHeight2() - tollerance) + "px");

  window.addEventListener("load", function() {
    if (window.innerWidth < 800) {
      $("#frmUpload").css("margin-left", "");
      $("#q").css("margin-left","15px");
    } else {
	  $("#frmUpload").css("margin-left", "5%");
      $("#q").css("margin-left","");
    }
  }, true);

  window.addEventListener("resize", function() {
    if (window.innerWidth < 800) {
	  $("#frmUpload").css("margin-left", "");
      $("#q").css("margin-left","15px");
    } else {
	  $("#frmUpload").css("margin-left", "5%");
      $("#q").css("margin-left","");
    }
  }, true);

]]>

</script>

       

	  </BODY>
	  </HTML>

	</xsl:template>

</xsl:stylesheet>
