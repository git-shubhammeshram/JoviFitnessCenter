<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="session/session.jsp" %>
<%@ include file="message/message.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instructor Form</title>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="images/jlogo.png" type="image/x-icon">
    
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding: 20px;
            background: url('images/db.jpg') no-repeat center center fixed;
            background-size: cover;
            color: black;
        }

        .container {
            margin-top: 50px;
        }

        .upload-form {
            background-color: #fff; /* Change to a solid color */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        @media (max-width: 768px) {
            .upload-form {
                padding: 15px;
            }
        }

        .custom-file-input {
            display: block;
            width: 100%;
            padding: 0.375rem 0.75rem;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #ced4da;
            border-radius: 0.25rem;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        .custom-file-input:focus {
            border-color: #86b7fe;
            outline: 0;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.25);
        }

        .small-upload-btn {
            padding: 6px 12px;
            font-size: 14px;
        }
    </style>
</head>

<body>
    <div class="row">
        <div class="col-md-12">
            <div class="mb-3">
                <a href="admin.jsp" class="btn btn-secondary navigation-btn">Back to Previous Page</a>
                <a href="admin.jsp" class="btn btn-primary navigation-btn">Home</a>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="upload-form">
                    <h2 class="mb-4">Instructor Form</h2>
                    <form action="uploadabout" method="post" enctype="multipart/form-data">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="file" name="file" required
                                onchange="updateFileName(this)">
                            <label class="custom-file-label" for="file">Choose file...</label>
                        </div>
                        <div class="form-group">
                            <label for="instructorName">Instructor Name</label>
                            <input type="text" class="form-control" id="instructorName" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="facebookId">Facebook ID</label>
                            <input type="text" class="form-control" id="facebookId" name="facebook" required>
                        </div>
                        <div class="form-group">
                            <label for="instagramId">Instagram ID</label>
                            <input type="text" class="form-control" id="instagramId" name="instagram" required>
                        </div>
                        <div class="form-group">
                            <label for="instructorDetails">Instructor Details</label>
                            <textarea class="form-control" id="instructorDetails" name="about" rows="3"
                                required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block small-upload-btn">Upload</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        function updateFileName(input) {
            var fileName = input.files[0].name;
            var label = input.nextElementSibling;
            label.innerHTML = fileName;
        }
    </script>
    <%@ include file="copyright/copyright.jsp"%>
    
</body>

</html>
