<div class="wrap">
    <div class="unit size1of5">
        <article>
            <div class="content">
                <div class="red "></div>
                <div class="lightgrey "></div>
                <div class="mediumgrey "></div>
                <div class="darkgrey "></div>
                <div class="redtitle">$Title</div>
                $Content
            </div> 

        </article>
    </div> 
    <div class="centercolumn">
        <div class="Luciewrap">
            <div id="Stage" class="Lucie"></div>
        </div>
    </div>

    <div class="rightcolumn">

        <div class="quote">
            <div class="Quoteleft">“</div>
            <div class="Quoterighthome">”</div>
            <% control Testimonial(1) %>   
            $Testimonial.LimitCharacters(300)<br />
            <a href="/testimonials" class="read_more">Read more...</a></br></br></br>
            <span class="Author">$Name</span>
            <% end_control %>
        </div>
        <!--    <% control Page(About) %> 
            <div class="blacktitle">$Title</div><div class="blacktitlenext"></div>
            $trimedcontent
            </br>
            <a href="$Link" class="read_more">Read more...</a></br>
        
            <% end_control %> -->

    </div>
    <div class="red2">
        <div class="right-arrow"></div>
        <span class="letmehelp">“Make Fitness Part of Your Everyday</br>Life”</span> 
    </div>
</div> 





<div class="homebottom unit size1of1 ">

    <% control getgoalobject %> 
    <div class="homepagebottomcontainers">
        <a href="programmes/#tab-$pos">
            <div class="photocontainer">
                <div class="animatedtitle">$TextField</div>
                $Photo.CroppedImage(300,250)
                <div class="slideup">$Sdesc.LimitCharacters(130)</div>
                <div class="triangle1"></div>
                <div class="triangle2"></div>
            </div>
        </a>
        <div class="phototitlebel">$TextField</div>
    </div>
    <% end_control %> 


</div> 









<script type="text/javascript" charset="utf-8" src="{$ThemeDir}/templates/luciepersonaltraining_edgePreload.js"></script>  