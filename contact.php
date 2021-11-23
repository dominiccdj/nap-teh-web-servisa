<main>

        <h1>Contact</h1>

        <div class="mapouter">
            <div class="gmap_canvas"><iframe width="505" height="337" id="gmap_canvas"
                    src="https://maps.google.com/maps?q=Stuttgart&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0"
                    scrolling="no" marginheight="0" marginwidth="0"></iframe><a
                    href="https://fmovies-online.net"></a><br>
                <style>
                    .mapouter {
                        position: relative;
                        text-align: right;
                        height: 337px;
                        width: 505px;
                    }
                </style><a href="https://www.embedgooglemap.net">make your own map google</a>
                <style>
                    .gmap_canvas {
                        overflow: hidden;
                        background: none !important;
                        height: 337px;
                        width: 505px;
                    }
                </style>
            </div>
        </div>

        <form action="contact" method="post" class="contact">
            <table style="width:100%;max-width:550px;border:0;" cellpadding="8" cellspacing="0">
                <tr>
                    <td>
                        <label for="FirstName">First Name*:</label>
                    </td>
                    <td>
                        <input name="FirstName" type="text" required/>
                    </td>
                </tr>
                <tr>
                    <td>
                <tr>
                    <td>
                        <label for="LastName">Last Name*:</label>
                    </td>
                    <td>
                        <input name="LastName" type="text" required/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="PhoneNumber">Phone number:</label>
                    </td>
                    <td>
                        <input name="PhoneNumber" type="text" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="FromEmailAddress">Email address*:</label>
                    </td>
                    <td>
                        <input name="FromEmailAddress" type="email" required/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="Country">Description:</label>
                    </td>
                    <td>
                        <select name="Country" id="Country" form="countryform">
                            <option value="croatia">Croatia</option>
                            <option value="serbia">Serbia</option>
                            <option value="bosnia">Bosnia</option>
                            <option value="slovenia">Slovenia</option>
                            <option value="hungary">Hungary</option>
                          </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="Description">Description:</label>
                    </td>
                    <td>
                        <textarea name="Description" rows="7" cols="40"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input name="Submit" type="submit" value="Submit" />
                    </td>
                </tr>
            </table>
        </form>
    </main>
