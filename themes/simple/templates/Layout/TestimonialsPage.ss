<div class="content-container unit size3of4 lastUnit">

    <article>
        <h1>$Title</h1>
        <div class="content">$Content</div>

        <% control Testimonials %> 


        <div class="quote quote3">
            <div class="Quoteleft Quote1">“</div>
            <div class="Quoteright Quote2">”</div>
            <em>
                $Testimonial
            </em>
            <br />
            <span class="Author">
                <strong>
                <br />$Name
                </strong>
            </span> <br />
        </div>

        <% end_control %> 

    </article>
    $Form
</div>
<% include Quote %>
<% include SideBar %>