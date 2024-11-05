<%
    String message = (String) session.getAttribute("msg");
    if (message != null) {
        System.out.println("Debug: Message from session: " + message);
%>
    <div class="text-center">
        <div class="alert alert-danger alert-dismissible fade show d-inline-block transparent-box" role="alert">
            <h3 class="alert-heading m-0"><strong><%= message %></strong></h3>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </div>
<%
        session.removeAttribute("msg");
    }
%>

<style>
    .transparent-box {
        background-color: transparent;
        color: #fff;
        border: none;
        border-radius: 10px; /* Adjust the border-radius for rounded corners */
    }

    .transparent-box h3 {
        font-weight: bold;
    }
</style>
