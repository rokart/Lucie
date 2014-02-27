<div class="content-container unit size3of4 lastUnit">

    <article>
        <h1>$Title</h1>
        <div class="content">$Content</div>

        <div id="page-wrap">


            <div id="typesoftraining">

                <% control Programmes %> 
                <div id="tab-$Pos"> 
                    <div class="tabwrap">
                        <div class="roundedimages">
                            $Photo.CroppedImage(450,300)
                        </div>
                        <div class="TextField">
                            <h1>$TextField</h1><br />
                        </div>
                        <div class="TextareaField"> 
                            $TextareaField<br />
                        </div>

                        <br />
                    </div>
                </div>
                <% end_control %> 

            </div>
            <br /><br />

            <div id="tabs">
                <ul>
                    <% control Programmes %> 
                    <li><a href="#tab-$Pos">
                            <div class="homepagebottomcontainers">
                                <div class="photocontainer">
                                    <div class="animatedtitle">$TextField</div>
                                    $Photo.CroppedImage(220,200)
<!--  <div class="slideup">$TextareaField.LimitCharacters(130)</div>-->
                                    <div class="triangle1"></div>
                                    <div class="triangle2"></div>
                                  
                                </div>  <div class="phototitlebel">$TextField</div> </div>

                        </a></li>                        
                    <% end_control %> 
                </ul>
               
            </div>
        </div>
    </article>
    $Form
</div>
<% include Quote %>
<% include SideBar %>